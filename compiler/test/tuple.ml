let b = (0, (1, (2, 3))) in
let l = Array.make 1 b in
let (x0, x1) = l.(0) in
let (y0, y1) = x1 in
let (z0, z1) = y1 in
print_int x0;
print_int y0;
print_int z0
