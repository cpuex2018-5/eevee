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
unsigned int feq(float x1,float x2){
  union {unsigned int f_i;float f_f;}u1,u2;
  u1.f_f = x1;
  u2.f_f = x2;
  unsigned int state1 = 0;
  unsigned int state2 = 0;
  if(get_binaryf32(u1.f_i,23,31)==0){
    state1 = 1;
  }
  else if(get_binaryf32(u1.f_i,31,32)==0){
    state1 = 2;
  }
  else{
    state1 = 0;
  }
  if(get_binaryf32(u2.f_i,23,31)==0){
    state2 = 1;
  }
  else if(get_binaryf32(u2.f_i,31,32)==0){
    state2 = 2;
  }
  else{
    state2 = 0;
  }
  unsigned int y = 0;
  if(state1 > state2){
    y = 0;
  }
  else if(state2 > state1){
    y = 0;
  }
  else if(state1 == 1){
    y = 1;
  }
  else{
    y = (get_binaryf32(u1.f_i,0,31)==get_binaryf32(u2.f_i,0,31));
  }
  return y;
}

unsigned int fle(float x1,float x2){
  union {unsigned int f_i;float f_f;}u1,u2;
  u1.f_f = x1;
  u2.f_f = x2;
  unsigned int state1 = 0;
  unsigned int state2 = 0;
  if(get_binaryf32(u1.f_i,23,31)==0){
    state1 = 1;
  }
  else if(get_binaryf32(u1.f_i,31,32)==0){
    state1 = 2;
  }
  else{
    state1 = 0;
  }
  if(get_binaryf32(u2.f_i,23,31)==0){
    state2 = 1;
  }
  else if(get_binaryf32(u2.f_i,31,32)==0){
    state2 = 2;
  }
  else{
    state2 = 0;
  }
  unsigned int y = 0;
  if(state1 > state2){
    y = 0;
  }
  else if(state2 > state1){
    y = 1;
  }
  else if(state1 == 2){
    y = (get_binaryf32(u1.f_i,0,31) <= get_binaryf32(u2.f_i,0,31));
  }
  else if(state1 == 1){
    y = 1;
  }
  else{
    y = (get_binaryf32(u2.f_i,0,31) <= get_binaryf32(u1.f_i,0,31));
  }
  return y;
}

unsigned int flt(float x1,float x2){
  union {unsigned int f_i;float f_f;}u1,u2;
  u1.f_f = x1;
  u2.f_f = x2;
  unsigned int state1 = 0; //2bit
  unsigned int state2 = 0; //2bit
  if(get_binaryf32(u1.f_i,23,31)==0){
    state1 = 1;
  }
  else if(get_binaryf32(u1.f_i,31,32)==0){
    state1 = 2;
  }
  else{
    state1 = 0;
  }

  if(get_binaryf32(u2.f_i,23,31)==0){
    state2 = 1;
  }
  else if(get_binaryf32(u2.f_i,31,32)==0){
    state2 = 2;
  }
  else{
    state2 = 0;
  }
  unsigned int y = 0;
  if(state1 > state2){
    y = 0;
  }
  else if(state2 > state1){
    y = 1;
  }
  else if(state1 == 2){
    y = (get_binaryf32(u1.f_i,0,31) < get_binaryf32(u2.f_i,0,31));
  }
  else if(state1 == 1){
    y = 0;
  }
  else{
    y = (get_binaryf32(u2.f_i,0,30) < get_binaryf32(u1.f_i,0,31));
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
