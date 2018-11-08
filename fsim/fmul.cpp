#include "./fsim.h"

unsigned int fmul(float x1,float x2){
  union {unsigned int f_i;float f_f;} u1,u2;
  u1.f_f = x1;
  u2.f_f = x2;

  unsigned int s1 = get_binary(u1.f_i,31,32); //1bit
  unsigned int s2 = get_binary(u2.f_i,31,32); //1bit
  unsigned int e1 = get_binary(u1.f_i,23,31); //8bit
  unsigned int e2 = get_binary(u2.f_i,23,31); //8bit
  unsigned int m1 = get_binary(u1.f_i,0,23); //23bit
  unsigned int m2 = get_binary(u2.f_i,0,23); //23bit

  unsigned int zero1 = (e1 == 0) || (e2 == 0); //1bit
  unsigned int sy = s1 ^ s2;

  unsigned eadd = get_binary(e1+e2,0,10); //10bit
  unsigned int j1 = get_binary(eadd,7,8) | get_binary(eadd,8,9) | get_binary(eadd,9,10); //1bit
  unsigned int j2 = 0; //1bit
  unsigned int tmp = 0b1;
  for(int i=0;i<7;i++){
    j2 = j2 & (eadd & tmp);
    tmp = tmp << 1;
  }

  unsigned int eout = (j1 || j2) ? get_binary((eadd-127),0,10):0;
  unsigned int zero2 = (j1 == 0) && (j2 == 0);

  unsigned int zero_flag = zero1 || zero2;
  unsigned int m1a = (1<<23)+m1; //25bit
  unsigned int m2a = (1<<23)+m2; //25bit

  unsigned long long mmul = get_binary(m1a*m2a,0,48);
  unsigned int rise = get_binary(mmul,47,48);

  unsigned int mout = rise ? get_binary(mmul,24,47) : get_binary(mmul,23,46);

  unsigned int eouti = get_binary(get_binary(eout,0,8)+1,0,8); //8bit
  unsigned int ey = zero_flag ? 0 : (rise ? eouti: get_binary(eout,0,8));

  unsigned int my = zero_flag ? 0 : mout;

  unsigned int y = (sy<<31) + (ey<<23) + my;
  return y;
}
