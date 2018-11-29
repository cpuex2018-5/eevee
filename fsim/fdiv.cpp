#include "./fsim.h"
extern float epsilon;
extern float fpu_check;
float fdiv(float x1,float x2){
  float x2_inv = finv(x2);
  float result = fmul(x1,x2_inv);
  float true_value = x1/x2;
  if(fabs(result-true_value) >= std::max(fabs(true_value)*fpu_check*8,epsilon)){
    fprintf(stderr,"invalid result in fdiv\n");
  }
  return result;
}
