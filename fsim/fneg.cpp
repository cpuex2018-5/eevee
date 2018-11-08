#include "./fsim.h"

unsigned int fless(float x){
  union {unsigned int f_i;float f_f;} u;
  u.f_f = x;
  unsigned int s = ~get_binary(u.f_i,31,32);
  unsigned int y = s<<31+get_binary(u.f_i,0,31);
  return y;
}
