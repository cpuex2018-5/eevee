#include "./fsim.h"

unsigned int fabs(float x){
  union {unsigned int f_i;float f_f;} u;
  u.f_f = x;
  unsigned int y;
  y = 0b10000000000000000000000000000000 + get_binary(u.f_i,0,31);
  return y;
}
