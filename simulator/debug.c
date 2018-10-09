#include "simulator.h"
#include <string.h>

void print_regs(Simulator *sim){
  for(int i=0;i<31;i++){
    fprintf(stdout,"Reg %d:   D:%d   H:%x\n",i,sim->registers[i],sim->registers[i]);
  }
}

void print_fregs(Simulator *sim){
  for(int i=0;i<31;i++){
    fprintf(stdout,"fReg %d:  D:%f\n",i,sim->f_registers[i]);
  }
}

void dump_memory(Simulator *sim,int start,int end){
  int len = end - start;
  for(int i=0;i<len;i++){
    if(i%16 == 15){
      printf("\n");
    }
    if(i%16 == 0){
      printf("%x :",(start+i));
    }
    printf("%x ",sim->data_memory[start+i]);
  }
}

int debug_parser(char *buffer){
  if(strcmp(buffer,"")==0){
    return 0;
  }
  else if(strncmp(buffer,"p r",3)==0){
    return 1;
  }
  else if(strncmp(buffer,"p fr",4)==0){
    return 2;
  }
  else if(strncmp(buffer,"p sp",4)==0){
    return 3;
  }
  else{
    return -1;
  }
}

void debug_exec(Simulator *sim,int command){
  if(command==1){
    print_regs(sim);
  }
  else if(command==2){
    print_fregs(sim);
  }
  else if(command==3){
    fprintf(stdout,"Stack pointer (registers[3]) at %x\n",sim->registers[3]);
  }
  else if(command==-1){
    fprintf(stderr,"Unknown debugger command\n");
  }
}
