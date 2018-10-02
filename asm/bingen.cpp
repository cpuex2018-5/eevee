#include "bingen.h"

#include <sstream>
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

void ParseOffset(std::string arg, std::string* reg, uint32_t* offset) {
    size_t pos_lpar = arg.find("(");
    size_t pos_rpar = arg.find(")");
    *offset = std::stoi(arg.substr(0, pos_lpar));
    *reg = arg.substr(pos_lpar + 1, (pos_rpar - pos_lpar - 1));
}

uint32_t lui (std::string rd, uint32_t imm) {
    CheckImmediate(imm, 20, __FUNCTION_NAME__);
    return (imm << 12) + (regmap[rd] << 7) + 0b0110111;
}

uint32_t auipc (std::string rd, uint32_t imm) {
    CheckImmediate(imm, 20, __FUNCTION_NAME__);
    return (imm << 12) + (regmap[rd] << 7) + 0b0010111;
}

uint32_t jal (std::string rd, uint32_t imm) {
    CheckImmediate(imm, 20, "jal");
    // TODO
    return 0;
}

uint32_t jalr (std::string rd, std::string rs1, uint32_t imm) {
    CheckImmediate(imm, 12, "jalr");
    return (imm << 20) + (regmap[rs1] << 14) + (regmap[rd] << 7) + 0b1100111;
}

// beq, bne, blt, bge, bltu, bgeu
uint32_t branch (std::string mnemo, std::string rs1, std::string rs2, uint32_t offset) {
    return 0;
}

// lb, lh, lw, lbu, lhu
uint32_t load (std::string mnemo, std::string rd, std::string rs1, uint32_t offset) {
    CheckImmediate(offset, 12, "load");
    uint32_t funct3;
    if (mnemo == "lb") funct3 = 0b000;
    if (mnemo == "lh") funct3 = 0b001;
    if (mnemo == "lw") funct3 = 0b010;
    if (mnemo == "lbu") funct3 = 0b100;
    if (mnemo == "lhu") funct3 = 0b101;
    return (offset << 20) + (regmap[rs1] << 14) + (funct3 << 11) + (regmap[rd] << 7) + 0b0000011;
}

// sb, sh, sw
uint32_t store (std::string mnemo, std::string rd, std::string rs1, uint32_t offset) {
    return 0;
}

// addi, slti, sltiu, xori, ori, andi
uint32_t op_imm (std::string mnemo, std::string rd, std::string rs1, uint32_t imm) {
    return 0;
}

// slli, srli, srai
uint32_t op_imm_shift (std::string mnemo, std::string rd, std::string rs1, uint32_t imm) {
    return 0;
}

// add, sub, sll, slt, sltu, xor, srl, sra, or, and
uint32_t op (std::string mnemo, std::string rd, std::string rs1, std::string rs2) {
    return 0;
}

uint32_t bingen (std::string input) {
    // Parse the input.
    std::istringstream istr(input);
    std::string mnemo, arg0, arg1, arg2;
    istr >> mnemo >> arg0 >> arg1 >> arg2;
    if (arg0.back() == ',') arg0.pop_back();
    if (arg1.back() == ',') arg1.pop_back();
    if (arg2.back() == ',') arg2.pop_back();

    if (mnemo == "lui")
        return lui(arg0, std::stoi(arg1, nullptr, 16));
    if (mnemo == "auipc")
        return auipc(arg0, std::stoi(arg1, nullptr, 16));
    if (mnemo == "jal")
        return jal(arg0, std::stoi(arg1, nullptr, 16));
    if (mnemo == "jalr")
        return jalr(arg0, arg1, std::stoi(arg2, nullptr, 16));
    if (mnemo == "beq" || mnemo == "bne" || mnemo == "blt" || mnemo == "bge" || mnemo == "bltu")
        return branch(mnemo, arg0, arg1, std::stoi(arg2, nullptr, 16));

    if (mnemo == "lb" || mnemo == "lh" || mnemo == "lw" || mnemo == "lbu" || mnemo == "lhu") {
        std::string rs1; uint32_t offset;
        ParseOffset(arg1, &rs1, &offset);
        return load(mnemo, arg0, rs1, offset);
    }

    if (mnemo == "sb" || mnemo == "sh" || mnemo == "sw") {
        std::string rs1; uint32_t offset;
        ParseOffset(arg1, &rs1, &offset);
        return store(mnemo, arg0, rs1, offset);
    }

    if (mnemo == "addi" || mnemo == "slti" || mnemo == "sltiu" || mnemo == "xori" || mnemo == "ori" || mnemo == "andi")
        return op_imm(mnemo, arg0, arg1, std::stoi(arg2, nullptr, 16));
    if (mnemo == "slli" || mnemo == "srli" || mnemo == "srai")
        return op_imm_shift(mnemo, arg0, arg1, std::stoi(arg2, nullptr, 16));
    if (mnemo == "add" || mnemo == "sub" || mnemo == "sll" || mnemo == "slt" || mnemo == "sltu" || mnemo == "xor" ||
        mnemo == "srl" || mnemo == "sra" || mnemo == "or" || mnemo == "and")
        return op(mnemo, arg0, arg1, arg2);
    exit(1);
}
