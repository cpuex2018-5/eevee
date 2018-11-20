#include "bingen.h"
#include <stdio.h>
#include <cctype>
#include <iostream>
#include <sstream>
#include <string>
#include <utility>
#include <cmath>
#include <assert.h>
#include "utils.h"

// round mode (dummy)
#define RM 0b000

// simulatorのMEM_SIZE
#define MEM_SIZE 0x600010

BinGen::BinGen(std::ofstream ofs, bool is_verbose, bool is_debug, bool is_ascii)
  : is_verbose_(is_verbose),
    is_debug_(is_debug),
    is_ascii_(is_ascii),
    ofs_(std::move(ofs)),
    regmap_(create_regmap()),
    fregmap_(create_fregmap()) {}

void BinGen::ReadLabels(std::string input) {
    std::string mnemo;
    std::vector<std::string> arg;
    Parse(input, mnemo, arg);

    if (mnemo == ".text") {
        data_mode_ = false;
        return;
    }

    if (mnemo == ".data") {
        data_mode_ = true;
        return;
    }

    if (mnemo.back() != ':') {
        // The input wasn't a label.

        // Some pseudo-instructions will expand to two instrs
        if (mnemo == "la" || mnemo == "ret" || mnemo == "call" || mnemo == "fli") {
            nline_ += 2;
            return;
        }

        if (mnemo == "li" && MyStoi(arg[1]) > (1 << 11) - 1) {
            nline_ += 2;
            return;
        }

        // Don't count these markers
        if (mnemo == ".file" || mnemo == ".option" || mnemo == ".align" ||
            mnemo == ".globl" || mnemo == ".type" || mnemo == ".size" || mnemo == ".ident") {
            // std::fprintf(stderr, "[INFO] |%s| was ignored\n", input.c_str());
            return;
        }

        // Don't count comments
        if (mnemo == "")
            return;

        nline_++;
        return;
    }
    mnemo.pop_back();
    // std::cerr << "[INFO] new label " << mnemo << " registered at " << nline_ * 4 << std::endl;
    label_map_[mnemo] = nline_;
}

void BinGen::OnReadLabelsCompleted(){
    nline_ = 0;
    data_mode_ = false;
}

void BinGen::Main(std::string input) {
    int old_nline = nline_;
    BinGen::Inst inst(Convert(input));

    if (is_debug_) {
        if (inst.first == 0 && inst.second == 0xffffffff) { // not an instruction or a data
            if (input[0] != '#')
                std::printf("\t%s\n", input.c_str());
        } else {
            std::printf("(%d)\t%s\n", old_nline * 4, input.c_str());
        }
    }

    // not an instruction or a data
    if (inst.first == 0 && inst.second == 0xffffffff) return;

    if (is_verbose_) {
        std::cout << "(pc " << old_nline * 4 << "):" << input << std::endl;
        PrintInst(inst);
        std::cout << std::endl;
    }

    if (is_ascii_) {
        WriteDataInAscii(inst.first);
        if (inst.second == 0) return;
        WriteDataInAscii(inst.second);
        return;
    }

    WriteDataInBinary(inst.first);
    if (inst.second == 0) return;
    WriteDataInBinary(inst.second);
}

void BinGen::Finish() {
    if (is_ascii_) {
        WriteDataInAscii(0);
        return;
    }
    WriteDataInBinary(0);
    ofs_.close();
}

