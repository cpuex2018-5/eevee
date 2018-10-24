let rec f a b =
  let rec g c d =
    let rec h d e =
      a + b + c + d + e in
    h 2 3 in
  g 1 2 in
print_int (f 3 4)
