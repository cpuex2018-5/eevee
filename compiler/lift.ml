exception FoundNested of (KNormal.fundef * KNormal.t)

(* collect free variables in e *)
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
  | App (f, x) -> S.of_list x
  | Tuple xl -> S.of_list xl
  | LetTuple (xl, y, _) -> S.singleton y
  | Get (a, i) -> S.of_list [a; i]
  | Put (a, i, x) -> S.of_list [a; i; x]
  | ExtFunApp (f, x) -> S.of_list (f :: x)
  | _ -> S.empty

(* bind free variables in functions *)
let rec expandArg (e : KNormal.t) (fs : (Id.t * (Id.t * Type.t) list) list) (env : Type.t M.t) : KNormal.t =
  match e with
  | IfEq (x, y, e1, e2) -> IfEq (x, y, expandArg e1 fs env, expandArg e2 fs env)
  | IfLE (x, y, e1, e2) -> IfLE (x, y, expandArg e1 fs env, expandArg e2 fs env)
  | Let ((x, t), e1, e2) ->
    let newenv = M.add x t env in
    Let ((x, t), (expandArg e1 fs env), (expandArg e2 fs newenv))
  | LetRec ({name = (x, t); args = yts; body = e1}, e2) ->
    let newenv_def = List.fold_left (fun e (y, t) -> M.add y t e) env yts in
    let e1 = expandArg e1 fs (M.add x t newenv_def) in
    let var_args = List.map fst yts in
    let fvs = S.diff (fvs e1) (S.of_list (x :: var_args)) in
    (match S.is_empty fvs with
     | true ->
       LetRec ({name = (x, t); args = yts; body = e1}, expandArg e2 fs (M.add x t env))
     | false ->
       let newargs = List.map (fun x -> (x, M.find x env)) (S.elements fvs) in
       print_string ("[Lift] found free vars in " ^ x ^ ": ");
       Id.print_tlist (List.map fst newargs);
       let newe2 = expandArg e2 ((x, newargs) :: fs) (M.add x t env) in
       KNormal.LetRec ({ name = (x, t); args = yts @ newargs; body = e1}, newe2))
  | LetTuple (l, e1, e2) ->
    let newenv = List.fold_left (fun m (x, t) -> M.add x t m) env l in
    LetTuple (l, e1, expandArg e2 fs newenv)
  | App (e1, e2) ->
    (try
       let added_args = List.map fst (List.assoc e1 fs) in
       App (e1, e2 @ added_args)
     with Not_found -> e)
  | _ -> e

(* remove function definition f from e *)
let rec remove (e : KNormal.t) (f : KNormal.fundef) : KNormal.t =
  match e with
  | IfEq (x, y, e1, e2) -> IfEq (x, y, remove e1 f, remove e2 f)
  | IfLE (x, y, e1, e2) -> IfLE (x, y, remove e1 f, remove e2 f)
  | Let (xt, e1, e2) -> Let (xt, remove e1 f, remove e2 f)
  | LetRec (f', e2) -> if f = f' then remove e2 f else LetRec (f', remove e2 f)
  | LetTuple (xl, y, e) -> LetTuple (xl, y, remove e f)
  | _ -> e

(* resolve nested function definition *)
let rec lift (e : KNormal.t) (in_nest : bool) (env : (Id.t * Id.t) list) : KNormal.t =
  match e with
  | IfEq (x, y, e1, e2) ->
    IfEq (x, y, lift e1 in_nest env, lift e2 in_nest env)
  | IfLE (x, y, e1, e2) ->
    IfLE (x, y, lift e1 in_nest env, lift e2 in_nest env)
  | Let ((x, t), e1, e2) ->
    Let ((x, t), lift e1 in_nest env, lift e2 in_nest env)
  | LetRec ({ name = (x, t); args = yts; body = e1 }, e2) ->
    (match in_nest with
     | false ->
       let newe2 = lift e2 false env in
       (try
          LetRec ({ name = (x, t); args = yts; body = lift e1 true env }, newe2)
        with FoundNested (f, e2') ->
          let { name = (x', t'); args = yts'; body = e1' } : KNormal.fundef = f in
          let newx = x ^ "_" ^ x' in
          let newenv = (x', newx) :: env in
          let ret = KNormal.LetRec (
              { name = (newx, t'); args = yts'; body = e1' },
              LetRec ({ name = (x, t); args = yts; body = remove e1 f }, e2)) in
          lift ret false newenv)
     | true -> raise (FoundNested ({ name = (x, t); args = yts; body = e1 }, e2)))
  | LetTuple (xts, y, e) -> LetTuple (xts, y, lift e in_nest env)
  | App (e1, e2) ->
    (match List.assoc_opt e1 env with
     | Some e1' -> App (e1', e2)
     | None -> e)
  | _ -> e

let f (e : KNormal.t) : KNormal.t = lift (expandArg e [] M.empty) false []
