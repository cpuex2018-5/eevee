(* [WEEK2 Q2] Eliminate common subexpression *)
(* 置換可能な右辺式と、それが代入された変数(左辺)のリスト *)
type letenv = (KNormal.t * Id.t) list

let print_letenv (env : letenv) =
  let string_of_letenv (env : letenv) =
    String.concat "" (List.map (fun (e, x) -> x ^ " = " ^ KNormal.string_of_t e) env)
  in print_endline ("env:" ^ string_of_letenv env)

let rec may_have_side_effect (exp : KNormal.t) : bool =
  match exp with
  | IfEq (_, _, et, ef) -> (may_have_side_effect et) || (may_have_side_effect ef)
  | IfLE (_, _, et, ef) -> (may_have_side_effect et) || (may_have_side_effect ef)
  | Let (_, e1, e2) -> (may_have_side_effect e1) || (may_have_side_effect e2)
  | LetRec (_, e) -> may_have_side_effect e
  | App _ -> true
  | LetTuple (_, _, e2) -> (may_have_side_effect e2)
  | Put _ -> true
  | ExtFunApp _ -> true
  | _ -> false

(* substitute a free variable 'a' in 'e' with 'b' *)
let rec fv_subst (e : KNormal.t) (a : Id.t) (b : Id.t) : KNormal.t =
  let subst_ x = if x = a then b else x in
  match e with
  | Neg e   -> Neg (subst_ e)
  | Add (e1, e2)  -> Add  (subst_ e1, subst_ e2)
  | Sub (e1, e2)  -> Sub  (subst_ e1, subst_ e2)
  | FNeg e        -> FNeg (subst_ e)
  | FAdd (e1, e2) -> FAdd (subst_ e1, subst_ e2)
  | FSub (e1, e2) -> FSub (subst_ e1, subst_ e2)
  | FMul (e1, e2) -> FMul (subst_ e1, subst_ e2)
  | FDiv (e1, e2) -> FDiv (subst_ e1, subst_ e2)
  | IfEq (e1, e2, et, ef) -> IfEq (subst_ e1, subst_ e2, fv_subst et a b, fv_subst ef a b)
  | IfLE (e1, e2, et, ef) -> IfLE (subst_ e1, subst_ e2, fv_subst et a b, fv_subst ef a b)
  | Let ((x, t), e1, e2) ->
    (* Note: after alpha-conversion, variable names won't collapse and x <> a is guaranteed *)
    Let ((x, t), fv_subst e1 a b, fv_subst e2 a b)
  | Var x -> Var (subst_ x)
  | LetRec (f, e) -> LetRec (fv_subst_fun f a b, fv_subst e a b)
  | App (e1, e2) -> App (subst_ e1, List.map subst_ e2)
  | Tuple e -> Tuple (List.map subst_ e)
  | LetTuple (l, e1, e2) -> LetTuple (List.map (fun (x, t) -> (subst_ x, t)) l, subst_ e1, fv_subst e2 a b)
  | Get (e1, e2) -> Get (subst_ e1, subst_ e2)
  | Put (e1, e2, e3) -> Put (subst_ e1, subst_ e2, subst_ e3)
  | ExtArray e -> ExtArray (subst_ e)
  | ExtFunApp (e, el) -> ExtFunApp (subst_ e, List.map subst_ el)
  | _ -> e
and fv_subst_fun (f : KNormal.fundef) (a : Id.t) (b : Id.t) : KNormal.fundef =
  let subst_ x = if x = a then b else x in
  { name = ((subst_ (fst f.name)), snd f.name); args = (List.map (fun (x, t) -> (subst_ x, t)) f.args); body = fv_subst f.body a b }

(* Equality of KNotmal.t *)
let rec eq_t (e1 : KNormal.t) (e2 : KNormal.t) : bool =
  match (e1, e2) with
  | IfEq(e11, e12, e1t, e1f), IfEq(e21, e22, e2t, e2f) -> e11 = e21 && e12 = e22 && (eq_t e1t e2t) && (eq_t e1f e2f)
  | IfLE(e11, e12, e1t, e1f), IfLE(e21, e22, e2t, e2f) -> e11 = e21 && e12 = e22 && (eq_t e1t e2t) && (eq_t e1f e2f)
  | Let((x1, t1), e11, e12), Let((x2, t2), e21, e22)   -> eq_t e11 e21 && eq_t e12 (fv_subst e22 x2 x1)
  | LetRec(f1, e1'), LetRec(f2, e2')                   -> f1 = f2 && (eq_t e1' e2')
  | LetTuple(l1, e11, e12), LetTuple(l2, e21, e22)     -> l1 = l2 && e11 = e21 && eq_t e12 e22
  | _ -> e1 = e2

(* essential part of the common subexpression elimination *)
let rec g (env : letenv) (exp : KNormal.t) : KNormal.t =
  match exp with
  | IfEq(e1, e2, et, ef) ->
    IfEq(e1, e2, (g env et), (g env ef))
  | IfLE(e1, e2, et, ef) ->
    IfLE(e1, e2, (g env et), (g env ef))
  | Let((x, t), e1, e2) ->
    let e1 = g env e1 in
    (match List.find_opt (fun (e, _) -> eq_t e e1) env with
     | Some (e, y) ->
       (* before applying the elimination, make sure that the formula doesn't have any side effects *)
       (match may_have_side_effect e1 with
        | true  -> Let((x, t), e1, g env e2)
        | false -> Let((x, t), Var y, g env e2))
     | None ->
       (* 'e1' is unknown -> register it to the 'env' *)
       Let((x, t), e1, g ((e1, x) :: env) e2))
  | LetRec(f', e) -> LetRec(f', (g env e))
  | LetTuple(l, e1, e2) -> LetTuple(l, e1, (g env e2))
  | _ -> exp

let f exp = g [] exp

