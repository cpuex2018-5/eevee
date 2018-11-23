#include<stdio.h>
#include<iostream>
using namespace std;
inline unsigned int get_binaryf32(unsigned int n,int start,int end){
  n = n << (32-end);
  n = n >> (32-(end-start));
  return n;
}
inline unsigned long long get_binaryf64(unsigned long long n,int start,int end){
  n = n << (64-end);
  n = n >> (64-(end-start));
  return n;
}
//util.cpp
//unsigned int get_binary(unsigned int,int,int);
void floatToBinary(float);
//unsigned long long get_binary(unsigned long long,int,int);
void print_binary(unsigned int);
void print_binary(unsigned long long);
//fadd.cpp
float fadd(float,float);
//fmul.cpp
float fmul(float,float);
//fsub.cpp
float fsub(float,float);
//futil.cpp
float fpuabs(float);
unsigned int fisneg(float);
unsigned int fispos(float);
unsigned int fiszero(float);
unsigned int fless(float,float);
float fpuneg(float);
//fsqrt.cpp
float fsqrt(float);
//finv.cpp
float finv(float);
//fdiv.cpp
float fdiv(float,float);
