#include "bingen.h"
#include <stdio.h>
#include <cctype>
#include <iostream>
#include <sstream>
#include <string>
#include <utility>
#include <cmath>

void print_binary(int);
int is_imm(std::string);
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
    { "fp", 9 },
    { "s1", 10 },
    { "a0", 11 },
    { "a1", 12 },
    { "a2", 13 },
    { "a3", 14 },
    { "a4", 15 },
    { "a5", 16 },
    { "a6", 17 },
    { "a7", 18 },
    { "s2", 19 },
    { "s3", 20 },
    { "s4", 21 },
    { "s5", 22 },
    { "s6", 23 },
    { "s7", 24 },
    { "s8", 25 },
    { "s9", 26 },
    { "s10", 27 },
    { "s11", 28 },
    { "t3", 29 },
    { "t4", 30 },
    { "t5", 31 },
};

BinGen::BinGen(std::ofstream ofs)
  : ofs_(std::move(ofs)) {}

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
    
    CheckImmediateUnsigned(shamt, 5, "op_imm_shift");
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
    d[0] = data>>24;
    d[1] = data>>16;
    d[2] = data>>8;
    d[3] = data;
    ofs_.write((char *)d, 4);
}

void BinGen::ClearNline_(){
  this->nline_ = 0;
}


void BinGen::ReadLabels(std::string input) {
    if (input.back() != ':') {
        // The input wasn't a label.

        std::istringstream istr(input);
        std::string mnemo;
        istr >> mnemo;

        // Some pseudo-instructions will expand to two instrs
        if (mnemo == "la" || mnemo == "ret" || mnemo == "call") {
            nline_ += 2;
            return;
        }

        nline_++;
        return;
    }
    input.pop_back();
    std::cout << input << std::endl;
    label_map_[input] = nline_;
}

// dirty...
void BinGen::Parse(std::string input, std::string &mnemo, std::vector<std::string> &arg) {
    int curr_pos = 0;
    int start_pos = 0;
    while (input[curr_pos] == ' ' || input[curr_pos] == '\t') curr_pos++;
    // mnemonic (or label)
    start_pos = curr_pos;
    while (!(input[curr_pos] == ' ' || input[curr_pos] == '\t' || input[curr_pos] == '\0')) curr_pos++;
    mnemo = input.substr(start_pos, curr_pos - start_pos);
    while (input[curr_pos] == ' ' || input[curr_pos] == '\t') curr_pos++;
    if (input[curr_pos] == '\0') return;
    // arg[0]
    start_pos = curr_pos;
    while (!(input[curr_pos] == ' ' || input[curr_pos] == '\t' || input[curr_pos] == ',' || input[curr_pos] == '\0')) curr_pos++;
    arg.push_back(input.substr(start_pos, curr_pos - start_pos));
    while (input[curr_pos] == ' ' || input[curr_pos] == '\t') curr_pos++;
    if (input[curr_pos] == '\0') return;
    // arg[1]

    if(input[curr_pos] == ','){
      curr_pos++;
    }
    start_pos = curr_pos;
    while (!(input[curr_pos] == ' ' || input[curr_pos] == '\t' || input[curr_pos] == ',' || input[curr_pos] == '\0')) curr_pos++;
    arg.push_back(input.substr(start_pos, curr_pos - start_pos));
    while (input[curr_pos] == ' ' || input[curr_pos] == '\t') curr_pos++;
    if (input[curr_pos] == '\0') return;
    // arg[2]
    if(input[curr_pos] == ','){
      curr_pos++;
    }
    start_pos = curr_pos;
    while (!(input[curr_pos] == '\0')) curr_pos++;
    arg.push_back(input.substr(start_pos, curr_pos - start_pos));
}

