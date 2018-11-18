(* give names to intermediate values (K-normalization) *)

type t = (* formula after K-normalization (caml2html: knormal_t) *)
  | Unit
  | Int of int
  | Float of float
  | Not of Id.t
  | Xor of Id.t * Id.t
  | Neg of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | Mul of Id.t * Id.t
  | Div of Id.t * Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | FEq  of Id.t * Id.t
  | FLE  of Id.t * Id.t
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
  let rec str_of_t ?(no_indent = false) ?(endline = "\n") (exp : t) (depth : int) : string =
    let indent = if no_indent then "" else (String.make (depth * 2) ' ') in
    match exp with
    | Unit -> indent ^ "()" ^ endline
    | Int n   -> indent ^ "INT " ^ (string_of_int n) ^ endline
    | Float f -> indent ^ "FLOAT " ^ (string_of_float f) ^ endline
    | Not e   -> indent ^ "~ " ^ e ^ endline
    | Xor (e1, e2) -> indent ^ "XOR " ^ e1 ^ " " ^ e2 ^ endline
    | Neg e   -> indent ^ "- " ^ e ^ endline
    | Add (e1, e2)  -> indent ^ e1 ^ " + " ^ e2 ^ endline
    | Sub (e1, e2)  -> indent ^ e1 ^ " - " ^ e2 ^ endline
    | Mul (e1, e2)  -> indent ^ e1 ^ " * " ^ e2 ^ endline
    | Div (e1, e2)  -> indent ^ e1 ^ " / " ^ e2 ^ endline
    | FNeg e        -> indent ^ "-. " ^ e ^ endline
    | FAdd (e1, e2) -> indent ^ e1 ^ " +. " ^ e2 ^ endline
    | FSub (e1, e2) -> indent ^ e1 ^ " -. " ^ e2 ^ endline
    | FMul (e1, e2) -> indent ^ e1 ^ " *. " ^ e2 ^ endline
    | FDiv (e1, e2) -> indent ^ e1 ^ " /. " ^ e2 ^ endline
    | FEq  (e1, e2) -> indent ^ e1 ^ " =. " ^ e2 ^ endline
    | FLE  (e1, e2) -> indent ^ e1 ^ " <=. " ^ e2 ^ endline
    | IfEq (e1, e2, et, ef) -> indent ^ "IF ( " ^ e1 ^ " = " ^ e2 ^ " ) THEN\n" ^ (str_of_t et (depth + 1)) ^
                               indent ^ "ELSE\n" ^ (str_of_t ef (depth + 1))
    | IfLE (e1, e2, et, ef) -> indent ^ "IF ( " ^ e1 ^ " <= " ^ e2 ^ " ) THEN\n" ^ (str_of_t et (depth + 1)) ^
                               indent ^ "ELSE\n" ^ (str_of_t ef (depth + 1))
    | Let ((x, _), e1, e2) ->
      (match e1 with
       | Int _ | Float _ | Var _ -> indent ^ "LET " ^ x ^ " = " ^ (str_of_t e1 ~no_indent:true ~endline:"" (depth + 1)) ^ " IN\n" ^ (str_of_t e2 depth)
       | _ -> indent ^ "LET " ^ x ^ " =\n" ^ (str_of_t e1 (depth + 1)) ^ (indent ^ "IN\n") ^ (str_of_t e2 depth))
    | Var x -> indent ^ "VAR " ^ x ^ endline
    | LetRec (f, e) -> indent ^ "LET REC " ^ (str_of_fundef f (depth + 1)) ^ (indent ^ "IN\n") ^ (str_of_t e depth)
    | App (e1, e2) -> indent ^ e1 ^ " " ^ String.concat " " e2 ^ endline
    | Tuple e -> (indent ^ "( ") ^ String.concat ", " e ^ " )" ^ endline
    | LetTuple (l, e1, e2) -> indent ^ "LET (" ^ (String.concat ", " (List.map fst l)) ^ ") = " ^ e1 ^ " IN\n" ^
                              indent ^ (str_of_t e2 depth)
    | Get (e1, e2) -> indent ^ e1 ^ "[ " ^ e2 ^ " ]" ^ endline
    | Put (e1, e2, e3) -> indent ^ e1 ^ "[ " ^ e2 ^ " ] <- " ^ e3 ^ endline
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
  | Not(x) | Neg(x) | FNeg(x) -> S.singleton x
  | Xor(x, y) | Add(x, y) | Sub(x, y) | Mul(x, y) | Div(x, y)
  | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | FEq(x, y) | FLE(x, y) | Get(x, y) -> S.of_list [x; y]
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

