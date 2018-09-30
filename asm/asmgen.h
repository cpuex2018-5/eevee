#ifndef __ASMGEN_H__
#define __ASMGEN_H__

#include <iostream>

// for testing ---------------------------------------------
uint32_t lui (std::string rd, std::string imm);

uint32_t auipc (std::string rd, std::string imm);

uint32_t jal (std::string rd, std::string imm);

uint32_t jalr (std::string rd, std::string rs1, std::string imm);

// beq, bne, blt, bge, bltu, bgeu
uint32_t branch (std::string rs1, std::string rs2, std::string dst);

// lb, lh, lw, lbu, lhu
uint32_t load (std::string rd, std::string src);

// sb, sh, sw
uint32_t store (std::string rs2, std::string dst);

// addi, slti, sltiu, xori, ori, andi
uint32_t op_imm (std::string rd, std::string rs1, std::string imm);

// slli, srli, srai
uint32_t op_imm_shift (std::string rd, std::string rs1, std::string imm);

// add, sub, sll, slt, sltu, xor, srl, sra, or, and
uint32_t op (std::string rd, std::string rs1, std::string rs2);
// --------------------------------------------- for testing

uint32_t asmgen(std::string mnemo, std::string arg0, std::string arg1, std::string arg2);

#endif  // __ASMGEN_H__
