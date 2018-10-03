unsigned int get_binary(unsigned int n,int start,int end){
  int len = end - start;
  n = n << start;
  n = n >> (32-len);
  return n;
}
