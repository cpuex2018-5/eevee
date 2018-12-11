#ifndef __BINGEN_H__
#define __BINGEN_H__

#include <iostream>
#include <fstream>
#include <vector>
#include <map>

class BinGen {
    public:
        typedef struct inst {
            inst() : fst(0xffffffff), snd(0xffffffff), data(0xffffffff) {};
            inst(uint32_t fst, uint32_t snd, uint32_t data) : fst(fst), snd(snd), data(data) {};
            ~inst() {};

            // 各フィールドは、0xffffffffだったら何も入っていない(None)を意味する
            uint32_t fst;  // instruction
            uint32_t snd;  // instruction
            uint32_t data; // floating-point data

            bool is_empty() { return fst == 0xffffffff && snd == 0xffffffff && data == 0xffffffff; }
            bool is_inst() { return fst != 0xffffffff; }
            bool is_double_inst() { return fst != 0xffffffff && snd != 0xffffffff; }
            bool is_data() { return data != 0xffffffff; }
        } Inst;

        BinGen(std::ofstream ofs, std::ofstream coefs, bool is_verbose, bool is_debug, bool is_ascii);

        // 1周目
        void ReadLabels(std::string input);

        // 1周目のあとに呼ぶ
        void OnReadLabelsCompleted();

        // 2周目
        void Main(std::string input);

        // 終了処理
        void Finish();

        void Parse(std::string input, std::string &mnemo, std::vector<std::string> &arg);
        void ParseOffset(std::string arg, std::string* reg, uint32_t* offset);

        // Parses and evaluates the input. Returns the converted instructions (zero, one or two)
        Inst Convert(std::string input);

        std::string ToString(uint32_t inst);
        std::string InstToString(Inst inst);
        void PrintInt(uint32_t inst);
        void PrintInst(Inst inst);

    private:
        typedef std::vector<std::pair<int, uint32_t> > Fields;

        uint32_t lui(std::string rd, uint32_t imm);
        uint32_t auipc(std::string rd, uint32_t imm);
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

        uint32_t read(std::string rd);
        uint32_t write(std::string rs);

        uint32_t flw(std::string frd, std::string rs, uint32_t imm);
        uint32_t fsw(std::string frs2, std::string frs1, uint32_t imm);

        // fsqrt.s, fabs.s, fneg.s, fmv.s, finv.s (2 operands)
        uint32_t f_op2(std::string mnemo, std::string frd, std::string frs);

        // fadd.s, fsub.s, fmul.s, fdiv.s (3 operands)
        uint32_t f_op3(std::string mnemo, std::string frd, std::string frs1, std::string frs2);

        // feq.s, flt.s, fle.s
        uint32_t f_cmp(std::string mnemo, std::string rd, std::string frs1, std::string frs2);

        uint32_t Pack(Fields fields);
        void CheckImmediate(uint32_t imm, int range, std::string func_name);
        void WriteInst(uint32_t inst);
        void WriteData(uint32_t data);

        // |imm|がラベルの場合は対応する値を返し、即値ならstoiして返す　
        uint32_t MyStoi(std::string imm);

        // 浮動小数の即値ラベルをさす|label|を具体的な即値に変換する
        uint32_t SolveImmLabel(std::string label);

        // Number of instructions read so far
        int nline_ = 0;
        // Number of data read so far
        int ndata_ = 0;

        bool is_verbose_;
        bool is_debug_;
        bool is_ascii_;

        bool data_mode_ = false;
        std::ofstream ofs_;
        std::ofstream coefs_;
        std::map<std::string, int> label_map_;
        std::map<std::string, int> data_map_;
        const std::map<std::string, int> regmap_;
        const std::map<std::string, int> fregmap_;

        void print_binary(uint32_t inst);
};

#endif  // __BINGEN_H__
