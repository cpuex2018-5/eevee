let x = 1 in 
let y = 2 in 
let l = Array.make 1 1 in
let rec f z = x + y - z in
let rec g z = x - y + z in
let h = if l.(0) > 2 then f else g in
print_int (h 1)
