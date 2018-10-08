#include "bingen.h"

#include <sstream>
#include <string>
#include <utility>
#include <vector>
#include <map>

typedef std::vector<std::pair<int, uint32_t> >  Fields;

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

uint32_t Pack(Fields fields) {
    uint32_t ret = 0;
    for (const auto& field : fields) {
        ret <<= field.first;
        ret += field.second;
    }
    return ret;
}

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
    CheckImmediate(imm, 20, "lui");
    Fields fields;
    fields.emplace_back(7, 0b0110111);
    fields.emplace_back(5, regmap[rd]);
    fields.emplace_back(20, imm);
    return Pack(fields);
}

uint32_t auipc (std::string rd, uint32_t imm) {
    CheckImmediate(imm, 20, "auipc");
    Fields fields;
    fields.emplace_back(7, 0b0010111);
    fields.emplace_back(5, regmap[rd]);
    fields.emplace_back(20, imm);
    return Pack(fields);
}

uint32_t jal (std::string rd, uint32_t imm) {
    CheckImmediate(imm, 20, "jal");
    Fields fields;
    fields.emplace_back(7, 0b1101111);
    fields.emplace_back(5, regmap[rd]);
    fields.emplace_back(8, imm & 0x7f800);
    fields.emplace_back(1, imm & 0x400);
    fields.emplace_back(10, imm & 0x3ff);
    fields.emplace_back(1, imm & 0x80000);
    return Pack(fields);
}

uint32_t jalr (std::string rd, std::string rs1, uint32_t imm) {
    CheckImmediate(imm, 12, "jalr");
    Fields fields;
    fields.emplace_back(7, 0b1100111);
    fields.emplace_back(5, regmap[rd]);
    fields.emplace_back(3, 0);
    fields.emplace_back(5, regmap[rs1]);
    fields.emplace_back(12, imm);
    return Pack(fields);
}

// beq, bne, blt, bge, bltu, bgeu
uint32_t branch (std::string mnemo, std::string rs1, std::string rs2, uint32_t offset) {
    CheckImmediate(offset, 12, "jalr");
    uint32_t funct3;
    if (mnemo == "beq") funct3 = 0b000;
    if (mnemo == "bne") funct3 = 0b001;
    if (mnemo == "blt") funct3 = 0b100;
    if (mnemo == "bge") funct3 = 0b101;
    if (mnemo == "bltu") funct3 = 0b110;
    if (mnemo == "bgeu") funct3 = 0b111;
    Fields fields;
    fields.emplace_back(7, 0b1100011);
    fields.emplace_back(1, offset & 0x400);
    fields.emplace_back(4, offset & 0xf);
    fields.emplace_back(3, funct3);
    fields.emplace_back(5, regmap[rs1]);
    fields.emplace_back(5, regmap[rs2]);
    fields.emplace_back(6, offset & 0x3f0);
    fields.emplace_back(1, offset & 0x800);
    return Pack(fields);
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
    Fields fields;
    fields.emplace_back(7, 0b0000011);
    fields.emplace_back(5, regmap[rd]);
    fields.emplace_back(3, 0);
    fields.emplace_back(5, regmap[rs1]);
    fields.emplace_back(12, offset);
    return Pack(fields);
}

// sb, sh, sw
uint32_t store (std::string mnemo, std::string rs2, std::string rs1, uint32_t offset) {
    CheckImmediate(offset, 12, "store");
    uint32_t funct3;
    if (mnemo == "sb") funct3 = 0b000;
    if (mnemo == "sh") funct3 = 0b001;
    if (mnemo == "sw") funct3 = 0b010;
    Fields fields;
    fields.emplace_back(7, 0b0100011);
    fields.emplace_back(5, offset & 0x1f);
    fields.emplace_back(3, funct3);
    fields.emplace_back(5, regmap[rs1]);
    fields.emplace_back(5, regmap[rs2]);
    fields.emplace_back(7, offset & 0xfe);
    return Pack(fields);
}

// addi, slti, sltiu, xori, ori, andi
uint32_t op_imm (std::string mnemo, std::string rd, std::string rs1, uint32_t imm) {
    CheckImmediate(imm, 12, "op_imm");
    uint32_t funct3;
    if (mnemo == "addi")  funct3 = 0b000;
    if (mnemo == "slti")  funct3 = 0b010;
    if (mnemo == "sltiu") funct3 = 0b011;
    if (mnemo == "xori")  funct3 = 0b100;
    if (mnemo == "ori")   funct3 = 0b110;
    if (mnemo == "andi")  funct3 = 0b111;
    Fields fields;
    fields.emplace_back(7, 0b0010011);
    fields.emplace_back(5, regmap[rd]);
    fields.emplace_back(3, funct3);
    fields.emplace_back(5, regmap[rs1]);
    fields.emplace_back(12, imm);
    return Pack(fields);
}

// slli, srli, srai
uint32_t op_imm_shift (std::string mnemo, std::string rd, std::string rs1, uint32_t shamt) {
    CheckImmediate(shamt, 5, "op_imm_shift");
    uint32_t funct3 = (mnemo == "slli") ? 0b001 : 0b101;
    uint32_t funct7 = (mnemo == "srai") ? 0b0100000 : 0b0000000;
    Fields fields;
    fields.emplace_back(7, 0b0010011);
    fields.emplace_back(5, regmap[rd]);
    fields.emplace_back(3, funct3);
    fields.emplace_back(5, regmap[rs1]);
    fields.emplace_back(5, shamt);
    fields.emplace_back(7, funct7);
    return Pack(fields);
}

// add, sub, sll, slt, sltu, xor, srl, sra, or, and
uint32_t op (std::string mnemo, std::string rd, std::string rs1, std::string rs2) {
    uint32_t funct3;
    if (mnemo == "add")  funct3 = 0b000;
    if (mnemo == "sub")  funct3 = 0b000;
    if (mnemo == "sll")  funct3 = 0b001;
    if (mnemo == "slt")  funct3 = 0b010;
    if (mnemo == "sltu") funct3 = 0b011;
    if (mnemo == "xor")  funct3 = 0b100;
    if (mnemo == "srl")  funct3 = 0b101;
    if (mnemo == "sra")  funct3 = 0b101;
    if (mnemo == "or")   funct3 = 0b110;
    if (mnemo == "and")  funct3 = 0b111;
    uint32_t funct7 = (mnemo == "sub" || mnemo == "sra") ? 0b0100000 : 0b0000000;
    Fields fields;
    fields.emplace_back(7, 0b0110011);
    fields.emplace_back(5, regmap[rd]);
    fields.emplace_back(3, funct3);
    fields.emplace_back(5, regmap[rs1]);
    fields.emplace_back(5, regmap[rs2]);
    fields.emplace_back(7, funct7);
    return Pack(fields);
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
