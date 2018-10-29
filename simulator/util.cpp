#include "./simulator.h"

extern const char *Regs[];

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
void print_instr(Simulator *sim){
  fprintf(stdout,"%02x %02x %02x %02x\n",(unsigned char)sim->text_memory[sim->pc],(unsigned char)sim->text_memory[sim->pc+1],(unsigned char)sim->text_memory[sim->pc+2],(unsigned char)sim->text_memory[sim->pc+3]);
}

void disas(unsigned int inst,unsigned int opcode,Op *dbgop){
  int s_imm = 0;
  unsigned int address = 0;
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
      fprintf(stdout,"jalr %s,%d",Regs[dbgop->rd],s_imm);
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
        fprintf(stdout,"addi %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rd],s_imm);
      }
      else if(dbgop->funct3 == 0b010){
        fprintf(stdout,"slti %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs2],s_imm);
      }
      else if(dbgop->funct3 == 0b011){
        fprintf(stdout,"sltiu %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs2],s_imm);
      }
      else if(dbgop->funct3 == 0b100){
        fprintf(stdout,"xori %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs2],s_imm);
      }
      else if(dbgop->funct3 == 0b110){
        fprintf(stdout,"ori %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs2],s_imm);
      }
      else if(dbgop->funct3 == 0b111){
        fprintf(stdout,"andi %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs2],s_imm);
      }
      else if(dbgop->funct3 == 0b001 && get_binary(dbgop->imm,5,12)==0b0000000){
        fprintf(stdout,"slli %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs2],s_imm);
      }
      else if(dbgop->funct3 == 0b101 && get_binary(dbgop->imm,5,12)==0b0000000){
        fprintf(stdout,"srli %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs2],s_imm);
      }
      else if(dbgop->funct3 == 0b101 && get_binary(dbgop->imm,5,12)==0b0100000){
        fprintf(stdout,"srai %s,%s,%d",Regs[dbgop->rd],Regs[dbgop->rs2],s_imm);
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
      if(dbgop->funct3 == 0b000){
        fprintf(stdout,"out %s",Regs[dbgop->rd]);
      }
      else if(dbgop->funct3 == 0b001){
        fprintf(stdout,"in %s",Regs[dbgop->rd]);
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
