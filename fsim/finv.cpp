#include "./fsim.h"

const unsigned int inv_twice[] = {
  #include "inv_twice.csv"
};
const unsigned int inv_square[] = {
  #include "inv_square.csv"
};
extern float epsilon;
extern float fpu_check;
float finv(float x){
  union {unsigned int f_i;float f_f;} u;
  u.f_f = x;

  unsigned int sx = get_binaryf32(u.f_i,31,32); //1bit
  unsigned int ex = get_binaryf32(u.f_i,23,31); //8bit
  unsigned int mx = get_binaryf32(u.f_i,0,23);//23bit

  unsigned int twice = inv_twice[get_binaryf32(u.f_i,12,23)]; //25bit
  unsigned int square = inv_square[get_binaryf32(u.f_i,12,23)]; //25bit


  unsigned int manx = 0b1000000000000000000000000 + (mx<<1); //24bit
  unsigned long long b = get_binaryf64((unsigned long long)manx * (unsigned long long)square,0,49); //49bit
  unsigned int m_inv = get_binaryf32(twice - get_binaryf64(b,24,49),0,25); //25bit 
  unsigned int state = get_binaryf32(m_inv,24,25);
  unsigned int ey = state ? get_binaryf32(254-ex,0,8) : get_binaryf32(253-ex,0,8);
  unsigned int my = state ? get_binaryf32(m_inv,1,24) : get_binaryf32(m_inv,0,23);
  unsigned int y = (sx << 31) + (ey << 23) + my;
  u.f_i = y;
  float true_value = 1/x;
  if(fabs(u.f_f - true_value)>=std::max({fabs(true_value)*fpu_check*4,epsilon})){
    fprintf(stderr,"invalid result in finv\n");
  }
  return u.f_f;
}
