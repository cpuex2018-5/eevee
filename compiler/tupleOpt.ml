open Closure

(* lを先頭からn番目以内にあるものとそれ以降のものとに分ける
 * ex) sep 2 [1;2;3;4;5] -> ([1;2], [3;4;5])
 *     sep 4 [1;2;3] -> ([1;2;3], []) *)
let rec sep (n : int) (l : 'a list) =
  match n with
  | 0 -> ([], l)
  | _ -> match l with
    | [] -> ([], [])
    | x :: xl -> let t = sep (n - 1) xl in (x :: (fst t), snd t)

(* Type.Tupleを含む場合は取り除いてフラットにする *)
(* ex) [Float; Tuple [Int; Int]] -> [Float; Int; Int] *)
let rec flatten_type (t : Type.t list) =
  match t with
  | [] -> []
  | (Tuple t') :: xt -> flatten_type (t' @ xt) (* tupleのネストに対応 *)
  | t' :: xt -> t' :: (flatten_type xt)

(* タプル平坦化の補助関数, LetTuple (xts, _, tail) を複数のletに分割 *)
let rec helper (xts : (Id.t * Type.t) list) (tmpvars : (Id.t * Type.t) list) (tail : t) (tenv : (Id.t list) M.t) (env : Type.t M.t) =
  (* tmpvars: 平坦化されたタプルの中身を1つずつ指す変数 *)
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

(* タプル平坦化 *)
let flatten (e : t) (funnames : Id.l list) =
  let rec flatten_ (e : t) (tenv : (Id.t list) M.t) (env : Type.t M.t) =
    (* tenv: tupleだとわかっている変数(key)と、その内容(binding)のリスト *)
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
      (* 関数は単相なので、タプルは全部ほどいてよい *)
      AppDir (l, List.concat (List.map (fun y -> try M.find y tenv with Not_found -> [y]) ys))
    | AppDir _ -> e (* タプルを外部関数に渡す場合は平坦化しない *)
    | LetTuple (xts, y, e) ->
      (* yは平坦化されたタプルなので、これを1要素ずつにほどくためのLetTupleを一度挿入する。
       * その後、元々のLetTupleをlet .... in let ... in の形に変形する。*)
      let ts = List.map snd xts in
      let ts' = flatten_type ts in
      let tmpvars = List.map (fun t -> (Id.gentmp t, t)) ts' in
      let (e, newtenv, newenv) = helper xts tmpvars e tenv env in
      LetTuple (tmpvars, y, flatten_ e newtenv newenv)
    | _ -> e
  in flatten_ e M.empty M.empty

(* 関数の引数に含まれるタプルを全てほどく *)
let flatten_args (f : fundef) =
  let { name = (x, t); args = yts; formal_fv = zs; body = e } = f in
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
  (* 関数の型が変わることになるので変えておく *)
  let t' = match t with Type.Fun (xs, y) -> Type.Fun (List.map snd yts', y) | _ -> assert false in
  { name = (x, t'); args = yts'; formal_fv = zs; body = e' }

(* 副作用があるかどうか(emit.mlを参考) *)
let rec effect e =
  match e with
  | Let(_, e1, e2) | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) -> effect e1 || effect e2
  | MakeCls (_, _, e) | LetTuple(_, _, e) -> effect e
  | AppCls _ | AppDir _ | Put _ -> true
  | _ -> false

(* 不要部分式削除(emit.mlを参考) & 不要なタプルを削除 *)
let elim e =
  let rec elim_ e tenv =
    match e with
    | IfEq(x, y, e1, e2) -> IfEq(x, y, elim_ e1 tenv, elim_ e2 tenv)
    | IfLE(x, y, e1, e2) -> IfLE(x, y, elim_ e1 tenv, elim_ e2 tenv)
    | Let ((x, t), Var y, e2) -> (* 変数をrenameしているだけなので不要 *)
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
      (* let a = (x, y) in ... let (b, c) = a in ... などの場合、LetTupleをLetに変換する。
       * これにより不要定義(LET x = Var yなど)が生じる可能性があるためelimを2回呼ぶ必要がある *)
      List.fold_left2
        (fun e' xt z -> Let (xt, Var(z), e'))
        (elim_ e tenv)
        xts
        (M.find y tenv)
    | LetTuple (xts, y, e) -> (* yが配列からGetしたタプルである場合はtenvにないため必要 *)
      let xs = List.map fst xts in
      let e' = elim_ e tenv in
      (match List.exists (fun x -> S.mem x (fv e')) xs with
       | true -> LetTuple(xts, y, e')
       | false -> (Format.eprintf "eliminating variables %s@." (Id.pp_list xs); e'))
    | _ -> e
  in elim_ (elim_ e M.empty) M.empty

let f (Prog (fundefs, e)) =
  let fundefs = List.map flatten_args fundefs in
  let funnames = List.map (fun f -> fst f.name) fundefs in
  let fundefs' = List.map
      (fun { name = xt; args = yts; formal_fv = zts; body = e } ->
         { name = xt; args = yts; formal_fv = zts; body = flatten e funnames }) fundefs in
  let e' = flatten e funnames in
  print_endline "------------After Nested Tuple Flattening-----------";
  print_prog (Prog (fundefs', e'));
  let fundefs'' = List.map
      (fun { name = xt; args = yts; formal_fv = zts; body = e } ->
         { name = xt; args = yts; formal_fv = zts; body = elim (flatten e funnames) }) fundefs' in
  let e'' = elim e' in
  print_endline "------------After Tuple Elimination-----------";
  let p = Prog (fundefs'', e'') in
  print_prog p;
  p
