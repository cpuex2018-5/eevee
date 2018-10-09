#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include "./simulator.h"

#define MEM_SIZE 0x100000
#define STACK_POS 0xfffff
int debug_mode = 0;


int main(int argc,char **argv){

  FILE *fp;
  int opt;
  while((opt=getopt(argc,argv,"dh"))!=-1){
    switch(opt){
      case 'd':
        fprintf(stdout,"simulate in debug mode...\n");
        debug_mode = 1;
        break;
      case 'h':
        usage();
        exit(1);
        break;
    }
  }


  if((argc-optind)==0){
    usage();
    exit(1);
  }

  fp = fopen(argv[optind],"r");
  if(fp==NULL){
    fprintf(stderr,"fopen failed\n");
    fprintf(stderr,"can not open %s\n",argv[optind]);
    exit(1);
  }

  Simulator *sim = init(MEM_SIZE,STACK_POS);

  load(sim,fp);
  exec(sim);
  fclose(fp);
  destroy(sim);
  free(sim);
  sim=NULL;
  exit(0);
}
