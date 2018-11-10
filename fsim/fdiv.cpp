#include "./fsim.h"

float fdiv(float x1,float x2){
  float x2_inv = finv(x2);
  return fmul(x1,x2_inv);
}
