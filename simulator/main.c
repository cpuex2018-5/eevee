#include<stdio.h>
#include<stdlib.h>
#include "./sim.h"
#define MEM_SIZE 4194304

void usage(){
  fprintf(stderr,"Usage: eevee_sim <file>");
}

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

  Simulator *sim = init(MEM_SIZE);

  load(sim,fp);
  
  exec(sim);
  
  fclose(fp);
  
  exit(0);
}
