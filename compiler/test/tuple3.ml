let b = Array.make 1 (1, 2) in
let a = b.(0) in
let c = (3, 4) in
b.(0) <- c;
let (x, y) = a in
let (z0, z1) = b.(0) in
print_int x;
print_int z0
