#include "./simulator.h"

unsigned int get_binary(unsigned int n,int start,int end){
  int len = end - start;
  n = n << start;
  n = n >> (32-len);
  return n;
}

void usage(){
  fprintf(stderr,"Usage: eevee_sim <file>\n");
}

void print_binary(int val){
  //for debug
  for(int i = 31;i>=0;i--){
    printf("%d ",((val>>i)&0x1));
  }
  printf("\n");
}
void print_instr(Simulator *sim){
  fprintf(stdout,"%x %x %x %x\n",(char)sim->text_memory[sim->pc],(char)sim->text_memory[sim->pc+1],(char)sim->text_memory[sim->pc+2],(char)sim->text_memory[sim->pc+3]);
}
