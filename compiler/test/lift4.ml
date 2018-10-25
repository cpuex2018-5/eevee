let rec app f x = f x in
let rec g x = x + 1 in
print_int (app g 3)
