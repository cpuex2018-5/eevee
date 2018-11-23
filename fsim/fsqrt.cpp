#include "./fsim.h"

const unsigned int sqrt_three[] = {
  #include "sqrt_three.csv"
};
const unsigned int sqrt_cube[] = {
  #include "sqrt_cube.csv"
};
float fsqrt(float x){
  union {unsigned int f_i;float f_f;} u;
  u.f_f = x;

  unsigned int sx = get_binaryf32(u.f_i,31,32);
  unsigned int ex = get_binaryf32(u.f_i,23,31);
  unsigned int mx = get_binaryf32(u.f_i,0,23);//23bit

  unsigned int three = sqrt_three[get_binaryf32(u.f_i,13,24)];
  unsigned int cube = sqrt_cube[get_binaryf32(u.f_i,13,24)];
  unsigned int state = get_binaryf32(u.f_i,23,24);


  unsigned int manx = 0b00100000000000000000000000 + mx;
  unsigned long long b = get_binaryf64((unsigned long long)manx * (unsigned long long)cube,0,51);
  unsigned int m_gap = state ? get_binaryf32(three-(unsigned int)get_binaryf64(b,25,51),0,26) : get_binaryf32(three-(unsigned int)get_binaryf64(b,24,50),0,26);
  
  unsigned int my = get_binaryf32(m_gap,1,24);
  unsigned int eodd = 255 - get_binaryf32(ex,0,8); // no need to put into get_binary()
  unsigned int ey = state ? get_binaryf32(62+get_binaryf32(eodd,1,8),0,8) : get_binaryf32(190-get_binaryf32(ex,1,8),0,8);
  unsigned int x_sqrt_inv = (sx<<31)+(ey<<23)+my;
  u.f_i = x_sqrt_inv;
  return fmul(x,u.f_f);
}
