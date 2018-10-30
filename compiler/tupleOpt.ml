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

let flatten (Prog (fundefs, e)) =
  let rec inner_ (e : t) (tenv : (Id.t list) M.t) (env : Type.t M.t) =
    match e with
    | IfEq (x, y, e1, e2) -> IfEq (x, y, inner_ e1 tenv env, inner_ e2 tenv env)
    | IfLE (x, y, e1, e2) -> IfLE (x, y, inner_ e1 tenv env, inner_ e2 tenv env)
    | Let ((x, t), Tuple ys, e2) ->
      let newys = List.concat
          (List.map (fun y ->
               match M.find_opt y tenv with
               | Some y' -> y'
               | None -> [y]) ys) in
      let newtenv = M.add x newys tenv in
      let newenv = M.add x t env in
      Let ((x, t), Tuple newys, inner_ e2 newtenv newenv)
    | Let ((x, t), e1, e2) ->
      Let ((x, t), inner_ e1 tenv env, inner_ e2 tenv (M.add x t env))
    | MakeCls ((x, t), c, e) ->
      MakeCls ((x, t), c, inner_ e tenv (M.add x t env))
    | LetTuple (xts, y, e) ->
      (* yは平坦化されたタプルなので、これを1要素ずつにほどくためのLetTupleを一度挿入する。
       * その後、元々のLetTupleをletのチェーンにする。*)
      let ts = List.map snd xts in
      let ts' = flatten_type ts in
      let tmpvars = List.map (fun t -> (Id.gentmp t, t)) ts' in
      let (e, newtenv, newenv) = helper xts tmpvars e tenv env in
      LetTuple (tmpvars, y, inner_ e newtenv newenv)
    | _ -> e
  in
  let newfundefs =
    List.map
      (fun { name = xt; args = yts; formal_fv = fvs; body = e } ->
         { name = xt; args = yts; formal_fv = fvs; body = inner_ e M.empty M.empty }) fundefs in
  let newe = inner_ e M.empty M.empty in
  Prog (newfundefs, newe)

let f p = flatten p
