#include<stdlib.h>
#include"./simulator.h"
#include<string.h>
#include<unistd.h>
#include<stdio.h>


Simulator *init(unsigned long m_size,unsigned long s_pos){
  int i = 0;
  Simulator *sim = malloc(sizeof(Simulator));

  sim -> pc = 0;

  for(i = 0;i<32;i++){
    sim -> registers[i] = 0;
  }
  sim -> registers[3] = s_pos;
  for(i=0;i<32;i++){
    sim -> f_registers[i] = 0.0;
  }

  sim -> text_memory = calloc(sizeof(m_size)/sizeof(char),sizeof(char));
  sim -> data_memory = calloc(sizeof(m_size)/sizeof(char),sizeof(char));
  //allocate the same size of memory for text and data section for now
  return sim;
}

void destroy(Simulator *sim){
  free(sim->text_memory);
  free(sim->data_memory);
  free(sim);
}

void load(Simulator *sim,FILE *fp){
  int size = fread(sim->text_memory,sizeof(char),MEM_SIZE+1,fp);
  if(size > MEM_SIZE){
    fprintf(stderr,"too large code\n");
  }
  sim -> text_size = size;
}


void exec(Simulator *sim){
  while(1){
    if(sim->pc>sim->text_size){
      break;
    }

  }

  fprintf(stdout,"simulation finished\n");
  // ganbaru
}
