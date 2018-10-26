#include "bingen.h"
#include <stdio.h>
#include <cctype>
#include <iostream>
#include <sstream>
#include <string>
#include <utility>
#include <cmath>
#include <assert.h>

void print_binary(int);

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
    { "t6", 31 },
};

BinGen::BinGen(std::ofstream ofs, bool is_verbose, bool is_debug)
  : is_verbose_(is_verbose),
    is_debug_(is_debug),
    ofs_(std::move(ofs)) {
    for (int i = 0; i < 32; i++) {
        std::string regname = "x" + std::to_string(i);
        regmap[regname] = i;
    }
}

uint32_t BinGen::lui (std::string rd, uint32_t imm) {
    CheckImmediate(imm, 20, "lui");
    Fields fields;
    fields.emplace_back(7, 0b0110111);
    fields.emplace_back(5, regmap[rd]);
    fields.emplace_back(20, imm);
    return Pack(fields);
}

uint32_t BinGen::auipc (std::string rd, uint32_t imm) {
    CheckImmediate(imm, 20, "auipc");
    Fields fields;
    fields.emplace_back(7, 0b0010111);
    fields.emplace_back(5, regmap[rd]);
    fields.emplace_back(20, imm);
    return Pack(fields);
}

uint32_t BinGen::jal (std::string rd, uint32_t imm) {
    CheckImmediate(imm, 20, "jal");
    Fields fields;
    fields.emplace_back(7, 0b1101111);
    fields.emplace_back(5, regmap[rd]);
    fields.emplace_back(8, (imm & 0xff000) >> 12);
    fields.emplace_back(1, (imm & 0x800) >> 11);
    fields.emplace_back(10,(imm & 0x7fe) >> 1);
    fields.emplace_back(1, (imm & 0x100000) >> 20);
    return Pack(fields);
}

