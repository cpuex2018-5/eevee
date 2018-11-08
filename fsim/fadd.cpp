#include<iostream>
#include "./fsim.h"
using namespace std;

unsigned int fadd(unsigned char *ovf,float x1_f,float x2_f){
  union{ unsigned int f_i;float f_f;} u1,u2;
  u1.f_f = x1_f;
  u2.f_f = x2_f;

  /*
   *
   * 変数の四則演算orシフトをしたあとは既定のbit数を超えている場合があるので明らかにそうでない場合以外はget_binaryで適宜切り出す
   * 範囲をよく計算すればいらないかもしれないが安全のため
   */

  unsigned int s1 = get_binary(u1.f_i,31,32); //1bit
  unsigned int s2 = get_binary(u2.f_i,31,32); //1bit
  unsigned int e1 = get_binary(u1.f_i,23,31); //8bit
  unsigned int e2 = get_binary(u2.f_i,23,31); //8bit
  unsigned int m1 = get_binary(u1.f_i,0,23); //23bit
  unsigned int m2 = get_binary(u1.f_i,0,23); //23bit

  unsigned int m1a = (e1==0) ? 0 : ((1<<23)+m1); //25bit
  unsigned int m2a = (e2==0) ? 0 : ((1<<23)+m2); //25bit

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
  //unsigned int ei = (sel==0) ? e2a : e1a; //8bit
  unsigned int ss = (sel==0) ? s1 : s2; //1bit

  unsigned long long mie = get_binary((mi<<31),0,56); //56bit
  unsigned long long mia = get_binary((mie>>de),0,56); //56bit

  unsigned int tstck = 0; //1bit
  unsigned int tmp = 0b1;
  for(int i = 0;i<29;i++){
    tstck = tstck | (mia & tmp); //tstck =|(mia[28:0])の計算
    tmp = tmp << 1;
  }

  unsigned int mye = (s1==s2) ? get_binary(((ms<<2)+get_binary(mia,29,56)),0,27) : get_binary(((ms<<2)-get_binary(mia,29,56)),0,27); //27bit

  unsigned int esi = get_binary(es+1,0,8); //8bit

  unsigned int flag1 = (get_binary(mye,26,27) == 1 && esi == 255) ? 1:0;//1bit
  unsigned int myd = (get_binary(mye,26,27) == 0) ? mye : ((esi == 255) ? 0b010000000000000000000000000 : mye >> 1); //27bit
  unsigned int eyd = (get_binary(mye,26,27) == 0) ? es : ((esi==255) ? 255 : esi) ; //8bit
  unsigned int stck = (get_binary(mye,26,27) == 0) ? tstck : (tstck || get_binary(mye,0,1)); 

  unsigned int se = 0;
  for(int i = 25;i>=0;i--){
    if((myd & (1<<i)) == (unsigned int)(1<<i)){
      se = (25-i);
      break;
    }
  } // 5bit

  unsigned int eyf = (0b000000000 + get_binary(eyd,0,8)) - (0b000000000 + get_binary(se,0,5));
  unsigned int myf = 0;
  if(((0b000000000 + get_binary(eyd,0,8)) > (0b000000000 + get_binary(se,0,5)))){
    myf = get_binary((myd<<se),0,27); //28bit
  }
  else{
    myf = get_binary(myd<<(get_binary((eyd & 0b11111) - 1,0,5)),0,27);
  }

  unsigned int eyr = 0;
  if(((0b000000000 + get_binary(eyd,0,8)) > (0b000000000 + get_binary(se,0,5)))){
    eyr = get_binary(eyf,0,8); //8bit
  }
  else{
    eyr = 0;
  }

  unsigned int a = (myf && 0b10 == 0b10 && myf && 0b1 == 0 && stck == 0 && myf && 0b100 == 0b100) ? 1:0;
  unsigned int b = (myf && 0b10 == 0b10 && myf && 0b1 == 0 && s1 == s2 && stck == 1) ? 1:0;
  unsigned int c = (myf && 0b10 == 0b10 && myf && 0b1 == 1) ? 1:0;
  unsigned int d = (a||b||c) ? 1:0;

  unsigned int myr = (d==1) ? get_binary((get_binary(myf,2,27) + 0b1),0,25) : get_binary(myf,2,27); //25bit
  unsigned int eyri = get_binary(eyr+1,0,8); //8bit

  unsigned int fack = 0;
  tmp = 0b1;
  for(int i = 0;i<24;i++){
    fack = fack | (myr & tmp);
    tmp =tmp << 1; //1bit
  }
  unsigned int ey = (get_binary(myr,24,25)==1) ? eyri : ((fack==0)?0:eyr); //8bit
  unsigned int my = (get_binary(myr,24,25)==1) ? 0 : ((fack==0)? 0 :get_binary(myr,0,23)); //23bit

  unsigned int flag2 = ((get_binary(myr,24,25) == 1 && eyri == 255) || flag1==1) ? 1:0; //1bit

  unsigned int sy = (ey==0 && my==0) ? s1&&s2 : ss; //1bit

  unsigned int nzm1 = 0;
  unsigned int nzm2 = 0;
  tmp = 0b1;
  for(int i=0;i<23;i++){
    nzm1 = nzm1 | (m1 & tmp); //1bit
    nzm2 = nzm2 | (m2 & tmp); //1bit
    tmp = tmp<< 1;
  }

  unsigned int y;

  if(e1==255 && e2 != 255){
    y = (s1<<31)+(0b11111111<<23)+(nzm1<<22)+get_binary(m1,0,22);
  }
  else if(e1 == 255 && e1 != 255){
    y = (s2<<31)+(0b11111111<<23)+(nzm2<<22)+get_binary(m2,0,22);
  }
  else if(e1 == 255 && e2 == 255 && nzm2){
    y = (s2<<31)+(0b11111111<<23)+(1<<22)+get_binary(m2,0,22);
  }
  else if(e1 == 255 && e2 == 255 && nzm1){
    y = (s1<<31)+(0b11111111<<23)+(1<<22)+get_binary(m1,0,22);
  }
  else if(e1 == 255 && e2 == 255 && s1==s2){
    y = (s1<<31)+(0b11111111<<23);
  }
  else if(e1 == 255 && e2 == 255){
    y = (s1<<31)+(0b11111111<<23)+(1<<22);
  }
  else{
    y = (sy<<31) + (get_binary(ey,0,8)<<23)+get_binary(my,0,23);
  }
  *ovf = (e1<255 && e2 <255 && flag2 == 1) ? 1:0;

  return y;
}

