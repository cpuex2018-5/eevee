let rec fvs (e : KNormal.t) : S.t =
  match e with
  | Neg x -> S.singleton x
  | Add (x, y)  -> S.of_list [x; y]
  | Sub (x, y)  -> S.of_list [x; y]
  | FNeg x      -> S.singleton x
  | FAdd (x, y) -> S.of_list [x; y]
  | FSub (x, y) -> S.of_list [x; y]
  | FMul (x, y) -> S.of_list [x; y]
  | FDiv (x, y) -> S.of_list [x; y]
  | IfEq (x, y, e1, e2)  -> S.add x (S.add y (S.union (fvs e1) (fvs e2)))
  | IfLE (x, y, e1, e2)  -> S.add x (S.add y (S.union (fvs e1) (fvs e2)))
  | Let ((x, _), e1, e2) -> S.remove x (S.union (fvs e1) (fvs e2))
  | Var v -> S.singleton v
  | LetRec ({ name = (f, _); args = xl; body = e1 }, e2) ->
    let var_args = List.map fst xl in
    let fv_e1 = S.diff (fvs e1) (S.of_list var_args) in
    S.remove f (S.union fv_e1 (fvs e2))
  | App (f, x) -> S.of_list (f :: x)
  | Tuple xl -> S.of_list xl
  | LetTuple (xl, y, _) -> S.singleton y
  | Get (a, i) -> S.of_list [a; i]
  | Put (a, i, x) -> S.of_list [a; i; x]
  | ExtFunApp (f, x) -> S.of_list (f :: x)
  | _ -> S.empty

let rec expandArg (e : KNormal.t) (fs : (Id.t * (Id.t * Type.t) list) list) (env : Type.t M.t) : KNormal.t =
  match e with
  | Let ((x, t), e1, e2) ->
    let newenv = M.add x t env in
    Let ((x, t), (expandArg e1 fs env), (expandArg e2 fs newenv))
  | LetRec ({ name = (x, t); args = yts; body = e1 }, e2) ->
    let newenv_def = List.fold_left (fun e (y, t) -> M.add y t e) env yts in
    let e1 = expandArg e1 fs (M.add x t newenv_def) in
    let var_args = List.map fst yts in
    let fvs = S.diff (fvs e1) (S.of_list (x :: var_args)) in
    (match S.is_empty fvs with
     | true -> LetRec ({ name = (x, t); args = yts; body = e1}, e2)
     | false ->
       let newargs = List.map (fun x -> (x, M.find x env)) (S.elements fvs) in
       print_string "Found FVs: ";
       Id.print_tlist (List.map fst newargs);
       let newe2 = expandArg e2 ((x, newargs) :: fs) (M.add x t env) in
       KNormal.LetRec ({ name = (x, t); args = yts @ newargs; body = e1}, newe2))
  | LetTuple (l, e1, e2) ->
    let newenv = List.fold_left (fun m (x, t) -> M.add x t m) env l in
    LetTuple (l, e1, expandArg e2 fs newenv)
  | App (e1, e2) ->
    let added_args = List.map fst (List.assoc e1 fs) in
    App (e1, e2 @ added_args)
  | _ -> e

let rec lift (e : KNormal.t) : KNormal.t =
  e

let rec f (e : KNormal.t) : KNormal.t = expandArg e [] M.empty
