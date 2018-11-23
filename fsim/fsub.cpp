#include "./fsim.h"

float fsub(float x1_f,float x2_f){
  union{ unsigned int f_i;float f_f;} u;
  u.f_f = x2_f;

  unsigned int s2 = get_binaryf32(~u.f_i,31,32); //1bit
  unsigned int em2 = get_binaryf32(u.f_i,0,31); //31bit
  unsigned int arg = (s2<<31)+(em2);
  u.f_i = arg;
  return fadd(x1_f,u.f_f);
}

