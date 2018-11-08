#include<iostream>
#include "./fsim.h"
using namespace std;

unsigned int fadd(unsigned char *ovf,float x1_f,float x2_f){
  union{ unsigned int f_i;float f_f;} u1,u2;
  u1.f_f = x1_f;
  u2.f_f = x2_f;

  /*
   *
   * 変数の四則演算orシフトをしたあとは既定のbit数を超えている場合があるのでget_binaryで適宜切り出す
   */

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
  unsigned int te = get_binary((0b100000000+e1a)+(0b100000000+e2ai),0,9); //9bitなので計算した後切り出す
  unsigned int ce = ~get_binary(te,8,9); //1bit

  unsigned int te2 = get_binary((te+0b0000000001),0,9); //9bitなので計算した後切り出す
  unsigned int te3 = ~te; //9bit
  unsigned int tde = (ce==0) ? get_binary(te2,0,8) : get_binary(te3,0,8); //9bit

  unsigned int de = (tde>31) ? 0b11111 : get_binary(tde,0,5); //5bit

  unsigned int sel = (de==0) ? ((m1a > m2a)? 0 : 1) :ce; //1bit

  unsigned int ms = (sel==0) ? m1a : m2a; //25bit
  unsigned int mi = (sel==0) ? m2a : m1a; //25bit
  unsigned int es = (sel==0) ? e1a : e2a; //8bit
  unsigned int ei = (sel==0) ? e2a : e1a; //8bit
  unsigned int ss = (sel==0) ? s1 : s2; //1bit

  unsigned long long mie = get_binary((mi<<31),0,56); //56bit
  unsigned long long mia = get_binary((mie>>de),0,56); //56bit

  unsigned int tstck = 0; //1bit
  unsigned int tmp = 0b1;
  for(int i = 0;i<27;i++){
    tstck = tstck | (mia & tmp); //tstck =|(mia[28:0])の計算
    tmp << 1;
  }

  unsigned int mye = (s1==s2) ? (ms<<2)+get_binary(mia,29,56) : (ms<<2)-get_binary(mia,29,56); //27bit



  return 0;
}

