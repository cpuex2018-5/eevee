#include "./simulator.h"

Op *decode_r(unsigned int inst,Op *op){
  op->opcode = get_binary(inst,0,6);
  op->rd = get_binary(inst,7,11);
  op->funct3 = get_binary(inst,12,14);
  op->rs1=get_binary(inst,15,19);
  op->rs2=get_binary(inst,20,24);
  op->funct7=get_binary(inst,25,31);

  return op;
}

Op *decode_i(unsigned int inst,Op *op){
  op->opcode = get_binary(inst,0,6);
  op->rd = get_binary(inst,7,11);
  op->funct3 = get_binary(inst,12,14);
  op->rs1=get_binary(inst,15,19);
  op->imm=get_binary(inst,20,31);
  return op;
}

Op *decode_s(unsigned int inst,Op *op){
  op->opcode=get_binary(inst,0,6);
  op->funct3=get_binary(inst,12,14);
  op->rs1=get_binary(inst,15,19);
  op->rs2=get_binary(inst,20,24);
  op->imm=(get_binary(inst,25,31)<<5) | get_binary(inst,7,11);
  return op;
}

Op *decode_u(unsigned int inst,Op *op){
  op->opcode=get_binary(inst,0,6);
  op->rd=get_binary(inst,7,11);
  op->imm=get_binary(inst,12,31);
  return op;
}

Op *decode_b(unsigned int inst,Op *op){
  op->opcode = get_binary(inst,0,6);
  op->funct3 = get_binary(inst,12,14);
  op->rs1=get_binary(inst,15,19);
  op->rs2=get_binary(inst,20,24);
  op->imm = (get_binary(inst,30,31)<<12) | (get_binary(inst,7,8)<<11) | (get_binary(inst,25,30)<<5) | (get_binary(inst,8,11) << 1);
  return op;
}

Op *decode_j(unsigned int inst,Op *op){
  op->opcode=get_binary(inst,0,6);
  op->rd=get_binary(inst,7,11);
  op->imm=(get_binary(inst,30,31)<<20) | (get_binary(inst,12,19)<<12) | (get_binary(inst,20,21)<<11) | (get_binary(inst,21,30) << 1);
  return op;
}
