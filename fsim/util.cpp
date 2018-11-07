#include "./fsim.h"

unsigned int get_binary(unsigned int n,int start,int end){
  int len = end - start;
  n = n << (32-end);
  n = n >> (32-len);
  return n;
}

