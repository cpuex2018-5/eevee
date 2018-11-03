(*
let a = 1 in
let b = 2 in
let c = a + b in
let d = a + b in
print_int d

let a = 1 in
let b = 2 in
let b = a + b in
let c = a + b in
print_int c

let rec id x = x in
let a = 1 in
let b = id a in
let c = id a in
print_int b

let a = 1 in
let b = a + 2 in
let c = a + 2 in
print_int b
*)

let a = 1 in
let b = (a + 2) + (a + 2) in
let c = (a + 2) + (a + 2) in
print_int b
