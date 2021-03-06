open Asm

(* TODO *)
let rec g env = function (* 命令列の12bit即値最適化 *)
  | Ans(exp) -> Ans(g' env exp)
  | Let((x, t), Li(i), e) when -2048 <= i && i < 2047 ->
    (* Format.eprintf "found simm12 %s = %d@." x i; *)
    let e' = g (M.add x i env) e in
    if List.mem x (fv e') then Let((x, t), Li(i), e') else
      ((* Format.eprintf "erased redundant Set to %s@." x; *)
        e')
  | Let(xt, Sll(y, C(i)), e) when M.mem y env -> (* for array access *)
    (* Format.eprintf "erased redundant Sll on %s@." x; *)
    g env (Let(xt, Li((M.find y env) lsl i), e))
  | Let(xt, exp, e) -> Let(xt, g' env exp, g env e)
and g' env = function (* 各命令の12bit即値最適化 *)
  | Xor(x, V(y)) when M.mem y env -> Xor(x, C(M.find y env))
  | Xor(x, V(y)) when M.mem x env -> Xor(y, C(M.find x env))
  | Add(x, V(y)) when M.mem y env -> Add(x, C(M.find y env))
  | Add(x, V(y)) when M.mem x env -> Add(y, C(M.find x env))
  | Sub(x, V(y)) when M.mem y env -> Sub(x, C(M.find y env))
  | Mul(x, V(y)) when M.mem y env -> Mul(x, C(M.find y env))
  | Mul(x, V(y)) when M.mem x env -> Mul(y, C(M.find x env))
  | Div(x, V(y)) when M.mem y env -> Div(x, C(M.find y env))
  | Sll(x, V(y)) when M.mem y env -> Sll(x, C(M.find y env))
  | Lw(x, V(y)) when M.mem y env -> Lw(x, C(M.find y env))
  | Sw(x, y, V(z)) when M.mem z env -> Sw(x, y, C(M.find z env))
  | Flw(x, V(y)) when M.mem y env -> Flw(x, C(M.find y env))
  | Fsw(x, y, V(z)) when M.mem z env -> Fsw(x, y, C(M.find z env))
  | IfEq(x, V(y), e1, e2) when M.mem y env -> IfEq(x, C(M.find y env), g env e1, g env e2)
  | IfLE(x, V(y), e1, e2) when M.mem y env -> IfLE(x, C(M.find y env), g env e1, g env e2)
  | IfGE(x, V(y), e1, e2) when M.mem y env -> IfGE(x, C(M.find y env), g env e1, g env e2)
  | IfEq(x, V(y), e1, e2) when M.mem x env -> IfEq(y, C(M.find x env), g env e1, g env e2)
  | IfLE(x, V(y), e1, e2) when M.mem x env -> IfGE(y, C(M.find x env), g env e1, g env e2)
  | IfGE(x, V(y), e1, e2) when M.mem x env -> IfLE(y, C(M.find x env), g env e1, g env e2)
  | IfEq(x, y', e1, e2) -> IfEq(x, y', g env e1, g env e2)
  | IfLE(x, y', e1, e2) -> IfLE(x, y', g env e1, g env e2)
  | IfGE(x, y', e1, e2) -> IfGE(x, y', g env e1, g env e2)
  | IfFEq(x, y, e1, e2) -> IfFEq(x, y, g env e1, g env e2)
  | IfFLE(x, y, e1, e2) -> IfFLE(x, y, g env e1, g env e2)
  | e -> e

let h { name = l; args = xs; fargs = ys; body = e; ret = t } = (* トップレベル関数の12bit即値最適化 *)
  { name = l; args = xs; fargs = ys; body = g M.empty e; ret = t }

let f (Prog(data, fundefs, e)) = (* プログラム全体の12bit即値最適化 *)
  Prog(data, List.map h fundefs, g M.empty e)
