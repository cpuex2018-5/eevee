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
  for(i = 0;i<32;i++){
    sim -> f_registers[i] = 0.0;
  }
  
  sim -> text_memory = malloc(sizeof(char)*MEM_SIZE);
  memset(sim->text_memory,0,sizeof(char)*MEM_SIZE);
  sim -> data_memory = malloc(sizeof(char)*MEM_SIZE);
  memset(sim->data_memory,0,sizeof(char)*MEM_SIZE);
  fprintf(stdout,"allocated %d bytes memory for text and data segment,which lies at %p and %p respectively\n"
          ,MEM_SIZE,sim->text_memory,sim->data_memory);
  //allocate the same size of memory for text and data section for now
  return sim;
}

void destroy(Simulator *sim){

  free(sim->text_memory);
  sim -> text_memory = NULL;
  free(sim->data_memory);
  sim -> data_memory = NULL;
}

void load(Simulator *sim,FILE *fp){
  unsigned int size = fread(sim->text_memory,sizeof(char),MEM_SIZE,fp);
  fprintf(stdout,"code size: %d bytes\n",size);
  if(size == MEM_SIZE){
    fprintf(stderr,"it is possible that simulator could not load full code\n");
  }
  sim -> text_size = size;
}


void exec(Simulator *sim){
  while(1){
    if(sim->pc>sim->text_size){
      break;
    }
    Op *op = malloc(sizeof(Op));
    memset(&op,0,sizeof(Op));
    unsigned int inst = sim->text_memory[sim->pc];
    unsigned int opcode = get_binary(inst,0,6);
  
    switch(opcode){
      case 0b0110111:
        //lui
        decode_u(inst,op);


        break;
      case 0b0010111:
        //auipc
        decode_u(inst,op);


        break;
      case 0b1101111:
       //jal
        decode_j(inst,op);


        break;
      case 0b1100111:
        //jalr
        decode_i(inst,op);


        break;
      case 0b1100011:
        //beq,bne,blt,bge,bltu,bgeu
        decode_b(inst,op);


        break;
      case 0b0000011:
       //lb,lh,lw,lbu,lhu
       decode_i(inst,op);


        break;
      case 0b0100011:
        //sb,sh,sw
        decode_s(inst,op);


        break;
      case 0b0010011:
        //addi,slti,sltiu,xori,ori,andi
        //slli,srli,srai
        decode_i(inst,op);


        break;
      case 0b0110011:
       //add,sub,sll,slt,sltu,xor,srl,sla,or,and
        decode_r(inst,op);


        break;
      default:
        fprintf(stderr,"unknown instruction\n");
    }
    sim->pc = sim->pc + 4;
  }

  fprintf(stdout,"simulation finished\n");
}
