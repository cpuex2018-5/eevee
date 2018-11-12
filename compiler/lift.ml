exception GiveUpEtaConv
exception FoundNested of (KNormal.fundef * KNormal.t)

(* Eta conversion for eliminating the number of closures made *)

let rec add_args (e : KNormal.t) (args : Id.t list) : KNormal.t =
  match e with
  | IfEq (x, y, e1, e2) -> IfEq (x, y, add_args e1 args, add_args e2 args)
  | IfLE (x, y, e1, e2) -> IfLE (x, y, add_args e1 args, add_args e2 args)
  | Let (xt, e1, e2) -> Let (xt, e1, add_args e2 args)
  | Var v -> App (v, args)
  | LetRec (f, e) -> LetRec (f, add_args e args)
  | App (f, x) -> App (f, x @ args)
  | LetTuple (xl, y, e) -> LetTuple (xl, y, add_args e args)
  | Get (a, i) -> raise GiveUpEtaConv
  | ExtFunApp (f, x) -> ExtFunApp (f, x @ args)
  | _ -> e

(* eliminate function variables *)
let rec eta (e : KNormal.t) : KNormal.t =
  match e with
  | IfEq (x, y, e1, e2) -> IfEq (x, y, eta e1, eta e2)
  | IfLE (x, y, e1, e2) -> IfLE (x, y, eta e1, eta e2)
  | Let ((x, t), e1, e2) ->
    (match t with
     | Fun (tl, te) ->
       (* 関数の型情報を利用して、必要な数の引数を生成 *)
       let extraArgs = List.map (fun t -> (Id.gentmp t, t)) tl in
       (try
          LetRec ({ name = (x, t); args = extraArgs; body = eta (add_args e1 (List.map fst extraArgs)) },
                  eta e2)
        with
        (* When there are function arrays, give up eta conversion *)
          GiveUpEtaConv -> e)
     | _ -> Let ((x, t), eta e1, eta e2))
  | LetRec ({ name = xt; args = yt; body = e1 }, e2) ->
    LetRec ({ name = xt; args = yt; body = eta e1 }, eta e2)
  | LetTuple (xl, y, e) -> LetTuple (xl, y, eta e)
  | _ -> e

(* --------------------Lambda Lifting-------------------- *)
(* collect free variables in e *)
let rec fvs (e : KNormal.t) : S.t =
  match e with
  | Unit | Int _ | Float _ | ExtArray _ -> S.empty
  | Neg x | FNeg x -> S.singleton x
  | Add (x, y) | Sub (x, y) | Mul (x, y) | Div (x, y) -> S.of_list [x; y]
  | FAdd (x, y) | FSub (x, y) | FMul (x, y) | FDiv (x, y) -> S.of_list [x; y]
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
  | ExtFunApp (f, x) -> S.of_list x

(* bind free variables in functions *)
let rec expandArg (e : KNormal.t) (fs : (Id.t * (Id.t * Type.t) list) list) (env : Type.t M.t) : KNormal.t =
  match e with
  | IfEq (x, y, e1, e2) -> IfEq (x, y, expandArg e1 fs env, expandArg e2 fs env)
  | IfLE (x, y, e1, e2) -> IfLE (x, y, expandArg e1 fs env, expandArg e2 fs env)
  | Let ((x, t), e1, e2) ->
    let newenv = M.add x t env in
    Let ((x, t), (expandArg e1 fs env), (expandArg e2 fs newenv))
  | LetRec ({ name = (x, t); args = yts; body = e1 }, e2) ->
    let newenv_e1 = M.add x t (List.fold_left (fun e (y, t) -> M.add y t e) env yts) in
    let e1 = expandArg e1 fs (M.add x t newenv_e1) in
    let var_args = List.map fst yts in
    let fvs = S.diff (fvs e1) (S.of_list (x :: var_args)) in
    (match S.is_empty fvs with
     | true ->
       LetRec ({ name = (x, t); args = yts; body = e1 }, expandArg e2 fs (M.add x t env))
     | false ->
       let exargs = List.map (fun x -> (x, M.find x env)) (S.elements fvs) in
       Format.eprintf "[Lift] found free vars in %s: " x;
       Id.print_tlist (List.map fst exargs);
       (* 再帰関数の場合は(x, exargs)の情報がe1で必要 *)
       let newe1 = expandArg e1 ((x, exargs) :: fs) (M.add x t env) in
       let newe2 = expandArg e2 ((x, exargs) :: fs) (M.add x t env) in
       let newt = match t with Type.Fun (xs, y) -> Type.Fun (xs @ (List.map snd exargs), y) | _ -> assert false in
       match (List.length (yts @ exargs)) > 20 with
       | false -> KNormal.LetRec ({ name = (x, newt); args = yts @ exargs; body = newe1 }, newe2)
       | true -> KNormal.LetRec ({ name = (x, t); args = yts; body = e1 }, e2))
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
  | Var e ->
    (match List.assoc_opt e env with
     | Some e' -> Var e'
     | None -> Var e)
  | App (e1, e2) ->
    (match List.assoc_opt e1 env with
     | Some e1' -> App (e1', e2)
     | None -> e)
  | _ -> e

let f (e : KNormal.t) : KNormal.t =
  let e = eta e in
  let e = expandArg e [] M.empty in
  lift e false []
