#include "./fsim.h"

float fpuabs(float x){
  union {unsigned int f_i;float f_f;} u;
  u.f_f = x;
  unsigned int y;
  y = get_binaryf32(u.f_i,0,31);
  u.f_i = y;
  return u.f_f;
}

unsigned int fisneg(float x){
  union {unsigned int f_i;float f_f;} u;
  u.f_f = x;
  unsigned int y = (get_binaryf32(u.f_i,31,32)==0b1 && (get_binaryf32(u.f_i,23,31)!=0b00000000)) ? 1:0;
  return y;
}

unsigned int fispos(float x){
  union {unsigned int f_i;float f_f;} u;
  u.f_f = x;
  unsigned int y = (get_binaryf32(u.f_i,31,32)==0b0 && (get_binaryf32(u.f_i,23,31)!=0b00000000)) ? 1:0;
  return y;
}

unsigned int fiszero(float x){
  union {unsigned int f_i;float f_f;} u;
  u.f_f = x;
  unsigned int y = (get_binaryf32(u.f_i,23,31)==0b00000000) ? 1:0;
  return y;
}

unsigned int fless(float x1,float x2){
  union {unsigned int f_i;float f_f;} u1,u2;
  u1.f_f = x1;
  u2.f_f = x2;

  unsigned int s1 = get_binaryf32(u1.f_i,31,32); //1bit
  unsigned int s2 = get_binaryf32(u2.f_i,31,32); //1bit

  unsigned int state = (s1==1 && s2 == 0) ? 0b00 : (s1 == 0 && s2 == 1) ? 0b01 :
                       (s1==0 && s2 == 0) ? 0b10 : 0b11;

  unsigned int y = 0;
  if(state == 0b00){
    y = 1;
  }
  else if(state == 0b01){
    y = 0;
  }
  else if(state == 0b10){
    y = (get_binaryf32(u1.f_i,0,31) < get_binaryf32(u2.f_i,0,31));
  }
  else{
    y = (get_binaryf32(u2.f_i,0,31) < get_binaryf32(u1.f_i,0,31));
  }
  return y;
}

float fpuneg(float x){
  union {unsigned int f_i;float f_f;} u;
  u.f_f = x;
  unsigned int s = ~get_binaryf32(u.f_i,31,32);
  unsigned int y = (s<<31)+get_binaryf32(u.f_i,0,31);
  u.f_i = y;
  return u.f_f;
}