// dirty...
void BinGen::Parse(std::string input, std::string &mnemo, std::vector<std::string> &arg) {
    auto is_sep = [](char c){ return (c == ' ' || c == '\t' || c == '\0' || c == '#' || c == ','); };
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

void BinGen::ParseOffset(std::string arg, std::string* reg, uint32_t* offset) {
    size_t pos_lpar = arg.find("(");
    size_t pos_rpar = arg.find(")");
    *offset = std::stoi(arg.substr(0, pos_lpar));
    *reg = arg.substr(pos_lpar + 1, (pos_rpar - pos_lpar - 1));
}

BinGen::Inst BinGen::Convert(std::string input) {
    std::string mnemo;
    std::vector<std::string> arg;
    Parse(input, mnemo, arg);
    uint32_t ret1, ret2;
    ret1 = ret2 = 0;

    if (mnemo == ".text") {
        data_mode_ = false;
        return Inst(0, 0xffffffff);
    }

    if (mnemo == ".data") {
        data_mode_ = true;
        return Inst(0, 0xffffffff);
    }

    // Labels
    if (mnemo.back() == ':')
        return Inst(0, 0xffffffff);

    if (mnemo == ".file" || mnemo == ".option" || mnemo == ".align" ||
        mnemo == ".globl" || mnemo == ".type" || mnemo == ".size" || mnemo == ".ident")
        return Inst(0, 0xffffffff);

    // Comment
    if (mnemo == "")
        return Inst(0, 0xffffffff);

    // Data
    if (mnemo == ".word") {
        assert(data_mode_);
        assert(1 == arg.size());
        ret1 = MyStoi(arg[0]);
    }

    // RV32I basic instructions ==============================================================
    else if (mnemo == "lui") {
        assert(2 == arg.size());
        ret1 = lui(arg[0], MyStoi(arg[1]));
    }
    else if (mnemo == "auipc") {
        assert(2 == arg.size());
        ret1 = auipc(arg[0], MyStoi(arg[1]));
    }
    else if (mnemo == "jal") {
        assert(2 == arg.size());
        ret1 = jal(arg[0], MyStoi(arg[1]));
    }
    else if (mnemo == "jalr") {
        assert(3 == arg.size());
        ret1 = jalr(arg[0], arg[1], MyStoi(arg[2]));
    }
    else if (mnemo == "beq" || mnemo == "bne" || mnemo == "blt" || mnemo == "bge" || mnemo == "bltu") {
        assert(3 == arg.size());
        ret1 = branch(mnemo,arg[0],arg[1], MyStoi(arg[2]));

    }
    else if (mnemo == "lb" || mnemo == "lh" || mnemo == "lw" || mnemo == "lbu" || mnemo == "lhu") {
        assert(2 == arg.size());
        std::string rs1; uint32_t offset;
        ParseOffset(arg[1], &rs1, &offset);
        ret1 = load(mnemo, arg[0], rs1, offset);
    }

    else if (mnemo == "sb" || mnemo == "sh" || mnemo == "sw") {
        assert(2 == arg.size());
        std::string rs1; uint32_t offset;
        ParseOffset(arg[1], &rs1, &offset);
        ret1 = store(mnemo, arg[0], rs1, offset);
    }

    else if (mnemo == "addi" || mnemo == "slti" || mnemo == "sltiu" || mnemo == "xori" || mnemo == "ori" || mnemo == "andi") {
        assert(3 == arg.size());
        ret1 = op_imm(mnemo, arg[0], arg[1], MyStoi(arg[2]));
    }
    else if (mnemo == "slli" || mnemo == "srli" || mnemo == "srai") {
        assert(3 == arg.size());
        ret1 = (op_imm_shift(mnemo, arg[0], arg[1], MyStoi(arg[2])));
    }
    else if (mnemo == "add" || mnemo == "sub" || mnemo == "sll" || mnemo == "slt" || mnemo == "sltu" || mnemo == "xor" ||
        mnemo == "srl" || mnemo == "sra" || mnemo == "or" || mnemo == "and") {
        assert(3 == arg.size());
        ret1 = op(mnemo, arg[0], arg[1], arg[2]);
    }

    // I/O instructions (temporary) ==========================================================
    else if (mnemo == "w" || mnemo == "r") {
        assert(1 == arg.size());
        ret1 = io(mnemo, arg[0]);
    }

    // Floating-point instructions ===========================================================
    else if (mnemo == "flw") {
        assert(2 == arg.size());
        std::string rs; uint32_t offset;
        ParseOffset(arg[1], &rs, &offset);
        ret1 = flw(arg[0], rs, offset);
    }

    else if (mnemo == "fsw") {
        assert(2 == arg.size());
        std::string rs; uint32_t offset;
        ParseOffset(arg[1], &rs, &offset);
        ret1 = fsw(arg[0], rs, offset);
    }

    else if (mnemo == "feq.s" || mnemo == "flt.s" || mnemo == "fle.s") {
        assert(3 == arg.size());
        ret1 = f_cmp(mnemo, arg[0], arg[1], arg[2]);
    }

    else if (mnemo == "fsqrt.s" || mnemo == "fabs.s" || mnemo == "fneg.s" || mnemo == "fmv.s" || mnemo == "finv.s") {
        assert(2 == arg.size());
        ret1 = f_op2(mnemo, arg[0], arg[1]);
    }
    else if (mnemo == "fadd.s" || mnemo == "fsub.s" || mnemo == "fmul.s" || mnemo == "fdiv.s") {
        assert(3 == arg.size());
        ret1 = f_op3(mnemo, arg[0], arg[1], arg[2]);
    }

    // Pseudo-instructions ===================================================================
    else if (mnemo == "la") {
        assert(2 == arg.size());
        uint32_t tmp = MyStoi(arg[1]);
        ret1 = auipc(arg[0], ((tmp >> 12) + ((tmp >> 11) & 0x1)) & 0xfffff);
        nline_++;
        ret2 = op_imm("addi", arg[0], arg[0], tmp & 0xfff);
    }

    else if (mnemo == "li") {
        assert(2 == arg.size());
        uint32_t tmp = MyStoi(arg[1]);
        if (tmp > (1 << 11) - 1) {
            ret1 = lui(arg[0], ((tmp >> 12) + ((tmp >> 11) & 0x1)) & 0xfffff);
            nline_++;
            ret2 = op_imm("addi", arg[0], arg[0], tmp & 0xfff);
        } else {
            ret1 = op_imm("addi", arg[0], "zero", tmp);
        }
    }

    else if (mnemo == "mv") {
        assert(2 == arg.size());
        ret1 = op_imm("addi", arg[0], arg[1], 0);
    }
    else if (mnemo == "not") {
        assert(2 == arg.size());
        ret1 = op_imm("xori", arg[0], arg[1], -1);
    }
    else if (mnemo == "neg") {
        assert(2 == arg.size());
        ret1 = op("sub", arg[0], "zero", arg[1]);
    }
    else if (mnemo == "bgt") {
        assert(3 == arg.size());
        ret1 = branch("blt", arg[1], arg[0], MyStoi(arg[2]));
    }
    else if (mnemo == "ble") {
        assert(3 == arg.size());
        ret1 = branch("bge", arg[1], arg[0], MyStoi(arg[2]));
    }
    else if (mnemo == "b") {
        assert(1 == arg.size());
        // TODO: bgeじゃなくbeqにする？
        ret1 = branch("bge", "zero", "zero", MyStoi(arg[0]));
    }
    else if (mnemo == "j") {
        assert(1 == arg.size());
        ret1 = jal("x0", MyStoi(arg[0]));
    }
    else if (mnemo == "jr") {
        assert(1 == arg.size());
        ret1 = jalr("zero", arg[0], 0);
    }
    else if (mnemo == "ret") {
        assert(0 == arg.size());
        ret1 = jalr("x0", "x1", 0u);
    }
    else if (mnemo == "call") {
        assert(1 == arg.size());
        uint32_t imm = MyStoi(arg[0]);
        // jalrが符号拡張するため、下から12bit目が1の場合はauipcに渡す即値に1を足す
        // その結果2 ^ 12を超える場合は下位20bitをわたす
        ret1 = auipc("x6", ((imm >> 12) + ((imm >> 11) & 1)) & 0xfffff);
        nline_++;
        ret2 = jalr("x1", "x6", imm & 0xfff);
    }

    else if (mnemo == "fli") {
        // Note: t6レジスタが潰される
        assert(2 == arg.size());
        uint32_t imm = MyStoi(arg[1]) + nline_ * 4 + MEM_SIZE;
        std::string tmp_reg = "t6";
        ret1 = lui(tmp_reg, ((imm >> 12) + ((imm >> 11) & 1)) & 0xfffff);
        nline_++;
        ret2 = flw(arg[0], tmp_reg, (imm & 0xfff));
    }

    else {
        fprintf(stderr, "No such instructions: %s\n", input.c_str());
        return Inst(0, -1);
    }

    BinGen::Inst ret(ret1, ret2);
    nline_++;
    return ret;
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
    if (inst.first == 0 && inst.second == 0xffffffff)
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

uint32_t BinGen::lui (std::string rd, uint32_t imm) {
    CheckImmediate(imm, 20, "lui");
    Fields fields{ {7, 0b0110111}, {5, regmap_.at(rd)}, {20, imm} };
    return Pack(fields);
}

uint32_t BinGen::auipc (std::string rd, uint32_t imm) {
    CheckImmediate(imm, 20, "auipc");
    Fields fields{ {7, 0b0010111}, {5, regmap_.at(rd)}, {20, imm} };
    return Pack(fields);
}

uint32_t BinGen::jal (std::string rd, uint32_t imm) {
    CheckImmediate(imm, 20, "jal");
    Fields fields { {7, 0b1101111},
                    {5, regmap_.at(rd)},
                    {8, (imm & 0xff000) >> 12},
                    {1, (imm & 0x800) >> 11},
                    {10,(imm & 0x7fe) >> 1},
                    {1, (imm & 0x100000) >> 20} };
    return Pack(fields);
}

uint32_t BinGen::jalr (std::string rd, std::string rs1, uint32_t imm) {
    CheckImmediate(imm, 12, "jalr");
    Fields fields { {7, 0b1100111},
                    {5, regmap_.at(rd)},
                    {3, 0},
                    {5, regmap_.at(rs1)},
                    {12, imm} };
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
    Fields fields { {7, 0b1100011},
                    {1, (offset & 0x800) >> 11},
                    {4, (offset & 0x1e) >> 1},
                    {3, funct3},
                    {5, regmap_.at(rs1)},
                    {5, regmap_.at(rs2)},
                    {6, (offset & 0x7e0) >> 5},
                    {1, (offset & 0x1000) >> 12} };
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
    Fields fields{ {7, 0b0000011},
                   {5, regmap_.at(rd)},
                   {3, funct3},
                   {5, regmap_.at(rs1)},
                   {12, offset} };
    return Pack(fields);
}

// sb, sh, sw
uint32_t BinGen::store (std::string mnemo, std::string rs2, std::string rs1, uint32_t offset) {
    CheckImmediate(offset, 12, "store");
    uint32_t funct3;
    if (mnemo == "sb") funct3 = 0b000;
    if (mnemo == "sh") funct3 = 0b001;
    if (mnemo == "sw") funct3 = 0b010;
    Fields fields { {7, 0b0100011},
                    {5, offset & 0x1f},
                    {3, funct3},
                    {5, regmap_.at(rs1)},
                    {5, regmap_.at(rs2)},
                    {7, (offset & 0xfe0) >> 5} };
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
    Fields fields { {7, 0b0010011},
                    {5, regmap_.at(rd)},
                    {3, funct3},
                    {5, regmap_.at(rs1)},
                    {12, imm} };
    return Pack(fields);
}

// slli, srli, srai
uint32_t BinGen::op_imm_shift (std::string mnemo, std::string rd, std::string rs1, uint32_t shamt) {
    CheckImmediate(shamt, 5, "op_imm_shift");
    uint32_t funct3 = (mnemo == "slli") ? 0b001 : 0b101;
    uint32_t funct7 = (mnemo == "srai") ? 0b0100000 : 0b0000000;
    Fields fields { {7, 0b0010011},
                    {5, regmap_.at(rd)},
                    {3, funct3},
                    {5, regmap_.at(rs1)},
                    {5, shamt},
                    {7, funct7} };
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
    Fields fields { {7, 0b0110011},
                    {5, regmap_.at(rd)},
                    {3, funct3},
                    {5, regmap_.at(rs1)},
                    {5, regmap_.at(rs2)},
                    {7, funct7} };
    return Pack(fields);
}

// |32              15|14  12|11   7|6     0|
// |000000000000000000|funct3|  reg | opcode|
// |000000000000000000| 000  |  rs  |1111111| w (write)
// |000000000000000000| 001  |  rd  |1111111| r (read)
uint32_t BinGen::io (std::string mnemo, std::string reg) {
    uint32_t funct3 = (mnemo == "w") ? 0b000 : 0b001;
    Fields fields { {7, 0b1111111},
                    {5, regmap_.at(reg)},
                    {3, funct3},
                    {18, 0x00000} };
    return Pack(fields);
}

uint32_t BinGen::flw(std::string frd, std::string rs, uint32_t imm) {
    CheckImmediate(imm, 12, "flw");
    Fields fields { {7, 0b0000111},
                    {5, fregmap_.at(frd)},
                    {3, 0b010},
                    {5, regmap_.at(rs)},
                    {12, imm & 0xfff} };
    return Pack(fields);
}

uint32_t BinGen::fsw(std::string frs2, std::string frs1, uint32_t imm) {
    CheckImmediate(imm, 12, "fsw");
    Fields fields { {7, 0b0100111},
                    {5, imm & 0x1f},
                    {3, 0b010},
                    {5, regmap_.at(frs1)},
                    {5, fregmap_.at(frs2)},
                    {7, (imm >> 5) & 0x7f} };
    return Pack(fields);
}

// fsqrt.s, fabs.s, fneg.s, fmv.s, finv.s (2 operands)
uint32_t BinGen::f_op2(std::string mnemo, std::string frd, std::string frs) {
    uint32_t funct7 = (mnemo == "fsqrt.s") ? 0b0101100 : 0b0010000;
    uint32_t funct3;
    if (mnemo == "fsqrt.s") funct3 = RM;
    if (mnemo == "fmv.s")   funct3 = 0b000;
    if (mnemo == "fneg.s")  funct3 = 0b001;
    if (mnemo == "fabs.s")  funct3 = 0b010;
    if (mnemo == "finv.s")  funct3 = 0b011;
    Fields fields { {7, 0b1010011},
                    {5, fregmap_.at(frd)},
                    {3, funct3},
                    {5, fregmap_.at(frs)},
                    {5, 0b00000},
                    {7, funct7} };
    return Pack(fields);
}

// fadd.s, fsub.s, fmul.s, fdiv.s (3 operands)
uint32_t BinGen::f_op3(std::string mnemo, std::string frd, std::string frs1, std::string frs2) {
    uint32_t funct7;
    if (mnemo == "fadd.s") funct7 = 0b0000000;
    if (mnemo == "fsub.s") funct7 = 0b0000100;
    if (mnemo == "fmul.s") funct7 = 0b0001000;
    if (mnemo == "fdiv.s") funct7 = 0b0001100;
    Fields fields { {7, 0b1010011},
                    {5, fregmap_.at(frd)},
                    {3, RM},
                    {5, fregmap_.at(frs1)},
                    {5, fregmap_.at(frs2)},
                    {7, funct7} };
    return Pack(fields);
}

// feq.s, flt.s, fle.s
uint32_t BinGen::f_cmp(std::string mnemo, std::string rd, std::string frs1, std::string frs2) {
    uint32_t funct3;
    if (mnemo == "feq.s") funct3 = 0b010;
    if (mnemo == "flt.s") funct3 = 0b001;
    if (mnemo == "fle.s") funct3 = 0b000;
    Fields fields { {7, 0b1010011},
                    {5, regmap_.at(rd)},
                    {3, funct3},
                    {5, fregmap_.at(frs1)},
                    {5, fregmap_.at(frs2)},
                    {7, 0b1010000} };
    return Pack(fields);
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
    if (mask & imm && mask & (~imm)) {
        //$BId9fIU(B range bit$B?t$N:GBg$H:G>.$KF~$C$F$$$k$+!)(B
        std::cerr << "\x1b[31m[ERROR](" << func_name << "): The immediate value " << imm << " should be smaller than 2 ^ " << range << "\x1b[39m\n";
        exit(1);
    }
}

void BinGen::WriteDataInBinary(uint32_t data) {
    unsigned char d[4];
    d[0] = data >> 24;
    d[1] = data >> 16;
    d[2] = data >> 8;
    d[3] = data;
    ofs_.write((char *)d, 4);
}

void BinGen::WriteDataInAscii(uint32_t data) {
    std::string str;
    for (int i = 0; i < 32; i++) {
        str.push_back(((data >> (31 - i)) & 0x1)? '1' : '0');
    }
    assert(str.size() == 32);
    ofs_ << str << std::endl;
}

uint32_t BinGen::MyStoi(std::string imm) {
    try {
        return std::stoi(imm, nullptr, 10);
    }
    catch (...) {
        // stoi() failed. |imm| was a label.
        // std::cout << imm << label_map_[imm] << std::endl;
        if (label_map_[imm] == 0 && imm != "main") {
            std::cerr << "\x1b[31m[ERROR] Undefined symbol: " << imm << "\x1b[39m\n";
            return 0;
        }
        return (label_map_[imm] - nline_) * 4;
    }
}

void print_binary(int val){
  //for debug
  for(int i = 31;i>=0;i--){
    printf("%d ",((val>>i)&0x1));
  }
  printf("\n");
}
