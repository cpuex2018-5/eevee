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
#define MEM_SIZE 0x10000010

BinGen::BinGen(std::ofstream ofs, std::ofstream coefs, bool is_verbose, bool is_debug, bool is_ascii)
  : is_verbose_(is_verbose),
    is_debug_(is_debug),
    is_ascii_(is_ascii),
    ofs_(std::move(ofs)),
    coefs_(std::move(coefs)),
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

    if (data_mode_) {
        if (mnemo.back() != ':') {
            assert(mnemo == ".word");
            return;
        }
        mnemo.pop_back();
        // std::cerr << "[INFO] new label " << mnemo << " registered at " << ndata_ * 4 << std::endl;
        data_map_[mnemo] = ndata_++;
        return;
    }

    if (mnemo.back() != ':') {
        // The input wasn't a label.

        // Some pseudo-instructions will expand to two instrs
        if (mnemo == "la" || mnemo == "ret" || mnemo == "call" || mnemo == "fli" || mnemo == "tail") {
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
        if (inst.is_inst()) {
            std::printf("(%d)\t%s\n", old_nline * 4, input.c_str());
        } else {
            std::printf("\t%s\n", input.c_str());
        }
    }

    if (is_verbose_) {
        std::cout << "(pc " << old_nline * 4 << "):" << input << std::endl;
        if (inst.is_inst()) PrintInst(inst);
        std::cout << std::endl;
    }

    if (inst.is_empty()) return;

    if (!inst.is_inst()) {
        assert(inst.is_data());
        WriteData(inst.data);
        return;
    }

    WriteInst(inst.fst);

    if (!inst.is_double_inst())
        return;

    WriteInst(inst.snd);
}