uint32_t BinGen::jalr (std::string rd, std::string rs1, uint32_t imm) {
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
uint32_t BinGen::branch (std::string mnemo, std::string rs1, std::string rs2, uint32_t offset) {
    CheckImmediate(offset, 12, "branch");
    uint32_t funct3;
    if (mnemo == "beq") funct3 = 0b000;
    if (mnemo == "bne") funct3 = 0b001;
    if (mnemo == "blt") funct3 = 0b100;
    if (mnemo == "bge") funct3 = 0b101;
    if (mnemo == "bltu") funct3 = 0b110;
    if (mnemo == "bgeu") funct3 = 0b111;
    Fields fields;
    fields.emplace_back(7, 0b1100011);
    fields.emplace_back(1, (offset & 0x800) >> 11);
    fields.emplace_back(4, (offset & 0x1e) >> 1);
    fields.emplace_back(3, funct3);
    fields.emplace_back(5, regmap[rs1]);
    fields.emplace_back(5, regmap[rs2]);
    fields.emplace_back(6, (offset & 0x7e0) >> 5);
    fields.emplace_back(1, (offset & 0x1000) >> 12);
    return Pack(fields);
}

// lb, lh, lw, lbu, lhu
uint32_t BinGen::load (std::string mnemo, std::string rd, std::string rs1, uint32_t offset) {
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
    fields.emplace_back(3, funct3);
    fields.emplace_back(5, regmap[rs1]);
    fields.emplace_back(12, offset);
    return Pack(fields);
}

// sb, sh, sw
uint32_t BinGen::store (std::string mnemo, std::string rs2, std::string rs1, uint32_t offset) {
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
    fields.emplace_back(7, (offset & 0xfe0) >> 5);
    return Pack(fields);
}

// addi, slti, sltiu, xori, ori, andi
uint32_t BinGen::op_imm (std::string mnemo, std::string rd, std::string rs1, uint32_t imm) {
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
uint32_t BinGen::op_imm_shift (std::string mnemo, std::string rd, std::string rs1, uint32_t shamt) {
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
uint32_t BinGen::op (std::string mnemo, std::string rd, std::string rs1, std::string rs2) {
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

void BinGen::WriteData(uint32_t data) {
    unsigned char d[4];
    d[0] = data >> 24;
    d[1] = data >> 16;
    d[2] = data >> 8;
    d[3] = data;
    ofs_.write((char *)d, 4);
}

void BinGen::ClearNline_(){
    nline_ = 0;
}

void BinGen::ReadLabels(std::string input) {
    std::string mnemo;
    std::vector<std::string> vec;
    Parse(input, mnemo, vec);

    if (mnemo.back() != ':') {
        // The input wasn't a label.

        std::istringstream istr(input);
        std::string mnemo;
        istr >> mnemo;

        // Some pseudo-instructions will expand to two instrs
        if (mnemo == "la" || mnemo == "ret" || mnemo == "call") {
            nline_ += 2;
            return;
        }

        // Don't count these markers
        if (mnemo == ".file" || mnemo == ".option" || mnemo == ".text" || mnemo == ".align" ||
            mnemo == ".globl" || mnemo == ".type" || mnemo == ".size" || mnemo == ".ident") {
            std::printf("Note: |%s| was ignored\n", input.c_str());
            return;
        }

        // Don't count comments
        if (mnemo[0] == '#')
            return;

        nline_++;
        return;
    }
    mnemo.pop_back();
    std::cout << "new label " << mnemo << " registered at " << nline_ << std::endl;
    label_map_[mnemo] = nline_;
}

bool BinGen::is_sep(char c) {
    return (c == ' ' || c == '\t' || c == '\0' || c == '#' || c == ',');
}

// dirty...
void BinGen::Parse(std::string input, std::string &mnemo, std::vector<std::string> &arg) {
    int curr_pos = 0;
    int start_pos = 0;
    while (input[curr_pos] == ' ' || input[curr_pos] == '\t') curr_pos++;
    if (input[curr_pos] == '\0' || input[curr_pos] == '#') return;

    // mnemonic (or label)
    start_pos = curr_pos;
    while (!is_sep(input[curr_pos])) curr_pos++;
    mnemo = input.substr(start_pos, curr_pos - start_pos);
    while (input[curr_pos] == ' ' || input[curr_pos] == '\t') curr_pos++;
    if (input[curr_pos] == '\0' || input[curr_pos] == '#') return;

    // arg[0]
    start_pos = curr_pos;
    while (!is_sep(input[curr_pos])) curr_pos++;
    arg.push_back(input.substr(start_pos, curr_pos - start_pos));
    while (input[curr_pos] == ' ' || input[curr_pos] == '\t' || input[curr_pos] == ',') curr_pos++;
    if (input[curr_pos] == '\0' || input[curr_pos] == '#') return;

    // arg[1]
    start_pos = curr_pos;
    while (!is_sep(input[curr_pos])) curr_pos++;
    arg.push_back(input.substr(start_pos, curr_pos - start_pos));
    while (input[curr_pos] == ' ' || input[curr_pos] == '\t' || input[curr_pos] == ',') curr_pos++;
    if (input[curr_pos] == '\0' || input[curr_pos] == '#') return;

    // arg[2]
    start_pos = curr_pos;
    while (!is_sep(input[curr_pos])) curr_pos++;
    arg.push_back(input.substr(start_pos, curr_pos - start_pos));
}

BinGen::Inst BinGen::Convert(std::string input) {
    // Parse the input.
    std::string mnemo;
    std::vector<std::string> arg;
    Parse(input, mnemo, arg);
    uint32_t ret1, ret2;
    ret1 = ret2 = 0;

    // Skip the labels.
    if (mnemo.back() == ':')
        return Inst(0, 0);

    if (mnemo == ".file" || mnemo == ".option" || mnemo == ".text" || mnemo == ".align" ||
        mnemo == ".globl" || mnemo == ".type" || mnemo == ".size" || mnemo == ".ident")
        return Inst(0, 0);

    // Comment
    if (mnemo == "")
        return Inst(0, 0);

    // Note: Lack of arguments will cause crash here
    if (mnemo == "lui")
        ret1 = lui(arg[0], MyStoi(arg[1]));
    else if (mnemo == "auipc")
        ret1 = auipc(arg[0], MyStoi(arg[1]));
    else if (mnemo == "jal")
        ret1 = jal(arg[0], MyStoi(arg[1]));
    else if (mnemo == "jalr")
        ret1 = jalr(arg[0], arg[1], MyStoi(arg[2]));
    else if (mnemo == "beq" || mnemo == "bne" || mnemo == "blt" || mnemo == "bge" || mnemo == "bltu")
        ret1 = branch(mnemo,arg[0],arg[1], MyStoi(arg[2]));

    else if (mnemo == "lb" || mnemo == "lh" || mnemo == "lw" || mnemo == "lbu" || mnemo == "lhu") {
        std::string rs1; uint32_t offset;
        ParseOffset(arg[1], &rs1, &offset);
        ret1 = load(mnemo, arg[0], rs1, offset);
    }

    else if (mnemo == "sb" || mnemo == "sh" || mnemo == "sw") {
        std::string rs1; uint32_t offset;
        ParseOffset(arg[1], &rs1, &offset);
        ret1 = store(mnemo, arg[0], rs1, offset);
    }

    else if (mnemo == "addi" || mnemo == "slti" || mnemo == "sltiu" || mnemo == "xori" || mnemo == "ori" || mnemo == "andi"){
        ret1 = (op_imm(mnemo, arg[0], arg[1], MyStoi(arg[2])));
    }
    else if (mnemo == "slli" || mnemo == "srli" || mnemo == "srai")
        ret1 = (op_imm_shift(mnemo, arg[0], arg[1], MyStoi(arg[2])));
    else if (mnemo == "add" || mnemo == "sub" || mnemo == "sll" || mnemo == "slt" || mnemo == "sltu" || mnemo == "xor" ||
        mnemo == "srl" || mnemo == "sra" || mnemo == "or" || mnemo == "and")
        ret1 = (op(mnemo, arg[0], arg[1], arg[2]));


    // Pseudo-instructions
    // TODO: test pseudo-insturctions
    else if (mnemo == "la") {
        ret1 = (auipc(arg[0], MyStoi(arg[1]) >> 12));
        nline_++;
        ret2 = (op_imm("addi", arg[0], arg[0], MyStoi(arg[1]) & 0xfff));
    }

    else if (mnemo == "li") {
        ret1 = (op_imm("addi", arg[0], "zero", MyStoi(arg[1])));
    }

    else if (mnemo == "mv")
        ret1 =(op_imm("addi", arg[0], arg[1], 0));

    else if (mnemo == "neg")
        ret1 = (op("sub", arg[0], "zero", arg[1]));

    else if (mnemo == "bgt")
        ret1 = (branch("blt", arg[1], arg[0], MyStoi(arg[2])));

    else if (mnemo == "j")
        ret1 = (jal("x0", MyStoi(arg[0])));

    else if (mnemo == "jr")
        ret1 = (jalr("zero", arg[0], 0));

    else if (mnemo == "ret")
        ret1 = (jalr("x0", "x1", 0u));

    else if (mnemo == "call") {
        uint32_t imm = MyStoi(arg[0]);
        ret1 = (auipc("x6", (imm >> 12) + ((imm >> 11) & 1)));
        nline_++;
        ret2 = (jalr("x1", "x6", imm &  0xfff));
   }

    else {
        std::cout << "No such instructions: " << input << std::endl;
        return Inst(0, 0);
    }

    BinGen::Inst ret(ret1, ret2);
    nline_++;
    return ret;
}

void BinGen::Main(std::string input) {
    int old_nline = nline_;
    BinGen::Inst inst(Convert(input));

    if (is_debug_) {
        if (inst.first == 0)
            std::printf("\t%s\n", input.c_str());
        else
            std::printf("(%4d)\t%s\n", old_nline * 4, input.c_str());
    }

    // error
    if (inst.first == 0) return;

    if (is_verbose_) {
        std::cout << "(pc " << old_nline * 4 << "):" << input << std::endl << "    ";
        PrintInst(inst);
        std::cout << std::endl;
    }

    WriteData(inst.first);
    if (inst.second == 0) return;
    WriteData(inst.second);
}

uint32_t BinGen::Pack(Fields fields) {
    uint32_t ret = 0;
    for (auto itr = fields.rbegin();itr != fields.rend();++itr) {
        ret <<= itr->first;
        ret += itr->second;
    }
    return ret;
}

// immの上位(32 - range)bitが全部0(imm >= 0の場合)、もしくは全部1(imm < 0の場合)でなければダメ
void BinGen::CheckImmediate(uint32_t imm, int range, std::string func_name) {
    uint32_t mask = -1 << range;
    if (mask & imm && mask & (!imm)) {
        //$BId9fIU(B range bit$B?t$N:GBg$H:G>.$KF~$C$F$$$k$+!)(B
        std::cout << "ERROR(" << func_name << "): The immediate value " << imm << " should be smaller than 2 ^ " << range << std::endl;
        exit(1);
    }
}

void BinGen::ParseOffset(std::string arg, std::string* reg, uint32_t* offset) {
    size_t pos_lpar = arg.find("(");
    size_t pos_rpar = arg.find(")");
    *offset = std::stoi(arg.substr(0, pos_lpar));
    *reg = arg.substr(pos_lpar + 1, (pos_rpar - pos_lpar - 1));
}

uint32_t BinGen::MyStoi(std::string imm) {
    try {
        return std::stoi(imm, nullptr, 10);
    }
    catch (...) {
        // stoi() failed. |imm| was a label.
        // std::cout << imm << label_map_[imm] << std::endl;
        return (label_map_[imm] - nline_) * 4;
    }
}

// 01の列にする(4桁ごとに空白)
std::string BinGen::ToString(uint32_t inst) {
    std::string str;
    for (int i = 0; i < 32; i++) {
        str.push_back(((inst >> (31 - i)) & 0x1)? '1' : '0');
        if (i % 4 == 3) str.push_back(' ');
    }
    assert(str.size() == 40);
    return str;
}

std::string BinGen::InstToString(Inst inst) {
    if (inst.first == 0)
        return "";
    else if (inst.second == 0)
        return ToString(inst.first);
    else
        return ToString(inst.first) + "    " + ToString(inst.second);
}

void BinGen::PrintInt(uint32_t inst) {
    std::cout << ToString(inst) << std::endl;
}

void BinGen::PrintInst(Inst inst) {
    std::cout << InstToString(inst) << std::endl;
}

void print_binary(int val){
  //for debug
  for(int i = 31;i>=0;i--){
    printf("%d ",((val>>i)&0x1));
  }
  printf("\n");
}
