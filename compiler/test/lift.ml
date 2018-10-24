(*
let rec f x  =
  let rec g y =
    let rec h z =
      x + y + z in
    h 3 in
  g 5
in
let rec loop x =
  if x = 0 then ()
  else
    print_int (f x) in
loop 10000000
*)

let l = Array.make 1 1 in
let a = l.(0) in
let rec f x  =
  let rec g y =
    let rec h z =
      x + y + z in
    h 3 in
  g 5
in
let rec loop x z =
  if x = 0 then z
  else
    let t = f a in
    loop (x - 1) (z + t)
in
print_int (loop 100000 0)

(*
let rec f a b =
  if 1 < 2 then
    let rec g c d =
      let rec h d e =
        a + b + c + d + e in
      h 2 3 in
    g 1 2
  else
    2 in
print_int (f 1 2)

let z = 4 in
let rec f x = x - z in
print_int (f 8)

let x = 1 in
let y = 2 in
let l = Array.make 1 1 in
let rec f z = x + y - z in
let rec g z = x - y + z in
let h = if l.(0) > 2 then f else g in
print_int (h 1)
*)
