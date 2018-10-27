type closure = { entry : Id.l; actual_fv : Id.t list }
type t = (* クロージャ変換後の式 (caml2html: closure_t) *)
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
  | IfEq of Id.t * Id.t * t * t
  | IfLE of Id.t * Id.t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | MakeCls of (Id.t * Type.t) * closure * t
  | AppCls of Id.t * Id.t list
  | AppDir of Id.l * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ExtArray of Id.l
type fundef = { name : Id.l * Type.t;
                args : (Id.t * Type.t) list;
                formal_fv : (Id.t * Type.t) list;
                body : t }
type prog = Prog of fundef list * t

let rec str_of_t ?(no_indent = false) ?(endline = "\n") (exp : t) (depth : int) : string =
  let indent = if no_indent then "" else (String.make (depth * 2) ' ') in
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
  | Let ((x, _), e1, e2) ->
    (match e1 with
     | Int _ | Float _ | Var _ -> indent ^ "LET " ^ x ^ " = " ^ (str_of_t e1 ~no_indent:true ~endline:"" (depth + 1)) ^ " IN\n" ^ (str_of_t e2 depth)
     | _ -> indent ^ "LET " ^ x ^ " =\n" ^ (str_of_t e1 (depth + 1)) ^ (indent ^ "IN\n") ^ (str_of_t e2 depth))
  | Var x -> indent ^ "VAR " ^ x ^ endline
  | MakeCls ((f, _), { entry = Id.L(l); actual_fv = xl }, e) ->
    indent ^ "MAKECLS " ^ f  ^ " = <" ^ l ^ ", {" ^ (String.concat ", " xl) ^ "}> IN\n" ^ (str_of_t e depth)
  | AppCls (e1, e2) -> indent ^ e1 ^ " " ^ String.concat " " e2 ^ endline
  | AppDir (Id.L(e1), e2) -> indent ^ e1 ^ " " ^ String.concat " " e2 ^ endline
  | Tuple e -> (indent ^ "( ") ^ String.concat ", " e ^ " )" ^ endline
  | LetTuple (l, e1, e2) -> indent ^ "LET (" ^ (String.concat ", " (List.map fst l)) ^ ") = " ^ e1 ^ " IN\n" ^
                            indent ^ (str_of_t e2 depth)
  | Get (e1, e2) -> indent ^ e1 ^ "[ " ^ e2 ^ " ]" ^ endline
  | Put (e1, e2, e3) -> indent ^ e1 ^ "[ " ^ e2 ^ " ] <- " ^ e3 ^ endline
  | ExtArray Id.L(e) -> indent ^ e

let string_of_t (exp : t) = str_of_t exp 0

let string_of_fundef (f : fundef) =
  let { name = (Id.L(l), _); args = yts; formal_fv = zts; body = e } = f in
  l ^ " (" ^ (String.concat ", " (List.map fst f.args)) ^ ") =\n" ^ (str_of_t e 1)

let rec string_of_prog (Prog (fundefs, e)) =
  String.concat "\n" (List.map string_of_fundef fundefs) ^ "\n" ^ string_of_t e

let print_t (exp : t) = print_string (string_of_t exp)
let print_prog p = print_string (string_of_prog p)

let rec fv = function
  | Unit | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x) | FNeg(x) -> S.singleton x
  | Add(x, y) | Sub(x, y) | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2)| IfLE(x, y, e1, e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | MakeCls((x, t), { entry = l; actual_fv = ys }, e) -> S.remove x (S.union (S.of_list ys) (fv e))
  | AppCls(x, ys) -> S.of_list (x :: ys)
  | AppDir(_, xs) | Tuple(xs) -> S.of_list xs
  | LetTuple(xts, y, e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xts)))
  | Put(x, y, z) -> S.of_list [x; y; z]

let toplevel : fundef list ref = ref []

