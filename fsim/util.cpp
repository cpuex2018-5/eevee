#include "./fsim.h"

unsigned int get_binary(unsigned int n,int start,int end){
  int len = end - start;
  n = n << (32-end);
  n = n >> (32-len);
  return n;
}

unsigned long long get_binary(unsigned long long n,int start,int end){
  int len = end - start;
  n = n << (64-end);
  n = n >> (64-len);
  return n;
}

void floatToBinary(float f){
  union {float f; unsigned int i;}u ;
  u.f = f;
  for(int j = 31;j>=0;j--){
    printf("%d ",((u.i>>j)&0x1));
  }
  printf("\n");
}

void print_binary(unsigned int val){
  //for debug
  for(int i = 31;i>=0;i--){
    printf("%d ",((val>>i)&0x1));
  }
  printf("\n");
}

void print_binary(unsigned long long val){
  for(int i=63;i>=0;i--){
    printf("%llu ",((val>>i)&0x1));
  }
  printf("\n");
}
