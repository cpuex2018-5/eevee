#include "./simulator.h"

Op *decode_r(unsigned int inst,Op *op){
  op->opcode = get_binary(inst,0,7);
  op->rd = get_binary(inst,7,12);
  op->funct3 = get_binary(inst,12,15);
  op->rs1=get_binary(inst,15,20);
  op->rs2=get_binary(inst,20,25);
  op->funct7=get_binary(inst,25,32);

  return op;
}

Op *decode_i(unsigned int inst,Op *op){
  op->opcode = get_binary(inst,0,7);
  op->rd = get_binary(inst,7,12);
  op->funct3 = get_binary(inst,12,15);
  op->rs1=get_binary(inst,15,20);
  op->imm=get_binary(inst,20,32);
  return op;
}

Op *decode_s(unsigned int inst,Op *op){
  op->opcode=get_binary(inst,0,7);
  op->funct3=get_binary(inst,12,15);
  op->rs1=get_binary(inst,15,20);
  op->rs2=get_binary(inst,20,25);
  op->imm=(get_binary(inst,25,32)<<5) | get_binary(inst,7,12);
  return op;
}

Op *decode_u(unsigned int inst,Op *op){
  op->opcode=get_binary(inst,0,7);
  op->rd=get_binary(inst,7,12);
  op->imm=get_binary(inst,12,32);
  return op;
}

Op *decode_b(unsigned int inst,Op *op){
  op->opcode = get_binary(inst,0,7);
  op->funct3 = get_binary(inst,12,15);
  op->rs1=get_binary(inst,15,20);
  op->rs2=get_binary(inst,20,25);
  op->imm = (get_binary(inst,31,32)<<12) | (get_binary(inst,7,8)<<11) | (get_binary(inst,25,31)<<5) | (get_binary(inst,8,12) << 1);
  return op;
}

Op *decode_j(unsigned int inst,Op *op){
  op->opcode=get_binary(inst,0,6);
  op->rd=get_binary(inst,7,11);
  op->imm=(get_binary(inst,31,32)<<20) | (get_binary(inst,12,20)<<12) | (get_binary(inst,20,21)<<11) | (get_binary(inst,21,31) << 1);
  return op;
}

Op *decode_io(unsigned int inst,Op *op){
  op->opcode = get_binary(inst,0,6);
  op->rd = get_binary(inst,7,11);
  op->funct3 = get_binary(inst,12,14);
  op->rs1 = get_binary(inst, 15,19);
  //ignore bits after 20th bit
  return op;
}
