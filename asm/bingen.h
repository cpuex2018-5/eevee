#ifndef __BINGEN_H__
#define __BINGEN_H__

#include <iostream>

void ParseOffset(std::string arg, std::string* reg, uint32_t* offset);

uint32_t lui (std::string rd, uint32_t imm);

uint32_t auipc (std::string rd, uint32_t imm);

uint32_t jal (std::string rd, uint32_t imm);

uint32_t jalr (std::string rd, std::string rs1, uint32_t imm);

// beq, bne, blt, bge, bltu, bgeu
uint32_t branch (std::string mnemo, std::string rs1, std::string rs2, uint32_t offset);

// lb, lh, lw, lbu, lhu
uint32_t load (std::string mnemo, std::string rd, std::string rs1, uint32_t offset);

// sb, sh, sw
uint32_t store (std::string mnemo, std::string rs2, std::string rs1, uint32_t offset);

// addi, slti, sltiu, xori, ori, andi
uint32_t op_imm (std::string mnemo, std::string rd, std::string rs1, uint32_t imm);

// slli, srli, srai
uint32_t op_imm_shift (std::string mnemo, std::string rd, std::string rs1, uint32_t imm);

// add, sub, sll, slt, sltu, xor, srl, sra, or, and
uint32_t op (std::string mnemo, std::string rd, std::string rs1, std::string rs2);

// Parses and evaluates the input. Returns the interpreted binary for the input.
uint32_t bingen (std::string input);

#endif  // __BINGEN_H__
