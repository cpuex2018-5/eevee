#include <stdio.h>
#include <stdint.h>
#include <caml/mlvalues.h>
#include <caml/alloc.h>

typedef union {
  uint32_t i;
  float f;
} flt;

value castToInt(value v) {
    flt s;
    s.f = (float)Double_val(v);
    return copy_int32(s.i);
}
