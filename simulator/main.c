#include<stdio.h>
#include<stdlib.h>
#include "./simulator.h"
#define MEM_SIZE 0x100000
#define STACK_POS 0xfffff

int main(int argc,char **argv){

  FILE *fp;

  if(argc == 1 || argc >= 3){
    usage();
  }

  fp = fopen(argv[1],"r");
  if(fp==NULL){
    fprintf(stderr,"fopen failed\n");
    exit(1);
  }

  Simulator *sim = init(MEM_SIZE,STACK_POS);

  load(sim,fp);
  //exec(sim);
  fclose(fp);
  destroy(sim);
  free(sim);
  sim=NULL;
  exit(0);
}