void BinGen::Finish() {
    WriteInst(0);
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
    uint32_t inst1, inst2;
    inst1 = inst2 = 0xffffffff;

    if (mnemo == ".text") {
        data_mode_ = false;
        return Inst();
    }

    if (mnemo == ".data") {
        data_mode_ = true;
        return Inst();
    }

    // Labels
    if (mnemo.back() == ':')
        return Inst();

    if (mnemo == ".file" || mnemo == ".option" || mnemo == ".align" ||
        mnemo == ".globl" || mnemo == ".type" || mnemo == ".size" || mnemo == ".ident")
        return Inst();

    // Comment
    if (mnemo == "")
        return Inst();

    // Data
    if (mnemo == ".word") {
        assert(data_mode_);
        assert(1 == arg.size());
        return Inst(0xffffffff, 0xffffffff, MyStoi(arg[0]));
    }

    // RV32I basic instructions ==============================================================
    else if (mnemo == "lui") {
        assert(2 == arg.size());
        inst1 = lui(arg[0], MyStoi(arg[1]));
    }
    else if (mnemo == "auipc") {
        assert(2 == arg.size());
        inst1 = auipc(arg[0], MyStoi(arg[1]));
    }
    else if (mnemo == "jalr") {
        assert(3 == arg.size());
        inst1 = jalr(arg[0], arg[1], MyStoi(arg[2]));
    }
    else if (mnemo == "beq" || mnemo == "bne" || mnemo == "blt" || mnemo == "bge" || mnemo == "bltu") {
        assert(3 == arg.size());
        inst1 = branch(mnemo,arg[0],arg[1], MyStoi(arg[2]));

    }
    else if (mnemo == "lb" || mnemo == "lh" || mnemo == "lw" || mnemo == "lbu" || mnemo == "lhu") {
        assert(2 == arg.size());
        std::string rs1; uint32_t offset;
        ParseOffset(arg[1], &rs1, &offset);
        inst1 = load(mnemo, arg[0], rs1, offset);
    }

    else if (mnemo == "sb" || mnemo == "sh" || mnemo == "sw") {
        assert(2 == arg.size());
        std::string rs1; uint32_t offset;
        ParseOffset(arg[1], &rs1, &offset);
        inst1 = store(mnemo, arg[0], rs1, offset);
    }

    else if (mnemo == "addi" || mnemo == "slti" || mnemo == "sltiu" || mnemo == "xori" || mnemo == "ori" || mnemo == "andi") {
        assert(3 == arg.size());
        inst1 = op_imm(mnemo, arg[0], arg[1], MyStoi(arg[2]));
    }
    else if (mnemo == "slli" || mnemo == "srli" || mnemo == "srai") {
        assert(3 == arg.size());
        inst1 = (op_imm_shift(mnemo, arg[0], arg[1], MyStoi(arg[2])));
    }
    else if (mnemo == "add" || mnemo == "sub" || mnemo == "sll" || mnemo == "slt" || mnemo == "sltu" || mnemo == "xor" ||
        mnemo == "srl" || mnemo == "sra" || mnemo == "or" || mnemo == "and") {
        assert(3 == arg.size());
        inst1 = op(mnemo, arg[0], arg[1], arg[2]);
    }

    // I/O instructions (temporary) ==========================================================
    else if (mnemo == "w") {
        assert(1 == arg.size());
        inst1 = write(arg[0]);
    }
    else if (mnemo == "r") {
        assert(1 == arg.size());
        inst1 = read(arg[0]);
    }

    // Floating-point instructions ===========================================================
    else if (mnemo == "flw") {
        assert(2 == arg.size());
        std::string rs; uint32_t offset;
        ParseOffset(arg[1], &rs, &offset);
        inst1 = flw(arg[0], rs, offset);
    }

    else if (mnemo == "fsw") {
        assert(2 == arg.size());
        std::string rs; uint32_t offset;
        ParseOffset(arg[1], &rs, &offset);
        inst1 = fsw(arg[0], rs, offset);
    }

    else if (mnemo == "feq" || mnemo == "flt" || mnemo == "fle") {
        assert(3 == arg.size());
        inst1 = f_cmp(mnemo, arg[0], arg[1], arg[2]);
    }

    else if (mnemo == "fsqrt" || mnemo == "fabs" || mnemo == "fneg" || mnemo == "fmv" || mnemo == "finv") {
        assert(2 == arg.size());
        inst1 = f_op2(mnemo, arg[0], arg[1]);
    }
    else if (mnemo == "fadd" || mnemo == "fsub" || mnemo == "fmul" || mnemo == "fdiv") {
        assert(3 == arg.size());
        inst1 = f_op3(mnemo, arg[0], arg[1], arg[2]);
    }

    // Pseudo-instructions ===================================================================
    else if (mnemo == "la") {
        assert(2 == arg.size());
        uint32_t tmp = MyStoi(arg[1]);
        inst1 = auipc(arg[0], ((tmp >> 12) + ((tmp >> 11) & 0x1)) & 0xfffff);
        nline_++;
        inst2 = op_imm("addi", arg[0], arg[0], tmp & 0xfff);
    }

    else if (mnemo == "li") {
        assert(2 == arg.size());
        uint32_t tmp = MyStoi(arg[1]);
        if (tmp > (1 << 11) - 1) {
            inst1 = lui(arg[0], ((tmp >> 12) + ((tmp >> 11) & 0x1)) & 0xfffff);
            nline_++;
            inst2 = op_imm("addi", arg[0], arg[0], tmp & 0xfff);
        } else {
            inst1 = op_imm("addi", arg[0], "zero", tmp);
        }
    }

    else if (mnemo == "mv") {
        assert(2 == arg.size());
        inst1 = op_imm("addi", arg[0], arg[1], 0);
    }
    else if (mnemo == "not") {
        assert(2 == arg.size());
        inst1 = op_imm("xori", arg[0], arg[1], -1);
    }
    else if (mnemo == "neg") {
        assert(2 == arg.size());
        inst1 = op("sub", arg[0], "zero", arg[1]);
    }
    else if (mnemo == "bgt") {
        assert(3 == arg.size());
        inst1 = branch("blt", arg[1], arg[0], MyStoi(arg[2]));
    }
    else if (mnemo == "ble") {
        assert(3 == arg.size());
        inst1 = branch("bge", arg[1], arg[0], MyStoi(arg[2]));
    }
    else if (mnemo == "b") {
        assert(1 == arg.size());
        // TODO: bgeじゃなくbeqにする？
        inst1 = branch("bge", "zero", "zero", MyStoi(arg[0]));
    }
    else if (mnemo == "jr") {
        assert(1 == arg.size());
        inst1 = jalr("zero", arg[0], 0);
    }
    else if (mnemo == "ret") {
        assert(0 == arg.size());
        inst1 = jalr("x0", "x1", 0u);
    }
    else if (mnemo == "call") {
        assert(1 == arg.size());
        uint32_t imm = MyStoi(arg[0]);
        // jalrが符号拡張するため、下から12bit目が1の場合はauipcに渡す即値に1を足す
        // その結果2 ^ 12を超える場合は下位20bitをわたす
        inst1 = auipc("x6", ((imm >> 12) + ((imm >> 11) & 1)) & 0xfffff);
        nline_++;
        inst2 = jalr("x1", "x6", imm & 0xfff);
    }
    else if (mnemo == "tail") {
        assert(1 == arg.size());
        uint32_t imm = MyStoi(arg[0]);
        inst1 = auipc("x6", ((imm >> 12) + ((imm >> 11) & 1)) & 0xfffff);
        nline_++;
        inst2 = jalr("x0", "x6", imm & 0xfff);
    }

    else if (mnemo == "fli") {
        // Note: t6レジスタが潰される
        assert(2 == arg.size());
        uint32_t imm = SolveImmLabel(arg[1]);
        std::string tmp_reg = "t6";
        inst1 = lui(tmp_reg, ((imm >> 12) + ((imm >> 11) & 1)) & 0xfffff);
        nline_++;
        inst2 = flw(arg[0], tmp_reg, (imm & 0xfff));
    }

    else {
        fprintf(stderr, "No such instructions: %s\n", input.c_str());
        return Inst();
    }

    BinGen::Inst ret(inst1, inst2, 0xffffffff);
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
    if (inst.is_empty())
        return "";
    else if (inst.snd == 0xffffffff)
        return ToString(inst.fst);
    else
        return ToString(inst.fst) + "    " + ToString(inst.snd);
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

// |31        20|19 15|14  12|11  7|6     0|
// |000000000000|00000|funct3| reg | opcode|
// |000000000000|  rs | 000  |00000|1111111| w (write)
// |000000000000|00000| 001  |  rd |1111111| r (read)
uint32_t BinGen::read (std::string rd) {
    Fields fields { {7, 0b1111111},
                    {5, regmap_.at(rd)},
                    {3, 0b001},
                    {5, 0x00000},
                    {12, 0x00000} };
    return Pack(fields);
}

uint32_t BinGen::write (std::string rs) {
    Fields fields { {7, 0b1111111},
                    {5, 0b00000},
                    {3, 0b000},
                    {5, regmap_.at(rs)},
                    {12, 0x00000} };
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
    uint32_t funct7 = (mnemo == "fsqrt") ? 0b0101100 : 0b0010000;
    uint32_t funct3;
    if (mnemo == "fsqrt") funct3 = RM;
    if (mnemo == "fmv")   funct3 = 0b000;
    if (mnemo == "fneg")  funct3 = 0b001;
    if (mnemo == "fabs")  funct3 = 0b010;
    if (mnemo == "finv")  funct3 = 0b011;
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
    if (mnemo == "fadd") funct7 = 0b0000000;
    if (mnemo == "fsub") funct7 = 0b0000100;
    if (mnemo == "fmul") funct7 = 0b0001000;
    if (mnemo == "fdiv") funct7 = 0b0001100;
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
    if (mnemo == "feq") funct3 = 0b010;
    if (mnemo == "flt") funct3 = 0b001;
    if (mnemo == "fle") funct3 = 0b000;
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

void BinGen::WriteInst(uint32_t inst) {
    if (is_ascii_) {
        std::string str;
        for (int i = 0; i < 32; i++)
            str.push_back(((inst >> (31 - i)) & 0x1)? '1' : '0');
        assert(str.size() == 32);
        ofs_ << str << std::endl;
        return;
    }
    unsigned char d[4];
    d[0] = inst >> 24;
    d[1] = inst >> 16;
    d[2] = inst >> 8;
    d[3] = inst;
    ofs_.write((char *)d, 4);
}

void BinGen::WriteData(uint32_t data) {
    std::string str;
    for (int i = 0; i < 32; i++)
        str.push_back(((data >> (31 - i)) & 0x1)? '1' : '0');
    assert(str.size() == 32);
    coefs_ << str << std::endl;
}

uint32_t BinGen::MyStoi(std::string imm) {
    try {
        return std::stoi(imm, nullptr, 10);
    }
    catch (...) {
        // stoi() failed. |imm| was a label.
        // std::cout << imm << label_map_[imm] << std::endl;
        if (label_map_.count(imm) == 0) {
            std::cerr << "\x1b[31m[ERROR] Undefined symbol: " << imm << "\x1b[39m\n";
            return 0;
        }
        return (label_map_[imm] - nline_) * 4;
    }
}

uint32_t BinGen::SolveImmLabel(std::string label) {
    if (data_map_.count(label) == 0) {
        std::cerr << "\x1b[31m[ERROR] Undefined symbol: " << label << "\x1b[39m\n";
        return 0;
    }
    return data_map_[label] * 4;
}

void print_binary(int val){
  //for debug
  for(int i = 31;i>=0;i--){
    printf("%d ",((val>>i)&0x1));
  }
  printf("\n");
}
