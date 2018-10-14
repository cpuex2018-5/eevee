(* give names to intermediate values (K-normalization) *)

type t = (* formula after K-normalization (caml2html: knormal_t) *)
  | Unit
  | Int of int
  | Float of float
  | Neg of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | IfEq of Id.t * Id.t * t * t (* compare + branch (caml2html: knormal_branch) *)
  | IfLE of Id.t * Id.t * t * t (* compare + branch *)
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of Id.t * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ExtArray of Id.t
  | ExtFunApp of Id.t * Id.t list
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

(* [WEEK1 Q1] output pretty string for KNormal.t *)
let string_of_t (exp : t) =
  let rec str_of_t ?(endline = "\n") (exp : t) (depth : int) : string =
    let indent = (String.make (depth * 2) ' ') in
    match exp with
    | Unit -> indent ^ "()" ^ endline
    | Int n   -> indent ^ "INT " ^ (string_of_int n) ^ endline
    | Float f -> indent ^ "FLOAT " ^ (string_of_float f) ^ endline
    | Neg e   -> indent ^ "NEG " ^ e ^ endline
    | Add (e1, e2)  -> indent ^ "ADD " ^ e1 ^ " " ^ e2 ^ endline
    | Sub (e1, e2)  -> indent ^ "SUB " ^ e1 ^ " " ^ e2 ^ endline
    | FNeg e        -> indent ^ "FNEG " ^ e ^ endline
    | FAdd (e1, e2) -> indent ^ "FADD " ^ e1 ^ " " ^ e2 ^ endline
    | FSub (e1, e2) -> indent ^ "FSUB " ^ e1 ^ " " ^ e2 ^ endline
    | FMul (e1, e2) -> indent ^ "FMUL " ^ e1 ^ " " ^ e2 ^ endline
    | FDiv (e1, e2) -> indent ^ "FDIV " ^ e1 ^ " " ^ e2 ^ endline
    | IfEq (e1, e2, et, ef) -> indent ^ "IF ( " ^ e1 ^ " = " ^ e2 ^ " ) THEN\n" ^ (str_of_t et (depth + 1)) ^
                               indent ^ "ELSE\n" ^ (str_of_t ef (depth + 1))
    | IfLE (e1, e2, et, ef) -> indent ^ "IF ( " ^ e1 ^ " <= " ^ e2 ^ " ) THEN\n" ^ (str_of_t et (depth + 1)) ^
                               indent ^ "ELSE\n" ^ (str_of_t ef (depth + 1))
    | Let ((x, _), e1, e2) -> indent ^ "LET " ^ x ^ " =\n" ^ (str_of_t e1 (depth + 1)) ^ (indent ^ "IN\n") ^ (str_of_t e2 depth)
    | Var x -> indent ^ "VAR " ^ x ^ endline
    | LetRec (f, e) -> indent ^ "LET REC " ^ (str_of_fundef f (depth + 1)) ^ (indent ^ "IN\n") ^ (str_of_t e depth)
    | App (e1, e2) -> indent ^ e1 ^ " " ^ String.concat " " e2 ^ endline
    | Tuple e -> (indent ^ "( ") ^ String.concat ", " e ^ " )" ^ endline
    | LetTuple (l, e1, e2) -> indent ^ "LET (" ^ (String.concat ", " (List.map fst l)) ^ ") = " ^ e1 ^ " IN\n" ^
                              indent ^ (str_of_t e2 depth)
    | Get (e1, e2) -> indent ^ e1 ^ "[ " ^ e2 ^ "]" ^ endline
    | Put (e1, e2, e3) -> indent ^ e1 ^ "[ " ^ e2 ^ "] <- " ^ e3 ^ endline
    | ExtArray e -> indent ^ e
    | ExtFunApp (e, el) -> indent ^ e ^ " (" ^ (String.concat " " el) ^ ")\n"
  and
    str_of_fundef (f : fundef) (depth : int) =
    (fst f.name) ^ " (" ^ (String.concat ", " (List.map fst f.args)) ^ ") =\n" ^ (str_of_t f.body depth)
  in str_of_t exp 0

(* [WEEK1 Q1] pretty print for KNormal.t *)
let print_t (exp : t) =
  print_string (string_of_t exp)

(* S.t = Id.t *)
let rec fv = function (* free variable (caml2html: knormal_fv) *)
  | Unit | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x) | FNeg(x) -> S.singleton x
  | Add(x, y) | Sub(x, y) | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2) | IfLE(x, y, e1, e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) ->
    let zs = S.diff (fv e1) (S.of_list (List.map fst yts)) in
    S.diff (S.union zs (fv e2)) (S.singleton x)
  | App(x, ys) -> S.of_list (x :: ys)
  | Tuple(xs) | ExtFunApp(_, xs) -> S.of_list xs
  | Put(x, y, z) -> S.of_list [x; y; z]
  | LetTuple(xs, y, e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xs)))