let rec g env known e = (* クロージャ変換ルーチン本体 (caml2html: closure_g) *)
  (* known: 自由変数のない関数の集合 *)
  (* KNormal.print_t e;
     print_endline "---------------------"; *)
  match e with
  | KNormal.Unit -> Unit
  | KNormal.Int(i) -> Int(i)
  | KNormal.Float(d) -> Float(d)
  | KNormal.Neg(x) -> Neg(x)
  | KNormal.Add(x, y) -> Add(x, y)
  | KNormal.Sub(x, y) -> Sub(x, y)
  | KNormal.FNeg(x) -> FNeg(x)
  | KNormal.FAdd(x, y) -> FAdd(x, y)
  | KNormal.FSub(x, y) -> FSub(x, y)
  | KNormal.FMul(x, y) -> FMul(x, y)
  | KNormal.FDiv(x, y) -> FDiv(x, y)
  | KNormal.IfEq(x, y, e1, e2) -> IfEq(x, y, g env known e1, g env known e2)
  | KNormal.IfLE(x, y, e1, e2) -> IfLE(x, y, g env known e1, g env known e2)
  | KNormal.Let((x, t), e1, e2) -> Let((x, t), g env known e1, g (M.add x t env) known e2)
  | KNormal.Var(x) -> Var(x)
  | KNormal.LetRec({ KNormal.name = (x, t); KNormal.args = yts; KNormal.body = e1 }, e2) ->
    (* 関数定義let rec x y1 ... yn = e1 in e2の場合は、
       xに自由変数がない(closureを介さずdirectに呼び出せる)
       と仮定し、knownに追加してe1をクロージャ変換してみる *)
    let toplevel_backup = !toplevel in
    let env' = M.add x t env in
    let known' = S.add x known in
    let e1' = g (M.add_list yts env') known' e1 in
    (* 本当に自由変数がなかったか、変換結果e1'を確認する *)
    (* 注意: e1'にx自身が変数として出現する場合はclosureが必要!  (test/cls-bug2.ml参照) *)
    let zs = S.diff (fv e1') (S.of_list (List.map fst yts)) in
    let (known', e1') =
      if S.is_empty zs then
        (known', e1')
      else
        (* 駄目だったら状態(toplevelの値)を戻して、クロージャ変換をやり直す *)
        (Format.eprintf "free variable(s) %s found in function %s@." (Id.pp_list (S.elements zs)) x;
         Format.eprintf "function %s cannot be directly applied in fact@." x;
         toplevel := toplevel_backup;
         let e1' = g (M.add_list yts env') known e1 in
         known, e1') in
    let zs = S.elements (S.diff (fv e1') (S.add x (S.of_list (List.map fst yts)))) in (* 自由変数のリスト *)
    let zts = List.map (fun z -> (z, M.find z env')) zs in (* ここで自由変数zの型を引くために引数envが必要 *)
    toplevel := { name = (Id.L(x), t); args = yts; formal_fv = zts; body = e1' } :: !toplevel; (* トップレベル関数を追加 *)
    let e2' = g env' known' e2 in
    if S.mem x (fv e2') then (* xが変数としてe2'に出現するか *)
      MakeCls((x, t), { entry = Id.L(x); actual_fv = zs }, e2') (* 出現していたら削除しない *)
    else
      (Format.eprintf "eliminating closure(s) %s@." x;
       e2') (* 出現しなければMakeClsを削除 *)
  | KNormal.App(x, ys) when S.mem x known ->
    Format.eprintf "directly applying %s@." x;
    AppDir(Id.L(x), ys)
  | KNormal.App(f, xs) -> AppCls(f, xs)
  | KNormal.Tuple(xs) -> Tuple(xs)
  | KNormal.LetTuple(xts, y, e) -> LetTuple(xts, y, g (M.add_list xts env) known e)
  | KNormal.Get(x, y) -> Get(x, y)
  | KNormal.Put(x, y, z) -> Put(x, y, z)
  | KNormal.ExtArray(x) -> ExtArray(Id.L(x))
  | KNormal.ExtFunApp(x, ys) -> AppDir(Id.L("min_caml_" ^ x), ys)

let f e =
  toplevel := [];
  let e' = g M.empty S.empty e in
  let p = Prog(List.rev !toplevel, e') in
  print_endline "-----------Closure.prog-----------------";
  print_prog p;
  p
