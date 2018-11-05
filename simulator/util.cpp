#include "./simulator.h"

extern const char *Regs[];
extern const char *fRegs[];
unsigned int get_binary(unsigned int n,int start,int end){
  int len = end - start;
  n = n << (32-end);
  n = n >> (32-len);
  return n;
}

void usage(){
  fprintf(stderr,"Usage: ./eevee_sim <file> [-d] [-h]\n");
}

void print_binary(int val){
  //for debug
  for(int i = 31;i>=0;i--){
    printf("%d ",((val>>i)&0x1));
  }
  printf("\n");
}

std::string to_string(uint32_t inst) {
    std::string str;
    for (int i = 0; i < 32; i++) {
        str.push_back(((inst >> (31 - i)) & 0x1)? '1' : '0');
        if (i % 4 == 3) str.push_back(' ');
    }
    assert(str.size() == 40);
    return str;
}

void floatToBinary(float f){
  union {float f; unsigned int i;}u ;
  u.f = f;
  for(int j = 31;j>=0;j--){
    printf("%d ",((u.i>>j)&0x1));
  }
  printf("\n");
  printf("%20f",f);
}

bool skip(char c){
  return (c == ' ' || c == '\t');
}

void print_instr(Simulator *sim){
  fprintf(stdout,"%02x %02x %02x %02x\n",(unsigned char)sim->text_memory[sim->pc],(unsigned char)sim->text_memory[sim->pc+1],(unsigned char)sim->text_memory[sim->pc+2],(unsigned char)sim->text_memory[sim->pc+3]);
}

