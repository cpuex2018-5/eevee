#include"./simulator.h"
extern int debug_mode;
Simulator *init(unsigned long m_size,unsigned long s_pos){
  int i = 0;
  Simulator *sim = malloc(sizeof(Simulator));

  sim -> pc = 0;

  for(i = 0;i<32;i++){
    sim -> registers[i] = 0;
  }

  sim -> registers[2] = s_pos; //set stack pointer

  for(i = 0;i<32;i++){
    sim -> f_registers[i] = 0.0;
  }

  sim -> text_memory = malloc(sizeof(char)*m_size);
  memset(sim->text_memory,0,sizeof(char)*m_size);
  sim -> data_memory = malloc(sizeof(unsigned char)*m_size);
  memset(sim->data_memory,0,sizeof(unsigned char)*m_size);
  fprintf(stdout,"allocated %ld bytes memory for text and data segment,which lies at %p and %p respectively\n"
          ,m_size,sim->text_memory,sim->data_memory);
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
  int prev_pc = -1; //local variable to detect loop

  while(1){
    if(sim->pc>=sim->text_size || sim->pc<0){
      break;
    }
    if(prev_pc==sim->pc){
      break;
    }

    prev_pc = sim->pc;
    sim->registers[0] = 0; //always set zero register to zero


    if(debug_mode == 1){
      //for debug
      fprintf(stdout,"current pc: %ld\n",sim->pc);
      fprintf(stdout,"next instruction: ");
      print_instr(sim);
      while(1){
        char buffer[16] = "";
        fprintf(stdout,"(edb) ");
        if(scanf("%15[^\n]%*[^\n]",buffer)==EOF){
          fprintf(stderr,"Unknown debugger command!!\n");
          exit(1);
        }
        scanf("%*c");
        int i = debug_exec(sim,buffer);
        if(i==1){
          break;
        }
      }
    }



    Op *op = malloc(sizeof(Op));
    memset(op,0,sizeof(Op));
    unsigned int inst = (sim->text_memory[sim->pc]<<24) | (sim->text_memory[sim->pc+1]<<16) | (sim->text_memory[sim->pc+2]<<8) | sim->text_memory[sim->pc+3];
    unsigned int opcode = get_binary(inst,0,7);
    int s_imm; //sign extended immediate
    unsigned int address;
    switch(opcode){
      case 0b0110111:
        //検証済み
        //lui
        decode_u(inst,op);
        sim->registers[op->rd] =(op->imm << 12);
        sim -> pc = sim -> pc + 4;
        break;
      case 0b0010111:
        //検証済み
        //auipc
        decode_u(inst,op);
        sim->registers[op->rd]=(op->imm << 12)+ sim -> pc;
        sim -> pc = sim -> pc + 4;
        break;
      case 0b1101111:
       //jal
        decode_j(inst,op);
        sim->registers[op->rd]=sim->pc + 4;
        s_imm = ( op -> imm ) | ((op->imm & 0x100000) ? 0xFFF00000:0); //sign extend
        sim -> pc = sim -> pc + s_imm;
        break;
      case 0b1100111:
        //jalr
        decode_i(inst,op);
        sim->registers[op->rd]=sim->pc + 4;
        s_imm = ( op -> imm ) | ((op->imm & 0x800) ? 0xFFFFF800:0); //sign extend
        sim -> pc = (sim->registers[op->rs1] + s_imm);
        sim -> pc = (sim -> pc) &~ (0b1); //clear LSB
        break;
      case 0b1100011:
        //beq,bne,blt,bge,bltu,bgeu
        decode_b(inst,op);
        s_imm = ( op -> imm ) | ((op->imm & 0x1000) ? 0xFFFFF000:0); //sign extend
        if(op->funct3 == 0b000){//beq
          if(sim->registers[op->rs1] == sim->registers[op->rs2]){
            sim -> pc = sim -> pc + s_imm;
          }
          else{
            sim -> pc = sim -> pc + 4;
          }
        }
        else if(op->funct3 == 0b001){//bne
          if(sim->registers[op->rs1] != sim->registers[op->rs2]){
            sim -> pc = sim -> pc + s_imm;
          }
          else{
            sim -> pc = sim -> pc + 4;
          }
        }
        else if(op->funct3 == 0b100){//blt
          if(sim->registers[op->rs1] < sim->registers[op->rs2]){
            sim -> pc = sim -> pc + s_imm;
          }
          else{
            sim -> pc = sim -> pc + 4;
          }
        }
        else if(op->funct3 == 0b101){//bge
          if(sim->registers[op->rs1] >= sim -> registers[op->rs2]){
            sim -> pc = sim -> pc + s_imm;
          }
          else{
            sim -> pc = sim -> pc + 4;
          }
        }
        else if(op->funct3 == 0b110){//bltu
          unsigned int u_rs1 = (unsigned int) sim->registers[op->rs1];
          unsigned int u_rs2 = (unsigned int) sim->registers[op->rs2];
          if(u_rs1 < u_rs2){
            sim -> pc = sim -> pc + s_imm;
          }
          else{
            sim -> pc = sim -> pc + 4;
          }
        }
        else if(op->funct3 == 0b111){//bgeu
          unsigned int u_rs1 = (unsigned int) sim->registers[op->rs1];
          unsigned int u_rs2 = (unsigned int) sim->registers[op->rs2];
          if(u_rs1 >= u_rs2){
            sim -> pc = sim -> pc + s_imm;
          }
          else{
            sim -> pc = sim -> pc + 4;
          }
        }
        else{
          fprintf(stderr,"Unknown instruction\n");
        }
        break;
      case 0b0000011:
        //検証済み
        //lb,lh,lw,lbu,lhu
        decode_i(inst,op);
        s_imm = (op->imm) | ((op->imm & 0x800) ? 0xFFFFF800:0); //sign extension
        address = sim -> registers[op->rs1] + s_imm;
        if(op->funct3==0b000){
          //lb
          sim -> registers[op->rd] = (char)sim -> data_memory[address];
          // cast to char for sign extension
        }
        else if(op->funct3==0b001){
          //lh
          sim -> registers[op->rd] = (short)((sim->data_memory[address+1]<<8) + (sim->data_memory[address]));
          //cast to short for sign extension
        }
        else if(op->funct3==0b010){
          //lw
          sim -> registers[op->rd] = ((unsigned int)sim->data_memory[address+3]<<24) + ((unsigned int)sim -> data_memory[address+2]<<16)
                                      + ((unsigned int)sim->data_memory[address+1]<<8) + ((unsigned int)sim->data_memory[address]);
        }
        else if(op->funct3==0b100){
          //lbu
          sim -> registers[op->rd] = sim -> data_memory[address];
        }
        else if(op->funct3==0b101){
          //lhu
          sim -> registers[op->rd] = (sim -> data_memory[address+1]<<8) + sim -> data_memory[address];
        }
        else{
          fprintf(stderr,"Unknown instruction\n");
        }
        sim -> pc = sim -> pc + 4;
        break;
      case 0b0100011:
        //検証済み
        //sb,sh,sw
        decode_s(inst,op);
        s_imm = (op->imm) | ((op->imm & 0x800) ? 0xFFFFF800:0); //sign extension
        address = sim -> registers[op->rs1]+s_imm;
        if(op->funct3 == 0b000){
          //sb
          sim -> data_memory[address] = get_binary(sim->registers[op->rs2],0,8);
        }
        else if(op->funct3 == 0b001){
          //sh
          sim -> data_memory[address] = get_binary(sim->registers[op->rs2],0,8);
          sim -> data_memory[address+1] = get_binary(sim->registers[op->rs2],8,16);
        }
        else if(op->funct3 == 0b010){
          //sw
          sim -> data_memory[address] = get_binary(sim->registers[op->rs2],0,8);
          sim -> data_memory[address+1] = get_binary(sim->registers[op->rs2],8,16);
          sim -> data_memory[address+2] = get_binary(sim->registers[op->rs2],16,24);
          sim -> data_memory[address+3] = get_binary(sim->registers[op->rs2],24,32);
        }
        else{
          fprintf(stderr,"Unknown instruction\n");
        }
        sim -> pc = sim -> pc + 4;
        break;
      case 0b0010011:
        //addi,slti,sltiu,xori,ori,andi
        //slli,srli,srai
        decode_i(inst,op);
        s_imm = (op->imm) | ((op->imm & 0x800) ? 0xFFFFF800:0); //sign extend
        if(op->funct3 == 0b000){
          //addi
          sim -> registers[op->rd] = sim -> registers[op->rs1] + s_imm;
        }
        else if(op->funct3 == 0b010){
          //slti
          if(sim -> registers[op->rs1] < s_imm){
            sim -> registers[op->rd] = 1;
          }
          else{
            sim -> registers[op->rd] = 0;
          }
        }
        else if(op->funct3 == 0b011){
          //sltiu
          unsigned int u_rs1 = (unsigned int) sim -> registers[op->rs1];
          unsigned int u_s_imm = (unsigned int) s_imm;
          if(u_rs1 < u_s_imm){
            sim -> registers[op->rd] = 1;
          }
          else{
            sim -> registers[op->rd] = 0;
          }
        }
        else if(op->funct3 == 0b100){
          //xori
          sim -> registers[op->rd] = sim -> registers[op->rs1] ^ s_imm;
        }
        else if(op->funct3 == 0b110){
          //ori
          sim -> registers[op->rd] = sim -> registers[op->rs1] | s_imm;
        }
        else if(op->funct3 == 0b111){
          //andi
          sim -> registers[op->rd] = sim -> registers[op->rs1] & s_imm;
        }
        else if(op->funct3 == 0b001 && get_binary(op->imm,5,12) == 0b0000000){
          //slli
          unsigned int shamt = get_binary(op->imm,0,5);
          sim -> registers[op->rd] = ((unsigned int)(sim -> registers[op->rs1]))<< shamt;
        }
        else if(op->funct3 == 0b101 && get_binary(op->imm,5,12) == 0b0000000){
          //srli,srai
          unsigned int shamt = get_binary(op->imm,0,5);
          sim -> registers[op->rd] = ((unsigned int )(sim -> registers[op->rs1]))>> shamt;
        }
        else if(op->funct3 == 0b101 && get_binary(op->imm,5,12)==0b0100000){
          //srai
          unsigned int shamt = get_binary(op->imm,0,5);
          sim -> registers[op->rd] = (sim -> registers[op->rs1] >> shamt);
        }
        else{
          fprintf(stderr,"Unknown instruction\n");
        }
        sim -> pc = sim -> pc + 4;
        break;
      case 0b0110011:
       //add,sub,sll,slt,sltu,xor,srl,sla,or,and
        decode_r(inst,op);
        if(op->funct3 == 0b000 && op->funct7 == 0b0000000){
          //add
          sim -> registers[op->rd] = sim -> registers[op->rs1] + sim -> registers[op->rs2];
        }
        else if(op->funct3 == 0b000 && op->funct7 == 0b0100000){
          //sub
          sim -> registers[op->rd] = sim -> registers[op->rs1] - sim -> registers[op->rs2];
        }
        else if(op->funct3 == 0b001 && op->funct7 == 0b0000000){
          //sll
          unsigned int shamt = get_binary(sim -> registers[op->rs2],0,5);
          sim -> registers[op->rd] = ((unsigned int)(sim -> registers[op->rs1])) << shamt;
        }
        else if(op->funct3 == 0b010 && op->funct7 == 0b0000000){
          //slt
          if(sim -> registers[op->rs1] < sim -> registers[op->rs2]){
            sim -> registers[op->rd] = 1;
          }
          else{
            sim -> registers[op->rd] = 0;
          }
        }
        else if(op->funct3 == 0b011 && op->funct7 == 0b0000000){
          //sltu
          unsigned int u_rs1 = (unsigned int) sim -> registers[op->rs1];
          unsigned int u_rs2 = (unsigned int) sim -> registers[op->rs2];
          if(u_rs1 < u_rs2){
            sim -> registers[op->rd] = 1;
          }
          else{
            sim -> registers[op->rd] = 0;
          }
        }
        else if(op->funct3 == 0b100 && op->funct7 == 0b0000000){
          //xor
          sim -> registers[op->rd] = sim -> registers[op->rs1] ^ sim -> registers[op->rs2];
        }
        else if(op->funct3 == 0b101 && op->funct7 == 0b0000000){
          //srl
          unsigned int shamt = get_binary(sim -> registers[op->rs2],0,5);
          sim -> registers[op->rd] = ((unsigned int)(sim -> registers[op->rs1])) >> shamt;
        }
        else if(op->funct3 == 0b101 && op->funct7 == 0b0100000){
          //sra
          unsigned int shamt = get_binary(sim -> registers[op->rs2],0,5);
          sim -> registers[op->rd] = sim -> registers[op->rs1] >> shamt;
        }
        else if(op->funct3 == 0b110 && op->funct7 == 0b0000000){
          //or
          sim -> registers[op->rd] = sim -> registers[op -> rs1] | sim -> registers[op -> rs2];
        }
        else if(op->funct3 == 0b111 && op->funct7 == 0b0000000){
          //and
          sim -> registers[op->rd] = sim -> registers[op -> rs1] & sim -> registers[op -> rs2];
        }
        else if(op->funct3 == 0b000 && op->funct7 == 0b0000001){
          //mul
          sim -> registers[op->rd] = sim -> registers[op->rs1] * sim -> registers[op->rs2];
        }
        else if(op->funct3 == 0b100 && op->funct7 == 0b0000001){
          //div
          if(sim->registers[op->rs2]==0){
            //0除算
            fprintf(stderr,"You tried to divide by 0\n");
            sim->registers[op->rd]=-1;
          }
          else if(sim->registers[op->rs1]==(-2147483648) && sim->registers[op->rs2]==-1){
            fprintf(stderr,"Overflow in division\n");
            sim->registers[op->rd]=-2147483648;
          }
          else{
            sim->registers[op->rd] = sim->registers[op->rs1] / sim->registers[op->rs2];
          }
        }
        else if(op->funct3 == 0b101 && op->funct7 == 0b0000001){
          //divu
          if(sim->registers[op->rs2]==0){
            fprintf(stderr,"You tried to divide by 0\n");
            sim->registers[op->rd]=2147483647;
          }
          else{
            sim->registers[op->rd] = sim->registers[op->rs1] / sim->registers[op->rs2];
          }
        }
        else if(op->funct3 == 0b110 && op->funct7 == 0b0000001){
          //rem
          if(sim->registers[op->rs2]==0){
            //0除算
            fprintf(stderr,"You tried to divide by 0\n");
            sim->registers[op->rd]=sim->registers[op->rs1];
          }
          else if(sim->registers[op->rs1]==(-2147483648) && sim->registers[op->rs2]==-1){
            fprintf(stderr,"Overflow in division\n");
            sim->registers[op->rd]=0;
          }
          else{
            sim->registers[op->rd] = sim->registers[op->rs1] % sim->registers[op->rs2];
          }
        }
        else if(op->funct3 == 0b111 && op->funct7 == 0b0000001){
          //remu
          if(sim->registers[op->rs2]==0){
            fprintf(stderr,"You tried to divide by 0\n");
            sim->registers[op->rd]=sim->registers[op->rs1];
          }
          else{
            sim->registers[op->rd] = sim->registers[op->rs1] % sim->registers[op->rs2];
          }
        }
        else{
          fprintf(stderr,"Unknown instruction\n");
        }
        sim -> pc = sim -> pc + 4;
        break;
      default:
        fprintf(stderr,"unknown instruction\n");
        sim->pc = sim -> pc + 4;
    }
    free(op);
    op=NULL;
  }

  print_regs(sim);
  fprintf(stdout,"simulation finished\n");
}
