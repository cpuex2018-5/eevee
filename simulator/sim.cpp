#include"./simulator.h"
extern int debug_mode;
extern int fpu_mode;

Simulator *init(unsigned long m_size,unsigned long s_pos,FILE *in,FILE *out,FILE *coef){
  int i = 0;
  Simulator *sim = (Simulator *)malloc(sizeof(Simulator));

  sim -> pc = 0;

  for(i = 0;i<32;i++){
    sim -> registers[i] = 0;
  }

  sim -> registers[2] = s_pos; //set stack pointer

  for(i = 0;i<32;i++){
    sim -> f_registers[i] = 0.0;
  }

  sim -> text_memory = (unsigned char*)malloc(sizeof(char)*m_size);
  memset(sim->text_memory,0,sizeof(char)*m_size);
  sim -> data_memory = (unsigned char*)malloc(sizeof(unsigned char)*m_size);
  memset(sim->data_memory,0,sizeof(unsigned char)*m_size);
  //allocate the same size of memory for text and data section for now

  
  sim -> in = in;
  sim -> out = out;
  sim -> bp_to_skip = 0;
  sim -> coef = coef;

  for(int i=0;i<(1<<18)-1;i++){
    char buf[32];
    int tmp = fread(&buf,sizeof(char),32,coef);
    if(tmp < 0){
      fprintf(stderr,"failed to read\n");
    }
    fseek(coef,1L,SEEK_CUR);
    //buf[0] ~ buf[32] がデータでbuf[33] が'\n
      try{
        int tmp = strtol(buf,NULL,2);
        sim->data_memory[4*i+3]=get_binary(tmp,0,8);
        sim->data_memory[4*i+2]=get_binary(tmp,8,16);
        sim->data_memory[4*i+1]=get_binary(tmp,16,24);
        sim->data_memory[4*i+0]=get_binary(tmp,24,32);   
      }
      catch(...){
        printf("not a valid value :%s\n",buf);
      }

  }
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
  if(size < 0){
    fprintf(stderr,"failed to read\n");
  }
  if(size == MEM_SIZE){
    fprintf(stderr,"it is possible that simulator could not load full code\n");
  }
  sim -> text_size = size;
}


