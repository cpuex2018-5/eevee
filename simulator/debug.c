#include "simulator.h"
#include <string.h>

void print_regs(Simulator *sim){
  for(int i=0;i<31;i++){
    fprintf(stdout,"Reg %02d:   D:%8d   H:%8x\n",i,sim->registers[i],sim->registers[i]);
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
  else if(strncmp(buffer,"d",1)==0){
    return 4;
  }
  else{
    return -1;
  }
}

int debug_exec(Simulator *sim,int command){
  if(command==1){
    print_regs(sim);
    return 1;
  }
  else if(command==2){
    print_fregs(sim);
    return 1;
  }
  else if(command==3){
    fprintf(stdout,"Stack pointer (registers[3]) at %x\n",sim->registers[3]);
    return 1;
  }
  else if(command==4){
    dump_memory(sim,0,100);
    return 1;
  }
  else if(command==-1){
    fprintf(stderr,"Unknown debugger command\n");
    return 1;
  }
  return 0;
}
