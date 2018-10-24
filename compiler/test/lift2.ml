let rec g b x y =
  if b then
    x + y
  else
    x - y
in
let rec f b x = g b x 5 in
let rec h b = f b 2 in
print_int (h false)
