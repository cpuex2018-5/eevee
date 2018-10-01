#include<stdlib.h>
#include"./sim.h"
#include<string.h>
#include<unistd.h>
#include<stdio.h>


Simulator *init(unsigned long m_size){
  int i = 0;
  Simulator *sim = malloc(sizeof(Simulator));

  sim -> pc = 0;

  for(i = 0;i<32;i++){
    sim -> registers[i] = 0;
  }

  sim -> memory = calloc(sizeof(m_size)/sizeof(char),sizeof(char));

  return sim;
}

void load(Simulator *sim,FILE *fp){
  
}

void exec(Simulator *sim){
  // ganbaru
}
