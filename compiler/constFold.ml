open KNormal

let memi x env =
  try (match M.find x env with Int(_) -> true | _ -> false)
  with Not_found -> false
let memf x env =
  try (match M.find x env with Float(_) -> true | _ -> false)
  with Not_found -> false
let memt x env =
  try (match M.find x env with Tuple(_) -> true | _ -> false)
  with Not_found -> false

let findi x env = (match M.find x env with Int(i) -> i | _ -> raise Not_found)
let findf x env = (match M.find x env with Float(d) -> d | _ -> raise Not_found)
let findt x env = (match M.find x env with Tuple(ys) -> ys | _ -> raise Not_found)

let rec g env = function
  | Var(x) when memi x env -> Int(findi x env)
  | Var(x) when memf x env -> Float(findf x env)
  (* | Var(x) when memt x env -> Tuple(findt x env) *)
  | Not(x) when memi x env -> Int(lnot (findi x env))
  | Neg(x) when memi x env -> Int(-(findi x env))
  | Xor(x, y) when memi x env && memi y env -> Int((findi x env) lxor (findi y env))
  | Add(x, y) when memi x env && memi y env -> Int(findi x env + findi y env)
  | Sub(x, y) when memi x env && memi y env -> Int(findi x env - findi y env)
  | Mul(x, y) when memi x env && memi y env -> Int(findi x env * findi y env)
  | Div(x, y) when memi x env && memi y env -> Int(findi x env / findi y env)
  | FNeg(x) when memf x env -> Float(-.(findf x env))
  | FAdd(x, y) when memf x env && memf y env -> Float(findf x env +. findf y env)
  | FSub(x, y) when memf x env && memf y env -> Float(findf x env -. findf y env)
  | FMul(x, y) when memf x env && memf y env -> Float(findf x env *. findf y env)
  | FDiv(x, y) when memf x env && memf y env -> Float(findf x env /. findf y env)
  | FEq(x, y) when memf x env && memf y env -> if (findf x env = findf y env) then Int(1) else Int(0)
  | FLE(x, y) when memf x env && memf y env -> if (findf x env <= findf y env) then Int(1) else Int(0)
  | IfEq(x, y, e1, e2) when memi x env && memi y env -> if findi x env = findi y env then g env e1 else g env e2
  | IfEq(x, y, e1, e2) when memf x env && memf y env -> if findf x env = findf y env then g env e1 else g env e2
  | IfEq(x, y, e1, e2) -> IfEq(x, y, g env e1, g env e2)
  | IfLE(x, y, e1, e2) when memi x env && memi y env -> if findi x env <= findi y env then g env e1 else g env e2
  | IfLE(x, y, e1, e2) when memf x env && memf y env -> if findf x env <= findf y env then g env e1 else g env e2
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g env e1, g env e2)
  | Let((x, t), e1, e2) ->
    let e1' = g env e1 in
    let e2' = g (M.add x e1' env) e2 in
    Let((x, t), e1', e2')
  | LetRec({ name = x; args = ys; body = e1 }, e2) ->
    LetRec({ name = x; args = ys; body = g env e1 }, g env e2)
  | LetTuple(xts, y, e) when memt y env ->
    List.fold_left2
      (fun e' xt z -> Let(xt, Var(z), e'))
      (g env e)
      xts
      (findt y env)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, g env e)
(*
  | App("min_caml_sqrt", [x]) when memf x env -> Float(sqrt (findf x env))
  | App("min_caml_int_of_float", [x]) when memf x env -> Int(int_of_float (findf x env))
  | App("min_caml_float_of_int", [x]) when memi x env -> Float(float_of_int (findi x env))
  | App("min_caml_abs_float", [x]) when memf x env -> Float(abs_float (findf x env))
*)
  | e -> e

let f = g M.empty
