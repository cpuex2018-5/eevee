#include "./fsim.h"

unsigned int fisneg(float x){
  union {unsigned int f_i;float f_f;} u;
  u.f_f = x;
  unsigned int y = (get_binary(u.f_i,31,32)==0b1 && (get_binary(u.f_i,23,31)!=0b00000000)) ? 1:0;
  return y;
}
