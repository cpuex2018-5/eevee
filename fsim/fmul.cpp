#include "./fsim.h"
float fmul(float x1,float x2){
  union {unsigned int f_i;float f_f;} u1,u2;
  u1.f_f = x1;
  u2.f_f = x2;
  unsigned int s1 = get_binaryf32(u1.f_i,31,32); //1bit
  unsigned int s2 = get_binaryf32(u2.f_i,31,32); //1bit
  unsigned int e1 = get_binaryf32(u1.f_i,23,31); //8bit
  unsigned int e2 = get_binaryf32(u2.f_i,23,31); //8bit
  unsigned int m1 = get_binaryf32(u1.f_i,0,23); //23bit
  unsigned int m2 = get_binaryf32(u2.f_i,0,23); //23bit

  unsigned int zero1 = (e1 == 0) || (e2 == 0); //1bit
  unsigned int sy = s1 ^ s2;

  unsigned eadd = get_binaryf32(e1+e2,0,10); //10bit
  unsigned int j1 = get_binaryf32(eadd,7,8) | get_binaryf32(eadd,8,9) | get_binaryf32(eadd,9,10); //1bit
  unsigned int j2 = get_binaryf32(eadd,0,1) & get_binaryf32(eadd,1,2) & get_binaryf32(eadd,2,3) & get_binaryf32(eadd,3,4) & get_binaryf32(eadd,4,5) & get_binaryf32(eadd,5,6) & get_binaryf32(eadd,6,7); //1bit

  unsigned int eout = (j1 || j2) ? get_binaryf32((eadd-127),0,10):0; //10bit
  unsigned int zero2 = (j1 == 0) && (j2 == 0);

  unsigned int zero_flag = zero1 || zero2;
  unsigned int m1a = (1<<23)+m1; //25bit
  unsigned int m2a = (1<<23)+m2; //25bit
 
  unsigned long long mmul = get_binaryf64((unsigned long long)m1a*(unsigned long long)m2a,0,49); //49bit
  unsigned int rise = (unsigned int)get_binaryf64(mmul,47,48);

  unsigned int mout = rise ? (unsigned int)get_binaryf64(mmul,24,47) : (unsigned int)get_binaryf64(mmul,23,46);

  unsigned int eouti = get_binaryf32(get_binaryf32(eout,0,8)+1,0,8); //8bit
  unsigned int ey = zero_flag ? 0 : (rise ? eouti: get_binaryf32(eout,0,8));

  unsigned int my = zero_flag ? 0 : mout;

  unsigned int y = (sy<<31) + (ey<<23) + my;
  u1.f_i = y;
  return u1.f_f;
}
