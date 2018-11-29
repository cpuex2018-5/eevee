#include "./fsim.h"

float epsilon = pow(2,-126);
float fpu_check = pow(2,-23);

float fadd(float x1_f,float x2_f){
  union{ unsigned int f_i;float f_f;} u1,u2;
  u1.f_f = x1_f;
  u2.f_f = x2_f;
  /*
   *
   * 変数の四則演算orシフトorビット演算をしたあとは既定のbit数を超えている場合があるので明らかにそうでない場合以外はget_binaryで適宜切り出す
   * 範囲をよく計算すればいらないかもしれないが安全のため
   */

  unsigned int s1 = get_binaryf32(u1.f_i,31,32); //1bit
  unsigned int s2 = get_binaryf32(u2.f_i,31,32); //1bit
  unsigned int e1 = get_binaryf32(u1.f_i,23,31); //8bit
  unsigned int e2 = get_binaryf32(u2.f_i,23,31); //8bit
  unsigned int m1 = get_binaryf32(u1.f_i,0,23); //23bit
  unsigned int m2 = get_binaryf32(u2.f_i,0,23); //23bit
  
  
  unsigned int state1 = (e1==0) ? 1:0;
  unsigned int state2 = (e2==0) ? 1:0;
  unsigned int m1a = (e1==0) ? 0 : ((1<<23)+m1); //25bit
  unsigned int m2a = (e2==0) ? 0 : ((1<<23)+m2); //25bit
  unsigned int e2_inv = get_binaryf32(~e2,0,8);
  unsigned int te = get_binaryf32((0b100000000+e1)+(0b100000000+e2_inv),0,9); //9bitなので計算した後切り出す
  unsigned int ce = get_binaryf32(te,8,9); //1bit
  unsigned int tde = ce ? get_binaryf32(te+1,0,9) : get_binaryf32(~te,0,9); //9bit
  unsigned int de = (get_binaryf32(tde,0,8)>31) ? 0b11111 : get_binaryf32(tde,0,5); //5bit
  unsigned int sel = (de==0) ? ((m1a > m2a)? 0 : 1) :get_binaryf32(~ce,0,1); //1bit

  unsigned int same_abs = ((de==0) && (m1a==m2a)) ? 1 : 0;
  
  unsigned int ms = (sel==0) ? m1a : m2a; //25bit
  unsigned int mi = (sel==0) ? m2a : m1a; //25bit
  unsigned int es = (sel==0) ? e1 : e2; //8bit
  unsigned int ss = (sel==0) ? s1 : s2; //1bit

  unsigned long long mie = get_binaryf64((((unsigned long long)mi)<<31),0,56); //56bit
  unsigned long long mia = get_binaryf64((mie>>de),0,56); //56bit

  unsigned int mye = (s1==s2) ? get_binaryf32(((ms<<2)+get_binaryf64(mia,29,56)),0,27) : get_binaryf32(((ms<<2)-get_binaryf64(mia,29,56)),0,27); //27bit

  unsigned int myd = (get_binaryf32(mye,26,27) == 0) ? mye : (mye>>1); //27bit
  unsigned int eyd = (get_binaryf32(mye,26,27) == 0) ? es : get_binaryf32(es+1,0,8); //8bit
  unsigned int se = 26;
  for(int i = 25;i>=0;i--){
    if((myd & (1<<i)) == (unsigned int)(1<<i)){
      se = (25-i);
      break;
    }
  } // 5bit

  unsigned int eyf = get_binaryf32(get_binaryf32(eyd,0,8) - get_binaryf32(se,0,5),0,9); //9bit
  unsigned int eyr = (eyd > se) ? get_binaryf32(eyf,0,8) : 0;
  unsigned int ey = (se==26) ? 0 : eyr;
  
  unsigned int myf = (eyd > se) ? get_binaryf32((myd << se),0,27) : 0;
  unsigned int my = get_binaryf32(myf,2,25);
  unsigned int sy = same_abs ? (s1 && s2) : ss;

  unsigned int tmp = (sy<<31) + (ey << 23) + my;
  unsigned int y = state1 ? u2.f_i : (state2 ? u1.f_i : tmp);
  u1.f_i = y;

  float true_value = x1_f + x2_f;
  if(fabs(u1.f_f - true_value) >= std::max({fabs(x1_f)*fpu_check,fabs(x2_f)*fpu_check,fabs(true_value)*fpu_check,epsilon})){
    fprintf(stderr,"invalid result in fadd\n");
  }
  return u1.f_f;
}

