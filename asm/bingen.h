#ifndef __BINGEN_H__
#define __BINGEN_H__

#include <iostream>
#include <fstream>
#include <vector>
#include <map>

class BinGen {
    public:
        typedef std::pair<uint32_t, uint32_t> Inst;

        BinGen(std::ofstream ofs, bool is_verbose, bool is_debug);

        // 1周目
        void ReadLabels(std::string input);

        // 2周目
        void Main(std::string input);

        void Parse(std::string input, std::string &mnemo, std::vector<std::string> &arg);
        void ParseOffset(std::string arg, std::string* reg, uint32_t* offset);

        // Parses and evaluates the input. Returns the converted instructions (zero, one or two)
        Inst Convert(std::string input);
        void ClearNline_();

        std::string ToString(uint32_t inst);
        std::string InstToString(Inst inst);
        void PrintInt(uint32_t inst);
        void PrintInst(Inst inst);

    private:
        typedef std::vector<std::pair<int, uint32_t> > Fields;

        uint32_t lui(std::string rd, uint32_t imm);
        uint32_t auipc(std::string rd, uint32_t imm);
        uint32_t jal(std::string rd, uint32_t imm);
        uint32_t jalr(std::string rd, std::string rs1, uint32_t imm);

        // beq, bne, blt, bge, bltu, bgeu
        uint32_t branch(std::string mnemo, std::string rs1, std::string rs2, uint32_t offset);

        // lb, lh, lw, lbu, lhu
        uint32_t load(std::string mnemo, std::string rd, std::string rs1, uint32_t offset);

        // sb, sh, sw
        uint32_t store(std::string mnemo, std::string rs2, std::string rs1, uint32_t offset);

        // addi, slti, sltiu, xori, ori, andi
        uint32_t op_imm(std::string mnemo, std::string rd, std::string rs1, uint32_t imm);

        // slli, srli, srai
        uint32_t op_imm_shift(std::string mnemo, std::string rd, std::string rs1, uint32_t imm);

        // add, sub, sll, slt, sltu, xor, srl, sra, or, and
        uint32_t op(std::string mnemo, std::string rd, std::string rs1, std::string rs2);

        uint32_t Pack(Fields fields);
        void CheckImmediate(uint32_t imm, int range, std::string func_name);
        void CheckImmediateUnsigned(uint32_t imm, int range, std::string func_name);
        void WriteData(uint32_t data);

        // |imm|がラベルの場合は対応する値を返し、即値ならstoiして返す　
        uint32_t MyStoi(std::string imm);

        bool is_sep(char c);

        // Number of instructions read so far.
        int nline_ = 0;

        bool is_verbose_;
        bool is_debug_;
        std::ofstream ofs_;
        std::map<std::string, int> label_map_;
};

#endif  // __BINGEN_H__
