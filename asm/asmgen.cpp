#include "asmgen.h"

#include <string>
#include <map>

#ifndef __FUNCTION_NAME__
    #ifdef WIN32   //WINDOWS
        #define __FUNCTION_NAME__   __FUNCTION__
    #else
        #define __FUNCTION_NAME__   __func__
    #endif
#endif

std::map<std::string, int> regmap =
{
    { "zero", 0 },
    { "ra", 1 },
    { "sp", 2 },
    { "gp", 3 },
    { "tp", 4 },
    { "t0", 5 },
    { "t1", 6 },
    { "t2", 7 },
    { "s0", 8 },
    { "fp", 8 },
    { "s1", 9 },
    { "a0", 10 },
    { "a1", 11 },
    { "a2", 12 },
    { "a3", 13 },
    { "a4", 14 },
    { "a5", 15 },
    { "a6", 16 },
    { "a7", 17 },
    { "s2", 18 },
    { "s3", 19 },
    { "s4", 20 },
    { "s5", 21 },
    { "s6", 22 },
    { "s7", 23 },
    { "s8", 24 },
    { "s9", 25 },
    { "s10", 26 },
    { "s11", 27 },
    { "t3", 28 },
    { "t4", 29 },
    { "t5", 30 },
    { "t6", 31 }
};

void CheckImmediate(uint32_t imm, int range, std::string func_name) {
    if (imm >= (1 << range)) {
        std::cout << "ERROR(" << func_name << "): The immediate value should be smaller than 2 ^ " << range << std::endl;
        exit(1);
    }
}

uint32_t lui (std::string rd, std::string imm) {
    uint32_t imm_v = std::stoi(imm, nullptr, 16);
    CheckImmediate(imm_v, 20, __FUNCTION_NAME__);
    return (imm_v << 12) + regmap[rd] + 0b0110111;
}

uint32_t auipc (std::string rd, std::string imm) {
    uint32_t imm_v = std::stoi(imm, nullptr, 16);
    CheckImmediate(imm_v, 20, __FUNCTION_NAME__);
    return (imm_v << 12) + regmap[rd] + 0b0010111;
}

uint32_t jal (std::string rd, std::string imm) {
    return 0;
}

uint32_t jalr (std::string rd, std::string rs1, std::string imm) {
    return 0;
}

// beq, bne, blt, bge, bltu, bgeu
uint32_t branch (std::string rs1, std::string rs2, std::string dst) {
    return 0;
}

// lb, lh, lw, lbu, lhu
uint32_t load (std::string rd, std::string src) {
    return 0;
}

// sb, sh, sw
uint32_t store (std::string rs2, std::string dst) {
    return 0;
}

// addi, slti, sltiu, xori, ori, andi
uint32_t op_imm (std::string rd, std::string rs1, std::string imm) {
    return 0;
}

// slli, srli, srai
uint32_t op_imm_shift (std::string rd, std::string rs1, std::string imm) {
    return 0;
}

// add, sub, sll, slt, sltu, xor, srl, sra, or, and
uint32_t op (std::string rd, std::string rs1, std::string rs2) {
    return 0;
}

uint32_t asmgen (std::string mnemo, std::string arg0, std::string arg1, std::string arg2) {
    if (mnemo == "lui")
        return lui(arg0, arg1);
    if (mnemo == "auipc")
        return auipc(arg0, arg1);
    if (mnemo == "jal")
        return jal(arg0, arg1);
    if (mnemo == "jalr")
        return jalr(arg0, arg1, arg2);
    if (mnemo == "beq" || mnemo == "bne" || mnemo == "blt" || mnemo == "bge" || mnemo == "bltu")
        return branch(arg0, arg1, arg2);
    if (mnemo == "lb" || mnemo == "lh" || mnemo == "lw" || mnemo == "lbu" || mnemo == "lhu")
        return load(arg0, arg1);
    if (mnemo == "sb" || mnemo == "sh" || mnemo == "sw")
        return store(arg0, arg1);
    if (mnemo == "addi" || mnemo == "slti" || mnemo == "sltiu" || mnemo == "xori" || mnemo == "ori" || mnemo == "andi")
        return op_imm(arg0, arg1, arg2);
    if (mnemo == "slli" || mnemo == "srli" || mnemo == "srai")
        return op_imm_shift(arg0, arg1, arg2);
    if (mnemo == "add" || mnemo == "sub" || mnemo == "sll" || mnemo == "slt" || mnemo == "sltu" || mnemo == "xor" ||
        mnemo == "srl" || mnemo == "sra" || mnemo == "or" || mnemo == "and")
        return op(arg0, arg1, arg2);
    exit(1);
}
