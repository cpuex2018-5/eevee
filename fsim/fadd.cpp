#include<iostream>
#include "./fsim.h"
using namespace std;

unsigned int fadd(unsigned char *ovf,float x1_f,float x2_f){
  union{ unsigned int f_i;float f_f;} u1,u2;
  u1.f_f = x1_f;
  u2.f_f = x2_f;

  unsigned int s1 = get_binary(u1.f_i,31,32); //1bit
  unsigned int s2 = get_binary(u2.f_i,31,32); //1bit
  unsigned int e1 = get_binary(u1.f_i,22,31); //8bit
  unsigned int e2 = get_binary(u2.f_i,22,31); //8bit
  unsigned int m1 = get_binary(u1.f_i,0,22); //23bit
  unsigned int m2 = get_binary(u1.f_i,0,22); //23bit

  unsigned int m1a = (e1==0) ? 0 : (1<<23+e1); //25bit
  unsigned int m2a = (e2==0) ? 0 : (1<<23+e2); //25bit

  unsigned int e1a = (e1==0) ? 1 : e1; //8bit
  unsigned int e2a = (e2==0) ? 1 : e2; //8bit

  unsigned int e2ai = ~e2a; //8bit


  return 0;
}

