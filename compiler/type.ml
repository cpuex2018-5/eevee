type t =
  | Unit
  | Bool
  | Int
  | Float
  | Fun of t list * t (* arguments are uncurried *)
  | Tuple of t list
  | Array of t
  | Var of t option ref

let gentyp () = Var(ref None)

(* [WEEK1 Q2] pretty print for Type.t *)
let rec string_of_type t =
  match t with
  | Unit -> "unit"
  | Bool -> "bool"
  | Int -> "int"
  | Float -> "float"
  | Fun (l, t) -> (String.concat " -> " (List.map string_of_type l)) ^ " -> " ^ string_of_type t
  | Tuple l -> "(" ^ (String.concat " * " (List.map string_of_type l)) ^ ")"
  | Array t -> string_of_type t ^ " array"
  | Var t -> (match !t with
      | Some t' -> string_of_type t'
      | None -> "'a")
