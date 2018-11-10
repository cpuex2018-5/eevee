#include "./fsim.h"

const unsigned int inv_twice[] = {
  #include "inv_twice.csv"
};
const unsigned int inv_square[] = {
  #include "inv_square.csv"
};
float finv(float x){
  union {unsigned int f_i;float f_f;} u;
  u.f_f = x;

  unsigned int sx = get_binary(u.f_i,31,32); //1bit
  unsigned int ex = get_binary(u.f_i,23,31); //8bit
  unsigned int mx = get_binary(u.f_i,0,23);//23bit

  unsigned int twice = inv_twice[get_binary(u.f_i,12,23)]; //25bit
  unsigned int square = inv_square[get_binary(u.f_i,12,23)]; //25bit


  unsigned int manx = 0b1000000000000000000000000 + (mx<<1); //24bit
  unsigned long long b = get_binary((unsigned long long)manx * (unsigned long long)square,0,49); //49bit
  unsigned int m_inv = get_binary(twice - get_binary(b,24,49),0,25); //25bit 
  unsigned int state = get_binary(m_inv,24,25);
  unsigned int ey = state ? get_binary(254-ex,0,8) : get_binary(253-ex,0,8);
  unsigned int my = state ? get_binary(m_inv,1,24) : get_binary(m_inv,0,23);
  unsigned int y = (sx << 31) + (ey << 23) + my;
  u.f_i = y;
  return u.f_f;
}