let insert_let (e, t) k = (* k : continuation *)
  match e with
  | Var(x) -> k x
  | _ ->
    let x = Id.gentmp t in
    let e', t' = k x in
    Let((x, t), e, e'), t'

let rec g (env : Type.t M.t) (exp : Syntax.t) : t * Type.t = (* where K-normalization happens (caml2html: knormal_g) *)
  match exp with
  | Syntax.Unit -> Unit, Type.Unit
  | Syntax.Bool(b) -> Int(if b then 1 else 0), Type.Int (* true -> 1, false -> 0 (caml2html: knormal_bool) *)
  | Syntax.Int(i) -> Int(i), Type.Int
  | Syntax.Float(d) -> Float(d), Type.Float
  | Syntax.Not(e, p) -> g env (Syntax.If(e, Syntax.Bool(false), Syntax.Bool(true), p))
  | Syntax.Neg(e, _) ->
    insert_let (g env e)
      (fun x -> Neg(x), Type.Int)
  | Syntax.Add(e1, e2, _) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y -> Add(x, y), Type.Int))
  | Syntax.Sub(e1, e2, _) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y -> Sub(x, y), Type.Int))
  | Syntax.FNeg(e, _) ->
    insert_let (g env e)
      (fun x -> FNeg(x), Type.Float)
  | Syntax.FAdd(e1, e2, _) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y -> FAdd(x, y), Type.Float))
  | Syntax.FSub(e1, e2, _) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y -> FSub(x, y), Type.Float))
  | Syntax.FMul(e1, e2, _) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y -> FMul(x, y), Type.Float))
  | Syntax.FDiv(e1, e2, _) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y -> FDiv(x, y), Type.Float))
  | Syntax.Eq (_, _, p) | Syntax.LE (_, _, p) as cmp ->
    g env (Syntax.If(cmp, Syntax.Bool(true), Syntax.Bool(false), p))
  | Syntax.If(Syntax.Not(e1, _), e2, e3, p) -> g env (Syntax.If(e1, e3, e2, p)) (* converting branch by not (caml2html: knormal_not) *)
  | Syntax.If(Syntax.Eq(e1, e2, _), e3, e4, _) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y ->
             let e3', t3 = g env e3 in
             let e4', t4 = g env e4 in
             IfEq(x, y, e3', e4'), t3))
  | Syntax.If(Syntax.LE(e1, e2, _), e3, e4, _) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y ->
             let e3', t3 = g env e3 in
             let e4', t4 = g env e4 in
             IfLE(x, y, e3', e4'), t3))
  | Syntax.If(e1, e2, e3, p) -> g env (Syntax.If(Syntax.Eq(e1, Syntax.Bool(false), p), e3, e2, p)) (* converting branch without comparison (caml2html: knormal_if) *)
  | Syntax.Let((x, t), e1, e2, _) ->
    let e1', t1 = g env e1 in
    let e2', t2 = g (M.add x t env) e2 in
    Let((x, t), e1', e2'), t2
  | Syntax.Var(x) when M.mem x env -> Var(x), M.find x env
  | Syntax.Var(x) -> (* reference to an external array (caml2html: knormal_extarray) *)
    (match M.find x !Typing.extenv with
     | Type.Array(_) as t -> ExtArray x, t
     | _ -> failwith (Printf.sprintf "external variable %s does not have an array type" x))
  | Syntax.LetRec({ Syntax.name = (x, t); Syntax.args = yts; Syntax.body = e1 }, e2, _) ->
    let env' = M.add x t env in
    let e2', t2 = g env' e2 in
    let e1', t1 = g (M.add_list yts env') e1 in
    LetRec({ name = (x, t); args = yts; body = e1' }, e2'), t2
  | Syntax.App(Syntax.Var(f), e2s, _) when not (M.mem f env) -> (* calling external function (caml2html: knormal_extfunapp) *)
    (match M.find f !Typing.extenv with
     | Type.Fun(_, t) ->
       let rec bind xs = function (* "xs" are identifiers for the arguments *)
         | [] -> ExtFunApp(f, xs), t
         | e2 :: e2s ->
           insert_let (g env e2)
             (fun x -> bind (xs @ [x]) e2s) in
       bind [] e2s (* left-to-right evaluation *)
     | _ -> assert false)
  | Syntax.App(e1, e2s, _) ->
    (match g env e1 with
     | _, Type.Fun(_, t) as g_e1 ->
       insert_let g_e1
         (fun f ->
            let rec bind xs = function (* "xs" are identifiers for the arguments *)
              | [] -> App(f, xs), t
              | e2 :: e2s ->
                insert_let (g env e2)
                  (fun x -> bind (xs @ [x]) e2s) in
            bind [] e2s) (* left-to-right evaluation *)
     | _ -> assert false)
  | Syntax.Tuple(es) ->
    let rec bind xs ts = function (* "xs" and "ts" are identifiers and types for the elements *)
      | [] -> Tuple(xs), Type.Tuple(ts)
      | e :: es ->
        let _, t as g_e = g env e in
        insert_let g_e
          (fun x -> bind (xs @ [x]) (ts @ [t]) es) in
    bind [] [] es
  | Syntax.LetTuple(xts, e1, e2, _) ->
    insert_let (g env e1)
      (fun y ->
         let e2', t2 = g (M.add_list xts env) e2 in
         LetTuple(xts, y, e2'), t2)
  | Syntax.Array(e1, e2, _) ->
    insert_let (g env e1)
      (fun x ->
         let _, t2 as g_e2 = g env e2 in
         insert_let g_e2
           (fun y ->
              let l =
                match t2 with
                | Type.Float -> "create_float_array"
                | _ -> "create_array" in
              ExtFunApp(l, [x; y]), Type.Array(t2)))
  | Syntax.Get(e1, e2, _) ->
    (match g env e1 with
     | _, Type.Array(t) as g_e1 ->
       insert_let g_e1
         (fun x -> insert_let (g env e2)
             (fun y -> Get(x, y), t))
     | _ -> assert false)
  | Syntax.Put(e1, e2, e3, _) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y -> insert_let (g env e3)
              (fun z -> Put(x, y, z), Type.Unit)))

(* [WEEK2 Q2] Eliminate common subexpression *)
(* 置換可能な右辺式と、それが代入された変数(左辺)のリスト *)
type letenv = (t * Id.t) list

let print_letenv (env : letenv) =
  let string_of_letenv (env : letenv) =
    String.concat "" (List.map (fun (e, x) -> x ^ " = " ^ string_of_t e) env)
  in print_endline ("env:" ^ string_of_letenv env)

let rec may_have_side_effect (exp : t) : bool =
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
let rec fv_subst (e : t) (a : Id.t) (b : Id.t) : t =
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
  | Let ((x, t), e1, e2) -> Let ((x, t), fv_subst e1 a b, fv_subst e2 a b)
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
and fv_subst_fun (f : fundef) (a : Id.t) (b : Id.t) : fundef =
  let subst_ x = if x = a then b else x in
  { name = ((subst_ (fst f.name)), snd f.name); args = (List.map (fun (x, t) -> (subst_ x, t)) f.args); body = fv_subst f.body a b }

(* Equality of KNotmal.t *)
let rec eq_t (e1 : t) (e2 : t) : bool =
  match (e1, e2) with
  | IfEq(e11, e12, e1t, e1f), IfEq(e21, e22, e2t, e2f) -> e11 = e21 && e12 = e22 && (eq_t e1t e2t) && (eq_t e1f e2f)
  | IfLE(e11, e12, e1t, e1f), IfLE(e21, e22, e2t, e2f) -> e11 = e21 && e12 = e22 && (eq_t e1t e2t) && (eq_t e1f e2f)
  | Let((x1, t1), e11, e12), Let((x2, t2), e21, e22)   -> (e11 = e21) && eq_t e12 (fv_subst e22 x2 x1)
  | LetRec(f1, e1'), LetRec(f2, e2')                   -> f1 = f2 && (eq_t e1' e2')
  | LetTuple(l1, e11, e12), LetTuple(l2, e21, e22)     -> l1 = l2 && e11 = e21 && eq_t e12 e22
  | _ -> e1 = e2

(* drop all KNormal.t expression from 'env' whose free variables contain 'x' *)
let delete_changed_fml (env : letenv) (x : Id.t) : letenv =
  List.filter (fun (e, _) -> not (S.mem x (fv e))) env

(* essential part of the common subexpression elimination *)
let rec elim_comm_subexp (env : letenv) (exp : t) : t =
  match exp with
  | IfEq(e1, e2, et, ef) -> IfEq(e1, e2, (elim_comm_subexp env et), (elim_comm_subexp env ef))
  | IfLE(e1, e2, et, ef) -> IfLE(e1, e2, (elim_comm_subexp env et), (elim_comm_subexp env ef))
  | Let((x, t), e1, e2) ->
    let e1 = elim_comm_subexp env e1 in
    (match List.find_opt (fun (e, _) -> eq_t e e1) env with
     | Some (e, y) ->
       (* before applying the elimination, make sure that the formula doesn't have any side effects *)
       (match may_have_side_effect e1 with
        | true  -> Let((x, t), e1, elim_comm_subexp (delete_changed_fml env x) e2)
        | false -> Let((x, t), Var y, elim_comm_subexp (delete_changed_fml env x) e2))
     | None ->
       (* 'e1' is unknown -> register it to the 'env' *)
       Let((x, t), e1, elim_comm_subexp (delete_changed_fml ((e1, x) :: env) x) e2))
  | LetRec(f, e) ->
    let newenv = delete_changed_fml env (fst f.name) in
    LetRec(f, (elim_comm_subexp newenv e))
  | LetTuple(l, e1, e2) ->
    let newenv = List.fold_left delete_changed_fml env (List.map fst l) in
    LetTuple(l, e1, (elim_comm_subexp newenv e2))
  | _ -> exp

let f e = elim_comm_subexp [] (fst (g M.empty e))
