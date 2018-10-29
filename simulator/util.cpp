#include "./simulator.h"

unsigned int get_binary(unsigned int n,int start,int end){
  int len = end - start;
  n = n << (32-end);
  n = n >> (32-len);
  return n;
}

void usage(){
  fprintf(stderr,"Usage: ./eevee_sim <file> [-d] [-h]\n");
}

void print_binary(int val){
  //for debug
  for(int i = 31;i>=0;i--){
    printf("%d ",((val>>i)&0x1));
  }
  printf("\n");
}
void print_instr(Simulator *sim){
  fprintf(stdout,"%02x %02x %02x %02x\n",(unsigned char)sim->text_memory[sim->pc],(unsigned char)sim->text_memory[sim->pc+1],(unsigned char)sim->text_memory[sim->pc+2],(unsigned char)sim->text_memory[sim->pc+3]);
}

void disas(unsigned int inst){
  fprintf(stdout,"next instruction: %02x %02x %02x %02x\n",(unsigned char)(inst >> 24),(unsigned char)(inst >> 16),(unsigned char)(inst >> 8),(unsigned char)(inst));
}