void exec(Simulator *sim,Op *op){
  std::map<unsigned long,unsigned long> jump_counter;
  unsigned int prev_pc = -1; //local variable to detect loop
  unsigned long inst_counter = -1; //keep the number of inst execute
  while(1){
    if(sim->pc>=sim->text_size || sim->pc<0){
      break;
    }
    if(prev_pc==sim->pc){
      break;
    }
    inst_counter = inst_counter + 1;
    prev_pc = sim->pc;
    

    unsigned int inst = (sim->text_memory[sim->pc]<<24) | (sim->text_memory[sim->pc+1]<<16) | (sim->text_memory[sim->pc+2]<<8) | sim->text_memory[sim->pc+3];
    unsigned int opcode = get_binary(inst,0,7);
    int s_imm = 0; //sign extended immediate
    unsigned int address = 0;
    

    for(unsigned int i=0;i<sim->breakpoints.size();i++){
      if(sim->pc==sim->breakpoints[i]){
        if(sim->bp_to_skip!=0){
          sim -> bp_to_skip--;
          continue;
        }
        fprintf(stdout,"break!!\n");
        debug_mode=1; //break
      }
    }
    for(unsigned int i = 0;i<sim->inst_breakpoints.size();i++){
      if(inst_counter==sim->inst_breakpoints[i]){
        fprintf(stdout,"break!!\n");
        debug_mode=1;
      }
    }
    if(sim->registers[2] < sim->registers[3]){
      fprintf(stderr,"warning!! heap pointer is lower than stack pointer!!\n");
    }
    if(debug_mode == 1){
      //for debug
      Op *dbgop = (Op *)malloc(sizeof(Op));
      fprintf(stdout,"current pc: %ld  inst_counter: %ld  sp:%d, gp:%d\n",sim->pc,inst_counter,sim->registers[2], sim->registers[3]);
      disas(inst,opcode,dbgop);
      while(1){
        std::string buffer;
        std::vector<std::string> dbginst;
        int ret = 0;
        fprintf(stdout,"(edb) ");
        std::getline(std::cin,buffer);
        ret = debug_parse(sim,buffer,dbginst);
        if(ret == 1){
          break;
        }
        ret = debug_exec(sim,dbginst);
        if(ret == 1){
          break;
        }
      }
      free(dbgop);
      dbgop = NULL;
    }

    memset(op,0,sizeof(Op));
    switch(opcode){
      case 0b0110111:
        //lui
        decode_u(inst,op);
        sim->registers[op->rd] =(op->imm << 12);
        sim -> pc = sim -> pc + 4;
        break;
      case 0b0010111:
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
        jump_counter[sim->pc]++;
        break;
      case 0b1100111:
        //jalr
        decode_i(inst,op);
        s_imm = ( op -> imm ) | ((op->imm & 0x800) ? 0xFFFFF800:0); //sign extend 
        sim -> pc = (sim->registers[op->rs1] + s_imm);
        sim -> pc = (sim -> pc) &~ (0b1); //clear LSB
        sim->registers[op->rd]=prev_pc + 4;
        jump_counter[sim->pc]++;
        break;
      case 0b1100011:
        //beq,bne,blt,bge,bltu,bgeu
        decode_b(inst,op);
        s_imm = ( op -> imm ) | ((op->imm & 0x1000) ? 0xFFFFF000:0); //sign extend
        if(op->funct3 == 0b000){//beq
          if(sim->registers[op->rs1] == sim->registers[op->rs2]){
            sim -> pc = sim -> pc + s_imm;
            jump_counter[sim->pc]++;
          }
          else{
            sim -> pc = sim -> pc + 4;
          }
        }
        else if(op->funct3 == 0b001){//bne
          if(sim->registers[op->rs1] != sim->registers[op->rs2]){
            sim -> pc = sim -> pc + s_imm;
            jump_counter[sim->pc]++;
          }
          else{
            sim -> pc = sim -> pc + 4;
          }
        }
        else if(op->funct3 == 0b100){//blt
          if(sim->registers[op->rs1] < sim->registers[op->rs2]){
            sim -> pc = sim -> pc + s_imm;
            jump_counter[sim->pc]++;
          }
          else{
            sim -> pc = sim -> pc + 4;
          }
        }
        else if(op->funct3 == 0b101){//bge
          if(sim->registers[op->rs1] >= sim -> registers[op->rs2]){
            sim -> pc = sim -> pc + s_imm;
            jump_counter[sim->pc]++;
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
            jump_counter[sim->pc]++;
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
            jump_counter[sim->pc]++;
          }
          else{
            sim -> pc = sim -> pc + 4;
          }
        }
        else{
          fprintf(stderr,"Unknown instruction at %lu\n", sim->pc);
        }
        break;
      case 0b0000011:
        //lb,lh,lw,lbu,lhu
        decode_i(inst,op);
        s_imm = (op->imm) | ((op->imm & 0x800) ? 0xFFFFF800:0); //sign extension
        address = sim -> registers[op->rs1] + s_imm;
        if(address < 0){
          fprintf(stderr,"index out negative value at %lu\n",sim->pc);
        }
        if(op->funct3==0b000){
          //lb
          if(address > 0x100000){
            fprintf(stderr,"index out of range at %lu\n",sim->pc);
          }
          sim -> registers[op->rd] = (char)sim -> data_memory[address];
          // cast to char for sign extension
        }
        else if(op->funct3==0b001){
          //lh
          if(address+1 > 0x100000){
            fprintf(stderr,"index out of range at %lu\n",sim->pc);
          }
          sim -> registers[op->rd] = (short)((sim->data_memory[address]<<8) + (sim->data_memory[address+1]));
          //cast to short for sign extension
        }
        else if(op->funct3==0b010){
          //lw
          if(address+3 > 0x100000){
            fprintf(stderr,"index out of range at %lu\n",sim->pc);
          }
          sim -> registers[op->rd] = ((unsigned int)sim->data_memory[address]<<24) + ((unsigned int)sim -> data_memory[address+1]<<16)
                                      + ((unsigned int)sim->data_memory[address+2]<<8) + ((unsigned int)sim->data_memory[address+3]);
        }
        else if(op->funct3==0b100){
          //lbu
          if(address > 0x100000){
            fprintf(stderr,"index out of range at %lu\n",sim->pc);
          }
          sim -> registers[op->rd] = sim -> data_memory[address];
        }
        else if(op->funct3==0b101){
          //lhu
          if(address+1 > 0x100000){
            fprintf(stderr,"index out of range at %lu\n",sim->pc);
          }
          sim -> registers[op->rd] = (sim -> data_memory[address]<<8) + sim -> data_memory[address+1];
        }
        else{
          fprintf(stderr,"Unknown instruction at %lu\n", sim->pc);
        }
        sim -> pc = sim -> pc + 4;
        break;
      case 0b0100011:
        //sb,sh,sw
        decode_s(inst,op);
        s_imm = (op->imm) | ((op->imm & 0x800) ? 0xFFFFF800:0); //sign extension
        address = sim -> registers[op->rs1]+s_imm;
        if(address < 0){
          fprintf(stderr,"index negative value at %lu\n",sim->pc);
        }
        if(op->funct3 == 0b000){
          //sb
          if(address > 0x100000){
            fprintf(stderr,"index out of range at %lu\n",sim->pc);
          }
          sim -> data_memory[address] = get_binary(sim->registers[op->rs2],0,8);
        }
        else if(op->funct3 == 0b001){
          //sh
          if(address+1>0x100000){
            fprintf(stderr,"index out of range at %lu\n",sim->pc);
          }
          sim -> data_memory[address+1] = get_binary(sim->registers[op->rs2],0,8);
          sim -> data_memory[address] = get_binary(sim->registers[op->rs2],8,16);
        }
        else if(op->funct3 == 0b010){
          //sw
          if(address+3>0x100000){
            fprintf(stderr,"index out of range at %lu\n",sim->pc);
          }
          sim -> data_memory[address+3] = get_binary(sim->registers[op->rs2],0,8);
          sim -> data_memory[address+2] = get_binary(sim->registers[op->rs2],8,16);
          sim -> data_memory[address+1] = get_binary(sim->registers[op->rs2],16,24);
          sim -> data_memory[address] = get_binary(sim->registers[op->rs2],24,32);
        }
        else{
          fprintf(stderr,"Unknown instruction at %lu\n", sim->pc);
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
          fprintf(stderr,"Unknown instruction at %lu\n", sim->pc);
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
        else{
          fprintf(stderr,"Unknown instruction at %lu\n", sim->pc);
        }
        sim -> pc = sim -> pc + 4;
        break;
      case 0b1111111:
        decode_io(inst,op);
        if(op->funct3 == 0b000){
          char iobuf[1] = {(char)sim->registers[op->rd]};
          fwrite(iobuf,sizeof(char),1,sim->out);
        }
        else if(op->funct3 == 0b001){
          char iobuf;
          int tmp = fread(&iobuf,sizeof(char),1,sim->in);
          if(tmp < 0){
            fprintf(stderr,"failed to read\n");
          }
          sim->registers[op->rd] = (uint32_t)iobuf;
        }
        else{
          fprintf(stderr,"Unknown instruction at %lu\n", sim->pc);
        }
        sim->pc = sim -> pc + 4;
        break;
      case 0b0000111:
        //flw
        decode_i(inst,op);
        s_imm = (op->imm) | ((op->imm & 0x800) ? 0xFFFFF800:0);
        address = sim -> registers[op->rs1] + s_imm;
        union {float f_f;unsigned int f_i;} u1;
            u1.f_i = ((unsigned int)sim->data_memory[address]<<24)+((unsigned int)sim->data_memory[address+1]<<16)
                + ((unsigned int)sim->data_memory[address+2]<<8)+((unsigned int)sim->data_memory[address+3]);
        if(op->funct3 == 0b010){
          sim -> f_registers[op->rd] = u1.f_f;
        }
        else{
          fprintf(stderr,"Unknown instruction at %lu\n", sim->pc);
        }
        sim -> pc = sim -> pc + 4;
        break;
      case 0b0100111:
        //fsw
        decode_s(inst,op);
        s_imm = (op->imm) | ((op->imm & 0x800) ? 0xFFFFF800:0);
        address = sim->registers[op->rs1] + s_imm;
        union {float f_f;unsigned int f_i;} u2;
        u2.f_f = sim->f_registers[op->rs2];
        if(op->funct3 == 0b010){
          sim -> data_memory[address+3] = get_binary(u2.f_i,0,8);
          sim -> data_memory[address+2] = get_binary(u2.f_i,8,16);
          sim -> data_memory[address+1] = get_binary(u2.f_i,16,24);
          sim -> data_memory[address] = get_binary(u2.f_i,24,32);
        }
        else{
          fprintf(stderr,"Unknown instruction at %lu\n", sim->pc);
        }
        sim -> pc = sim -> pc + 4;
        break;
      case 0b1010011:
        decode_r(inst,op);
        if(op->funct7 == 0b0000000){
          //fadd.s
          if(fpu_mode==0){
            sim -> f_registers[op->rd] = sim -> f_registers[op->rs1] + sim -> f_registers[op->rs2];
          }
          else{
            float fpu_val = fadd(sim->f_registers[op->rs1],sim->f_registers[op->rs2]);
            sim -> f_registers[op->rd] = fpu_val;
          }
        }
        else if(op->funct7 == 0b0000100){
          //fsub.s
          if(fpu_mode==0){
            sim -> f_registers[op->rd] = sim -> f_registers[op->rs1] - sim -> f_registers[op->rs2];
          }
          else{
            float fpu_val = fsub(sim->f_registers[op->rs1],sim->f_registers[op->rs2]);
            sim -> f_registers[op->rd] = fpu_val;
          }
        }
        else if(op->funct7 == 0b0001000){
          //fmul.s
          if(fpu_mode==0){
            sim -> f_registers[op->rd] = sim -> f_registers[op->rs1] * sim -> f_registers[op->rs2];
          }
          else{
            float fpu_val = fmul(sim->f_registers[op->rs1],sim->f_registers[op->rs2]);
            sim -> f_registers[op->rd] = fpu_val;
          }
        }
        else if(op->funct7 == 0b0001100){
          //fdiv.s
          if(fpu_mode==0){
            sim -> f_registers[op->rd] = sim -> f_registers[op->rs1] / sim -> f_registers[op->rs2];
          }
          else{
            float fpu_val = fdiv(sim->f_registers[op->rs1],sim->f_registers[op->rs2]);
            sim -> f_registers[op->rd] = fpu_val;
          }
        }
        else if(op->funct7 == 0b0101100 && op->rs2 == 0b00000){
          //fsqrt.s
          if(fpu_mode==0){
            sim -> f_registers[op->rd] = std::sqrt(sim->f_registers[op->rs1]);
          }
          else{
            float fpu_val = fsqrt(sim->f_registers[op->rs1]);
            sim -> f_registers[op->rd] = fpu_val;
          }
        }
        else if(op->funct7 == 0b1010000 && op->funct3 == 0b010){
          //feq.s
          if(fpu_mode==0){
            if(sim->f_registers[op->rs1] == sim->f_registers[op->rs2]){
              sim->registers[op->rd] = 1;
            }
            else{
              sim->registers[op->rd] = 0;
            }
          }
          else{
            unsigned int true_val = 0;
            if(sim->f_registers[op->rs1] == sim->f_registers[op->rs2]){
              true_val = 1;
            }
            else{
              true_val = 0;
            }
            unsigned int fpu_val = feq(sim->f_registers[op->rs1],sim->f_registers[op->rs2]);
            if(true_val != fpu_val){
              fprintf(stderr,"warning!! from feq\ntrue_val is %d,however fpu_val is %d rs1:%f,rs2:%f\n",true_val,fpu_val,sim->f_registers[op->rs1],sim->f_registers[op->rs2]);
            }
            sim -> registers[op->rd] = fpu_val;
          }
          
        }
        else if(op->funct7 == 0b1010000 && op->funct3 == 0b000){
          //fle.s
          
          if(fpu_mode==0){
            if(sim->f_registers[op->rs1] <= sim->f_registers[op->rs2]){
              sim->registers[op->rd] = 1;
            }
            else{
            sim->registers[op->rd] = 0;
            }
          }
          else{
            unsigned int true_val = 0;
            if(sim->f_registers[op->rs1] <= sim->f_registers[op->rs2]){
              true_val = 1;
            }
            else{
              true_val = 0;
            }
            unsigned int fpu_val = fle(sim->f_registers[op->rs1],sim->f_registers[op->rs2]);
            if(true_val != fpu_val){
              fprintf(stderr,"warning!! from fle\ntrue_val is %d,however fpu_val is %d rs1:%f,rs2:%f\n",true_val,fpu_val,sim->f_registers[op->rs1],sim->f_registers[op->rs2]);
            }
            sim -> registers[op->rd] = fpu_val;
          }
          
        }
        else if(op->funct7 == 0b0010000 && op->rs2 == 0b00000 && op->funct3 == 0b000){
          //fmv.s
          sim -> f_registers[op->rd] = sim -> f_registers[op->rs1];
        }
        else if(op->funct7 == 0b0010000 && op->rs2 == 0b00000 && op->funct3 == 0b001){
          //fneg.s
          if(fpu_mode==0){
            sim -> f_registers[op->rd] = - (sim -> f_registers[op->rs1]);
          }
          else{
            float fpu_val = fpuneg(sim->f_registers[op->rs1]);
            sim -> f_registers[op->rd] = fpu_val;
          }
        }
        else if(op->funct7 == 0b0010000 && op->rs2 == 0b00000 && op->funct3 == 0b010){
          //fabs.s
          if(fpu_mode==0){
            sim -> f_registers[op->rd] = fabs(sim->f_registers[op->rs1]);
          }
          else{
            float fpu_val = fpuabs(sim->f_registers[op->rs1]);
            sim -> f_registers[op->rd] = fpu_val;
          }
        }
        else if(op->funct7 == 0b0010000 && op->rs2 == 0b00000 && op->funct3 == 0b011){
          //finv.s
          if(fpu_mode==0){
            sim -> f_registers[op->rd] = 1/sim->f_registers[op->rs1];
          }
          else{
            float fpu_val = finv(sim->f_registers[op->rs1]);
            sim -> f_registers[op->rd] = fpu_val;
          }
        }
        else{
          fprintf(stderr,"Unknown instruction at %lu\n", sim->pc);
        }
        sim->pc = sim->pc+4;
        break;
      default:
        fprintf(stderr,"unknown instruction %x at pc = %lu\n", inst, sim->pc);
        sim->pc = sim -> pc + 4;
    }
    sim->registers[0]=0;
  }

  print_regs(sim);
  print_fregs(sim);
  fprintf(stdout,"simulation finished inst_counter: %ld\n",inst_counter);
  dump_map(jump_counter);
}
