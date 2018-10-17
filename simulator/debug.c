#include "simulator.h"
#include <string.h>
#include <stdlib.h>

extern const char *Regs[];
void print_regs(Simulator *sim){
  for(int i=0;i<32;i++){
    fprintf(stdout,"Reg %02d(%4s):   D:%8d   H:%8x\n",i,Regs[i],sim->registers[i],sim->registers[i]);
  }
}

void print_fregs(Simulator *sim){
  for(int i=0;i<32;i++){
    fprintf(stdout,"fReg %02d:  D:%f\n",i,sim->f_registers[i]);
  }
}

void dump_memory(Simulator *sim,int start,int end){
  int len = end - start;
  for(int i=0;i<len;i++){
    if(i%16 == 0){
      fprintf(stdout,"%5x :",(start+i));
    }
    printf("%02x ",(unsigned char)sim->data_memory[start+i]);
    if(i%16 == 15){
      fprintf(stdout,"\n");
    }
  }
  fprintf(stdout,"\n");
  fflush(stdout);
}

int debug_exec(Simulator *sim,char *buffer){
  if(strcmp(buffer,"")==0){
    return 1;
  }
  else if(strncmp(buffer,"p r",3)==0){
    print_regs(sim);
    return 0;
  }
  else if(strncmp(buffer,"p fr",4)==0){
    print_fregs(sim);
    return 0;
  }
  else if(strncmp(buffer,"d",1)==0){
    char *start;
    char *end;
    strtok(buffer," ");
    start = strtok(NULL," ");
    end =strtok(NULL," ");
    dump_memory(sim,atoi(start),atoi(end));
    return 0;
  }
  else{
    fprintf(stderr,"Unknown debugger command\n");
    return -1;
  }
}

