open Closure

(* lを先頭からn番目以内にあるものとそれ以降のものとに分ける *)
let rec sep (n : int) (l : 'a list) =
  match n with
  | 0 -> ([], l)
  | _ -> match l with
    | [] -> ([], [])
    | x :: xl -> let t = sep (n - 1) xl in (x :: (fst t), snd t)

let rec flatten_type (t : Type.t list) =
  match t with
  | [] -> []
  | (Tuple t') :: xt -> flatten_type (t' @ xt)
  | t' :: xt -> t' :: (flatten_type xt)

(* tmpvars: 平坦化されたタプルの中身 *)
(* LetTuple (xts, _, tail) を複数のletに分割 *)
let rec helper (xts : (Id.t * Type.t) list) (tmpvars : (Id.t * Type.t) list) (tail : t) (tenv : (Id.t list) M.t) (env : Type.t M.t) =
  let tenv' = ref tenv in
  let env' = ref env in
  let rec inner_ xts tmpvars tail =
    match xts with
    | [] -> tail
    | (x, t) :: xtl -> (match t with
        | Type.Tuple ts ->
          (* tmpvarsから(flatten_type ts)の長さだけとる *)
          let (x', tmpvars') = sep (List.length (flatten_type ts)) tmpvars in
          tenv' := M.add x (List.map fst x') !tenv';
          env' := M.add x t !env';
          Let ((x, t), Tuple (List.map fst x'), inner_ xtl tmpvars' tail)
        | _ -> (match tmpvars with
            | [] -> failwith "Unable to unfold tuple"
            | (x', _) :: tmpvars' -> 
              env' := M.add x t !env';
              Let ((x, t), Var x', inner_ xtl tmpvars' tail)))
  in (inner_ xts tmpvars tail, !tenv', !env')

let flatten (e : t) (funnames : Id.l list) =
  let rec flatten_ (e : t) (tenv : (Id.t list) M.t) (env : Type.t M.t) =
    match e with
    | IfEq (x, y, e1, e2) -> IfEq (x, y, flatten_ e1 tenv env, flatten_ e2 tenv env)
    | IfLE (x, y, e1, e2) -> IfLE (x, y, flatten_ e1 tenv env, flatten_ e2 tenv env)
    | Let ((x, t), Tuple ys, e2) ->
      let newys = List.concat
          (List.map (fun y ->
               match M.find_opt y tenv with
               | Some y' -> y'
               | None -> [y]) ys) in
      let newtenv = M.add x newys tenv in
      let newenv = M.add x t env in
      Let ((x, t), Tuple newys, flatten_ e2 newtenv newenv)
    | Let ((x, t), e1, e2) ->
      Let ((x, t), flatten_ e1 tenv env, flatten_ e2 tenv (M.add x t env))
    | MakeCls ((x, t), c, e) ->
      MakeCls ((x, t), c, flatten_ e tenv (M.add x t env))
    | AppCls (x, ys) ->
      AppCls (x, List.concat (List.map (fun y -> try M.find y tenv with Not_found -> [y]) ys))
    | AppDir (l, ys) when List.mem l funnames ->
      AppDir (l, List.concat (List.map (fun y -> try M.find y tenv with Not_found -> [y]) ys))
    | AppDir _ -> e (* don't flatten the args of external function *)
    | LetTuple (xts, y, e) ->
      (* yは平坦化されたタプルなので、これを1要素ずつにほどくためのLetTupleを一度挿入する。
       * その後、元々のLetTupleをletのチェーンにする。*)
      let ts = List.map snd xts in
      let ts' = flatten_type ts in
      let tmpvars = List.map (fun t -> (Id.gentmp t, t)) ts' in
      let (e, newtenv, newenv) = helper xts tmpvars e tenv env in
      LetTuple (tmpvars, y, flatten_ e newtenv newenv)
    | _ -> e
  in flatten_ e M.empty M.empty

let flatten_args (f : fundef) =
  let { name = xt; args = yts; formal_fv = zs; body = e } = f in
  let rec inner_ (args : (Id.t * Type.t) list) e =
    match args with
    | [] -> ([], e)
    | (y, Type.Tuple ts) :: xargs ->
      let ts' = flatten_type ts in
      let yl = List.map Id.gentmp ts' in
      let (xargs', e') = inner_ xargs e in
      ((List.combine yl ts') @ xargs', Let ((y, Type.Tuple ts'), Tuple yl, e'))
    | (y, t) :: xargs ->
      let (xargs', e') = inner_ xargs e in
      ((y, t) :: xargs', e')
  in
  let (yts', e') = inner_ yts e in
  { name = xt; args = yts'; formal_fv = zs; body = e' }

let rec effect e =
  match e with
  | Let(_, e1, e2) | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) -> effect e1 || effect e2
  | MakeCls (_, _, e) | LetTuple(_, _, e) -> effect e
  | AppCls _ | AppDir _ | Put _ -> true
  | _ -> false

(* 使われない変数を削除 *)
let elim e =
  let rec elim_ e tenv =
    match e with
    | IfEq(x, y, e1, e2) -> IfEq(x, y, elim_ e1 tenv, elim_ e2 tenv)
    | IfLE(x, y, e1, e2) -> IfLE(x, y, elim_ e1 tenv, elim_ e2 tenv)
    | Let ((x, t), Var y, e2) ->
      elim_ (Closure.id_subst e2 x y) tenv
    | Let ((x, t), Tuple ys, e2) ->
      let e2' = elim_ e2 (M.add x ys tenv) in
      (match S.mem x (fv e2') with
       | true -> Let ((x, t), Tuple ys, e2')
       | false -> e2')
    | Let ((x, t), e1, e2) ->
      let e1' = elim_ e1 tenv in
      let e2' = elim_ e2 tenv in
      (match effect e1' || S.mem x (fv e2') with
       | true -> Let((x, t), e1', e2')
       | false -> (Format.eprintf "eliminating variable %s@." x; e2'))
    | MakeCls (xt, c, e) -> MakeCls (xt, c, elim_ e tenv)
    | LetTuple (xts, y, e) when M.mem y tenv ->
      List.fold_left2
        (fun e' xt z -> Let (xt, Var(z), e'))
        (elim_ e tenv)
        xts
        (M.find y tenv)
    | LetTuple (xts, y, e) ->
      let xs = List.map fst xts in
      let e' = elim_ e tenv in
      let live = fv e' in
      if List.exists (fun x -> S.mem x live) xs then LetTuple(xts, y, e') else
        (Format.eprintf "eliminating variables %s@." (Id.pp_list xs);
         e')
    | _ -> e
  in elim_ e M.empty

let f (Prog (fundefs, e)) =
  let fundefs' = List.map flatten_args fundefs in
  let funnames = List.map (fun f -> fst f.name) fundefs' in
  let fundefs' = List.map
      (fun { name = xt; args = yts; formal_fv = zts; body = e } ->
         { name = xt; args = yts; formal_fv = zts; body = elim (elim (flatten e funnames)) }) fundefs' in
  let e' = elim (elim (flatten e funnames)) in
  Prog (fundefs', e')
