let rec f a b =
  if a < b then
    let rec g c d =
      let rec h d e =
        a + b + c + d + e in
      h 2 3 in
    g 1 2
  else a + b in
print_int (f 3 4)
