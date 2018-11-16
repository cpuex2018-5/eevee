open Closure

type tupleenv = (Id.t * (Id.t * Type.t) list) list

let rec g (env : tupleenv) (e : t) =
  match e with
  | IfEq(x, y, e1, e2) -> IfEq(x, y, g env e1, g env e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g env e1, g env e2)
  | Let(xt, e1, e2) -> Let(xt, g env e1, g env e2)
  | MakeCls(xt, cl, e) -> MakeCls(xt, cl, g env e)
  | LetTuple(xts, y, e) ->
    (match List.find_opt (fun (x, _) -> x = y) env with
     | None ->
       LetTuple(xts, y, g ((y, xts) :: env) e)
     | Some (_, xts') ->
       let (xs, ts) = List.split xts in
       let (xs', ts') = List.split xts' in
       assert (List.for_all2 (fun t t' -> t = t') ts ts');
       let table = List.combine xs xs' in
       let e' = List.fold_left (fun e (x, y) -> Closure.id_subst e x y) e table in
       g env e')
  | _ -> e

let f (Prog (fundefs, e)) =
  let fundefs' =
    List.map
      (fun f ->
         { name = f.name; args = f.args; formal_fv = f.formal_fv; body = g [] f.body }) fundefs in
  Prog (fundefs', g [] e)