void disas(unsigned int inst,unsigned int opcode,Op *dbgop){
  int s_imm = 0;
  fprintf(stdout,"next instruction: %02x %02x %02x %02x : ",(unsigned char)(inst >> 24),(unsigned char)(inst >> 16),(unsigned char)(inst >> 8),(unsigned char)(inst));
  switch(opcode){
    case 0b0110111:
      decode_u(inst,dbgop);
      fprintf(stdout,"lui %s,%d",Regs[dbgop->rd],(dbgop->imm<<12));
      break;
    case 0b0010111:
      decode_u(inst,dbgop);
      fprintf(stdout,"auipc %s,%d",Regs[dbgop->rd],(dbgop->imm<<12));
      break;
    case 0b1101111:
      decode_j(inst,dbgop);
      s_imm = (dbgop -> imm ) | ((dbgop->imm & 0x100000) ? 0xFFF00000:0);
      fprintf(stdout,"jal %s,%d",Regs[dbgop->rd],s_imm);
      break;
    case 0b1100111:
      decode_i(inst,dbgop);
      s_imm = (dbgop -> imm ) | ((dbgop->imm & 0x800) ? 0xFFFFF800:0);
      fprintf(stdout,"jalr %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs1],s_imm);
      break;
    case 0b1100011:
      decode_b(inst,dbgop);
      s_imm = (dbgop -> imm ) | ((dbgop->imm & 0x1000) ? 0xFFFFF000:0);
      if(dbgop->funct3 == 0b000){
        fprintf(stdout,"beq %s,%s,%d",Regs[dbgop->rs1],Regs[dbgop->rs2],s_imm);
      }
      else if(dbgop->funct3 == 0b001){
        fprintf(stdout,"bne %s,%s,%d",Regs[dbgop->rs1],Regs[dbgop->rs2],s_imm);
      }
      else if(dbgop->funct3 == 0b100){
        fprintf(stdout,"blt %s,%s,%d",Regs[dbgop->rs1],Regs[dbgop->rs2],s_imm);
      }
      else if(dbgop->funct3 == 0b101){
        fprintf(stdout,"bge %s,%s,%d",Regs[dbgop->rs1],Regs[dbgop->rs2],s_imm);
      }
      else if(dbgop->funct3 == 0b110){
        fprintf(stdout,"bltu %s,%s,%d",Regs[dbgop->rs1],Regs[dbgop->rs2],s_imm);
      }
      else if(dbgop->funct3 == 0b111){
        fprintf(stdout,"bgeu %s,%s,%d",Regs[dbgop->rs1],Regs[dbgop->rs2],s_imm);
      }
      else{
        fprintf(stdout,"(unknown)");
      }
      break;
    case 0b0000011:
      decode_i(inst,dbgop);
      s_imm = (dbgop->imm) | ((dbgop->imm & 0x800) ? 0xFFFFF800:0);
      if(dbgop->funct3 == 0b000){
        fprintf(stdout,"lb %s,%d(%s)",Regs[dbgop->rd],s_imm,Regs[dbgop->rs1]);
      }
      else if(dbgop->funct3 == 0b001){
        fprintf(stdout,"lh %s,%d(%s)",Regs[dbgop->rd],s_imm,Regs[dbgop->rs1]);
      }
      else if(dbgop->funct3 == 0b010){
        fprintf(stdout,"lw %s,%d(%s)",Regs[dbgop->rd],s_imm,Regs[dbgop->rs1]);
      }
      else if(dbgop->funct3 == 0b100){
        fprintf(stdout,"lbh %s,%d(%s)",Regs[dbgop->rd],s_imm,Regs[dbgop->rs1]);
      }
      else if(dbgop->funct3 == 0b101){
        fprintf(stdout,"lhu %s,%d(%s)",Regs[dbgop->rd],s_imm,Regs[dbgop->rs1]);
      }
      else{
        fprintf(stdout,"(unknown)");
      }
      break;
    case 0b0100011:
      decode_s(inst,dbgop);
      s_imm = (dbgop->imm) | ((dbgop->imm & 0x800) ? 0xFFFFF800:0);
      if(dbgop->funct3 == 0b000){
        fprintf(stdout,"sb %s,%d(%s)",Regs[dbgop->rs2],s_imm,Regs[dbgop->rs1]);
      }
      else if(dbgop->funct3 == 0b001){
        fprintf(stdout,"sh %s,%d(%s)",Regs[dbgop->rs2],s_imm,Regs[dbgop->rs1]);
      }
      else if(dbgop->funct3 == 0b010){
        fprintf(stdout,"sw %s,%d(%s)",Regs[dbgop->rs2],s_imm,Regs[dbgop->rs1]);
      }
      else{
        fprintf(stdout,"(unknown)");
      }
      break;
    case 0b0010011:
      decode_i(inst,dbgop);
      s_imm = (dbgop->imm) | ((dbgop->imm & 0x800) ? 0xFFFFF800:0);
      if(dbgop->funct3 == 0b000){
        fprintf(stdout,"addi %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs1],s_imm);
      }
      else if(dbgop->funct3 == 0b010){
        fprintf(stdout,"slti %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs1],s_imm);
      }
      else if(dbgop->funct3 == 0b011){
        fprintf(stdout,"sltiu %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs1],s_imm);
      }
      else if(dbgop->funct3 == 0b100){
        fprintf(stdout,"xori %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs1],s_imm);
      }
      else if(dbgop->funct3 == 0b110){
        fprintf(stdout,"ori %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs1],s_imm);
      }
      else if(dbgop->funct3 == 0b111){
        fprintf(stdout,"andi %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs1],s_imm);
      }
      else if(dbgop->funct3 == 0b001 && get_binary(dbgop->imm,5,12)==0b0000000){
        fprintf(stdout,"slli %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs1],s_imm);
      }
      else if(dbgop->funct3 == 0b101 && get_binary(dbgop->imm,5,12)==0b0000000){
        fprintf(stdout,"srli %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs1],s_imm);
      }
      else if(dbgop->funct3 == 0b101 && get_binary(dbgop->imm,5,12)==0b0100000){
        fprintf(stdout,"srai %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs1],s_imm);
      }
      else{
        fprintf(stdout,"(unknown)");
      }
      break;
    case 0b0110011:
      decode_r(inst,dbgop);
      if(dbgop->funct3 == 0b000 && dbgop->funct7 == 0b0000000){
        fprintf(stdout,"add %s,%s,%s",Regs[dbgop->rd],Regs[dbgop->rs1],Regs[dbgop->rs2]);
      }
      else if(dbgop->funct3 == 0b000 && dbgop->funct7 == 0b0100000){
        fprintf(stdout,"sub %s,%s,%s",Regs[dbgop->rd],Regs[dbgop->rs1],Regs[dbgop->rs2]);
      }
      else if(dbgop->funct3 == 0b001 && dbgop->funct7 == 0b0000000){
        fprintf(stdout,"sll %s,%s,%s",Regs[dbgop->rd],Regs[dbgop->rs1],Regs[dbgop->rs2]);
      }
      else if(dbgop->funct3 == 0b010 && dbgop->funct7 == 0b0000000){
        fprintf(stdout,"slt %s,%s,%s",Regs[dbgop->rd],Regs[dbgop->rs1],Regs[dbgop->rs2]);
      }
      else if(dbgop->funct3 == 0b011 && dbgop->funct7 == 0b0000000){
        fprintf(stdout,"sltu %s,%s,%s",Regs[dbgop->rd],Regs[dbgop->rs1],Regs[dbgop->rs2]);
      }
      else if(dbgop->funct3 == 0b100 && dbgop->funct7 == 0b0000000){
        fprintf(stdout,"xor %s,%s,%s",Regs[dbgop->rd],Regs[dbgop->rs1],Regs[dbgop->rs2]);
      }
      else if(dbgop->funct3 == 0b101 && dbgop->funct7 == 0b0000000){
        fprintf(stdout,"srl %s,%s,%s",Regs[dbgop->rd],Regs[dbgop->rs1],Regs[dbgop->rs2]);
      }
      else if(dbgop->funct3 == 0b101 && dbgop->funct7 == 0b0100000){
        fprintf(stdout,"sra %s,%s,%s",Regs[dbgop->rd],Regs[dbgop->rs1],Regs[dbgop->rs2]);
      }
      else if(dbgop->funct3 == 0b110 && dbgop->funct7 == 0b0000000){
        fprintf(stdout,"or %s,%s,%s",Regs[dbgop->rd],Regs[dbgop->rs1],Regs[dbgop->rs2]);
      }
      else if(dbgop->funct3 == 0b111 && dbgop->funct7 == 0b0000000){
        fprintf(stdout,"and %s,%s,%s",Regs[dbgop->rd],Regs[dbgop->rs1],Regs[dbgop->rs2]);
      }
      else{
        fprintf(stdout,"(unknown)");
      }
      break;
    case 0b1111111:
      decode_io(inst,dbgop);
      if(dbgop->funct3 == 0b000){
        fprintf(stdout,"w %s",Regs[dbgop->rd]);
      }
      else if(dbgop->funct3 == 0b001){
        fprintf(stdout,"r %s",Regs[dbgop->rd]);
      }
      else{
        fprintf(stdout,"(unknown)");
      }
      break;
    case 0b0000111:
      //flw
      decode_i(inst,dbgop);
      s_imm = (dbgop->imm) | ((dbgop->imm & 0x800) ? 0xFFFFF800:0);
      if(dbgop->funct3==0b010){
        fprintf(stdout,"flw %s,%d(%s)",fRegs[dbgop->rd],s_imm,Regs[dbgop->rs1]);
      }
      else{
        fprintf(stdout,"(unknown)");
      }
      break;
    case 0b0100111:
      decode_s(inst,dbgop);
      s_imm = (dbgop->imm) | ((dbgop->imm & 0x800) ? 0xFFFFF800:0);
      if(dbgop->funct3==0b010){
        fprintf(stdout,"fsw %s,%d(%s)",fRegs[dbgop->rs2],s_imm,Regs[dbgop->rs1]);
      }
      else{
        fprintf(stdout,"(unknown)");
      }
      break;
    case 0b1010011:
      decode_r(inst,dbgop);
      if(dbgop->funct7==0b0000000){
        fprintf(stdout,"fadd %s,%s,%s",fRegs[dbgop->rd],fRegs[dbgop->rs1],fRegs[dbgop->rs2]);
      }
      else if(dbgop->funct7 == 0b0000100){
        fprintf(stdout,"fsub %s,%s,%s",fRegs[dbgop->rd],fRegs[dbgop->rs1],fRegs[dbgop->rs2]);
      }
      else if(dbgop->funct7 == 0b0001000){
        fprintf(stdout,"fmul %s,%s,%s",fRegs[dbgop->rd],fRegs[dbgop->rs1],fRegs[dbgop->rs2]);
      }
      else if(dbgop->funct7 == 0b0001100){
        fprintf(stdout,"fdiv %s,%s,%s",fRegs[dbgop->rd],fRegs[dbgop->rs1],fRegs[dbgop->rs2]);
      }
      else if(dbgop->funct7 == 0b0101100 && dbgop->rs2 == 0b00000){
        fprintf(stdout,"fsqrt %s,%s",fRegs[dbgop->rd],fRegs[dbgop->rs1]);
      }
      else if(dbgop->funct7 == 0b1010000 && dbgop->funct3 == 0b010){
        fprintf(stdout,"feq %s,%s,%s",fRegs[dbgop->rd],fRegs[dbgop->rs1],fRegs[dbgop->rs2]);
      }
      else if(dbgop->funct7 == 0b1010000 && dbgop->funct3 == 0b000){
        fprintf(stdout,"fle %s,%s,%s",fRegs[dbgop->rd],fRegs[dbgop->rs1],fRegs[dbgop->rs2]);
      }
      else if(dbgop->funct7 == 0b0010000 && dbgop->rs2 == 0b00000 && dbgop->funct3 == 0b000){
        fprintf(stdout,"fmv %s,%s",fRegs[dbgop->rd],fRegs[dbgop->rs1]);
      }
      else if(dbgop->funct7 == 0b0010000 && dbgop->rs2 == 0b00000 && dbgop->funct3 == 0b001){
        fprintf(stdout,"fneg %s,%s",fRegs[dbgop->rd],fRegs[dbgop->rs1]);
      }
      else if(dbgop->funct7 == 0b0010000 && dbgop->rs2 == 0b00000 && dbgop->funct3 == 0b010){
        fprintf(stdout,"fabs %s,%s",fRegs[dbgop->rd],fRegs[dbgop->rs1]);
      }
      else if(dbgop->funct7 == 0b0010000 && dbgop->rs2 == 0b00000 && dbgop->funct3 == 0b011){
        fprintf(stdout,"finv %s,%s",fRegs[dbgop->rd],fRegs[dbgop->rs1]);
      }
      else{
        fprintf(stdout,"(unknown)");
      }
      break;
    default:
      fprintf(stdout,"(unknown)");
  }

  fprintf(stdout,"\n");
}