void BinGen::Convert(std::string input) {
    // Parse the input.
  
    std::string mnemo;
    std::vector<std::string> arg;
    Parse(input, mnemo, arg);
    if (mnemo.back() == ':') {
        // Skip the labels.
        return;
    }
    // Note: Lack of arguments will cause crash here
    if (mnemo == "lui")
        WriteData(lui(arg[0], std::stoi(arg[1], nullptr, 16)));
    else if (mnemo == "auipc")
        WriteData(auipc(arg[0], std::stoi(arg[1], nullptr, 16)));
    else if (mnemo == "jal"){
        if(is_imm(arg[1]) == 1){
          WriteData(jal(arg[0],(4*label_map_[arg[1]]-4*nline_)));
        }
        else{
          WriteData(jal(arg[0], std::stoi(arg[1], nullptr, 16)));
        }
        std::cout << "jal" << mnemo <<std::endl;
    }
    else if (mnemo == "jalr"){
        if(is_imm(arg[2]) == 1){
          WriteData(jalr(arg[0],arg[1],(4*label_map_[arg[2]]-4*nline_)));
        }
        else{
          WriteData(jalr(arg[0], arg[1], std::stoi(arg[2], nullptr, 16)));
        }
    }
    else if (mnemo == "beq" || mnemo == "bne" || mnemo == "blt" || mnemo == "bge" || mnemo == "bltu") {
          if(is_imm(arg[2]) == 1){
                WriteData(branch(mnemo,arg[0],arg[1],(4*label_map_[arg[2]]-4*nline_)));
          }
          else{
                WriteData(branch(mnemo,arg[0],arg[1],std::stoi(arg[2],nullptr,16)));
          }
          //WriteData(branch(mnemo, arg[0], arg[1], MyStoi(arg[2])));
    }

    else if (mnemo == "lb" || mnemo == "lh" || mnemo == "lw" || mnemo == "lbu" || mnemo == "lhu") {
        std::string rs1; uint32_t offset;
        ParseOffset(arg[1], &rs1, &offset);
        WriteData(load(mnemo, arg[0], rs1, offset));
    }

    else if (mnemo == "sb" || mnemo == "sh" || mnemo == "sw") {
        std::string rs1; uint32_t offset;
        ParseOffset(arg[1], &rs1, &offset);
        WriteData(store(mnemo, arg[0], rs1, offset));
    }

    else if (mnemo == "addi" || mnemo == "slti" || mnemo == "sltiu" || mnemo == "xori" || mnemo == "ori" || mnemo == "andi"){
        WriteData(op_imm(mnemo, arg[0], arg[1], std::stoi(arg[2], nullptr, 16)));
    }
    else if (mnemo == "slli" || mnemo == "srli" || mnemo == "srai")
        WriteData(op_imm_shift(mnemo, arg[0], arg[1], std::stoi(arg[2], nullptr, 16)));
    else if (mnemo == "add" || mnemo == "sub" || mnemo == "sll" || mnemo == "slt" || mnemo == "sltu" || mnemo == "xor" ||
        mnemo == "srl" || mnemo == "sra" || mnemo == "or" || mnemo == "and")
        WriteData(op(mnemo, arg[0], arg[1], arg[2]));


    // Pseudo-instructions
    else if (mnemo == "ret") {
        WriteData(jalr("x0", "x1", 0u));
    }

    else if (mnemo == "call") {
        WriteData(auipc("x6", MyStoi(arg[0]) >> 12));
        WriteData(jalr("x1", "x6", MyStoi(arg[0]) & 0xfff));
    }
    std::cout << "mnemo" << mnemo << "nline_" << nline_ << std::endl;
    nline_ = nline_ + 1;
}

uint32_t BinGen::Pack(Fields fields) {
    uint32_t ret = 0;
    for (auto itr = fields.rbegin();itr != fields.rend();++itr) {
        ret <<= itr->first;
        ret += itr->second;
    }
    return ret;
}

void BinGen::CheckImmediate(uint32_t imm, int range, std::string func_name) {
  int v = std::pow(2,(range-1));
  if ((int)imm > (v-1) || (int)imm < (-v)) {
        //符号付 range bit数の最大と最小に入っているか？
        std::cout << "ERROR(" << func_name << "): The immediate value should be smaller than 2 ^ " << range << std::endl;
        exit(1);
  }
}
void BinGen::CheckImmediateUnsigned(uint32_t imm,int range, std::string func_name){
  //shiftするときの即値検査には符号なしのものを使う
  int v = std::pow(2,range);
  if((int) imm > (v-1) || (int) imm < 0){
        std::cout << "ERROR(" << func_name << "): The immediate value should be smaller than 2 ^ " << range << std::endl;
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
        return std::stoi(imm, nullptr, 16);
    }
    catch (...) {
        // |imm| was a label.
        return label_map_[imm];
    }
}

int is_imm(std::string str){
  for(char& c :str){
    if(!isdigit(c) && c!='-'){
      return 1;
    }
  }
  return 0;
}

void print_binary(int val){
  //for debug
  for(int i = 31;i>=0;i--){
    printf("%d ",((val>>i)&0x1));
  }
  printf("\n");
}