(* substitute a free variable 'a' in 'e' with 'b' *)
let rec id_subst (e : t) (a : Id.t) (b : Id.t) : t =
  let subst_ x = if x = a then b else x in
  match e with
  | Not e   -> Not (subst_ e)
  | Neg e   -> Neg (subst_ e)
  | Xor (e1, e2)  -> Xor  (subst_ e1, subst_ e2)
  | Add (e1, e2)  -> Add  (subst_ e1, subst_ e2)
  | Sub (e1, e2)  -> Sub  (subst_ e1, subst_ e2)
  | Mul (e1, e2)  -> Mul  (subst_ e1, subst_ e2)
  | Div (e1, e2)  -> Div  (subst_ e1, subst_ e2)
  | FNeg e        -> FNeg (subst_ e)
  | FAdd (e1, e2) -> FAdd (subst_ e1, subst_ e2)
  | FSub (e1, e2) -> FSub (subst_ e1, subst_ e2)
  | FMul (e1, e2) -> FMul (subst_ e1, subst_ e2)
  | FDiv (e1, e2) -> FDiv (subst_ e1, subst_ e2)
  | FEq (e1, e2)  -> FEq  (subst_ e1, subst_ e2)
  | FLE (e1, e2)  -> FLE  (subst_ e1, subst_ e2)
  | IfEq (e1, e2, et, ef) -> IfEq (subst_ e1, subst_ e2, id_subst et a b, id_subst ef a b)
  | IfLE (e1, e2, et, ef) -> IfLE (subst_ e1, subst_ e2, id_subst et a b, id_subst ef a b)
  | Let ((x, t), e1, e2) ->
    (* Note: after alpha-conversion, variable names won't collapse and x <> a is guaranteed *)
    Let ((x, t), id_subst e1 a b, id_subst e2 a b)
  | Var x -> Var (subst_ x)
  | LetRec (f, e) -> LetRec (id_subst_fun f a b, id_subst e a b)
  | App (e1, e2) -> App (subst_ e1, List.map subst_ e2)
  | Tuple e -> Tuple (List.map subst_ e)
  | LetTuple (l, e1, e2) -> LetTuple (List.map (fun (x, t) -> (subst_ x, t)) l, subst_ e1, id_subst e2 a b)
  | Get (e1, e2) -> Get (subst_ e1, subst_ e2)
  | Put (e1, e2, e3) -> Put (subst_ e1, subst_ e2, subst_ e3)
  | ExtArray e -> ExtArray (subst_ e)
  | ExtFunApp (e, el) -> ExtFunApp (subst_ e, List.map subst_ el)
  | _ -> e
and id_subst_fun (f : fundef) (a : Id.t) (b : Id.t) : fundef =
  let subst_ x = if x = a then b else x in
  { name = ((subst_ (fst f.name)), snd f.name); args = (List.map (fun (x, t) -> (subst_ x, t)) f.args); body = id_subst f.body a b }

let rec unfold_extfun (exp : Syntax.t) : Syntax.t =
  match exp with
  | Not(e, p) -> Not(unfold_extfun e, p)
  | Neg(e, p) -> Neg(unfold_extfun e, p)
  | Add(e1, e2, p) -> Add(unfold_extfun e1, unfold_extfun e2, p)
  | Sub(e1, e2, p) -> Sub(unfold_extfun e1, unfold_extfun e2, p)
  | Mul(e1, e2, p) -> Mul(unfold_extfun e1, unfold_extfun e2, p)
  | Div(e1, e2, p) -> Div(unfold_extfun e1, unfold_extfun e2, p)
  | FNeg(e, p) -> FNeg(unfold_extfun e, p)
  | FAdd(e1, e2, p) -> FAdd(unfold_extfun e1, unfold_extfun e2, p)
  | FSub(e1, e2, p) -> FSub(unfold_extfun e1, unfold_extfun e2, p)
  | FMul(e1, e2, p) -> FMul(unfold_extfun e1, unfold_extfun e2, p)
  | FDiv(e1, e2, p) -> FDiv(unfold_extfun e1, unfold_extfun e2, p)
  | Eq(e1, e2, t, p) -> Eq(unfold_extfun e1, unfold_extfun e2, t, p)
  | LE(e1, e2, t, p) -> LE(unfold_extfun e1, unfold_extfun e2, t, p)
  | If(e1, e2, e3, p) -> If(unfold_extfun e1, unfold_extfun e2, unfold_extfun e3, p)
  | Let(xt, e1, e2, p) -> Let(xt, unfold_extfun e1, unfold_extfun e2, p)
  | LetRec(f, e, p) -> LetRec({ name = f.name; args = f.args; body = unfold_extfun f.body }, unfold_extfun e, p)
  | App(Var("fsqr"), [e], p) -> let e' = unfold_extfun e in FMul(e', e', p)
  | App(Var("fhalf"), [e], p) -> FDiv(unfold_extfun e, Float 2.0, p)
  | App(Var("fneg"), [e], p) -> FNeg(unfold_extfun e, p)
  | App(Var("fiszero"), [e], p) -> Eq(unfold_extfun e, Float(0.0), Type.Float, p)
  | App(Var("fispos"), [e], p) -> Not(LE(unfold_extfun e, Float(0.0), Type.Float, p), p)
  | App(Var("fisneg"), [e], p) -> Not(LE(Float(0.0), unfold_extfun e, Type.Float, p), p)
  | App(Var("fless"), [e1; e2], p) -> Not(LE(unfold_extfun e2, unfold_extfun e1, Type.Float, p), p)
  | App(e1, e2, p) -> App(unfold_extfun e1, List.map unfold_extfun e2, p)
  | Tuple(es) -> Tuple(List.map unfold_extfun es)
  | LetTuple(xts, e1, e2, p) -> LetTuple(xts, unfold_extfun e1, unfold_extfun e2, p)
  | Array(e1, e2, p) -> Array(unfold_extfun e1, unfold_extfun e2, p)
  | Get(e1, e2, p) -> Get(unfold_extfun e1, unfold_extfun e2, p)
  | Put(e1, e2, e3, p) -> Put(unfold_extfun e1, unfold_extfun e2, unfold_extfun e3, p)
  | _ -> exp

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
  | Syntax.Not(e, p) ->
    insert_let (g env e)
      (fun x -> Not(x), Type.Bool)
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
  | Syntax.Mul(e1, e2, _) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y -> Mul(x, y), Type.Int))
  | Syntax.Div(e1, e2, _) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y -> Div(x, y), Type.Int))
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
  | Syntax.Eq (e1, e2, Type.Float, p) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y -> FEq(x, y), Type.Bool))
  | Syntax.LE (e1, e2, Type.Float, p) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y -> FLE(x, y), Type.Bool))
  | Syntax.Eq (_, _, _, p) | Syntax.LE (_, _, _, p) as cmp ->
    g env (Syntax.If(cmp, Syntax.Bool(true), Syntax.Bool(false), p))
  | Syntax.If(Syntax.Not(e1, _), e2, e3, p) ->
    (* converting branch by not (caml2html: knormal_not) *)
    g env (Syntax.If(e1, e3, e2, p))
  | Syntax.If(Syntax.Eq(e1, e2, _, _), e3, e4, _) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y ->
             let e3', t3 = g env e3 in
             let e4', t4 = g env e4 in
             IfEq(x, y, e3', e4'), t3))
  | Syntax.If(Syntax.LE(e1, e2, _, _), e3, e4, _) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y ->
             let e3', t3 = g env e3 in
             let e4', t4 = g env e4 in
             IfLE(x, y, e3', e4'), t3))
  | Syntax.If(e1, e2, e3, p) ->
    g env (Syntax.If(Syntax.Eq(e1, Syntax.Bool(false), Type.Bool, p), e3, e2, p))
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
  | Syntax.App(Syntax.Var("xor"), [e1; e2], _) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y -> Xor(x, y), Type.Int))
  | Syntax.App(Syntax.Var(f), e2s, _) when not (M.mem f env) ->
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

let f e = fst (g M.empty (unfold_extfun e))
