#include <iostream>
#include <fstream>
#include <cassert>
#include <map>
#include <vector>
#include <string>
#include "bingen.h"

class BinGenTest{
  public:
    BinGenTest(std::ofstream ofs)
        : bingen_(BinGen(std::move(ofs))) {}
    ~BinGenTest() = default;

    // 01の列にする(4桁ごとに空白)
    std::string PrettyString(uint32_t inst) {
        std::string str;
        for (int i = 0; i < 32; i++) {
            str.push_back(((inst >> (31 - i)) & 0x1)? '1' : '0');
            if (i % 4 == 3) str.push_back(' ');
        }
        assert(str.size() == 40);
        return str;
    }

    void TestPrettyString() {
        std::map<uint32_t, std::string> examples;
        examples[0x00000000] = "0000 0000 0000 0000 0000 0000 0000 0000 ";
        examples[0xfffff0f0] = "1111 1111 1111 1111 1111 0000 1111 0000 ";
        examples[0xfffffff0] = "1111 1111 1111 1111 1111 1111 1111 0000 ";
        examples[0xffffffff] = "1111 1111 1111 1111 1111 1111 1111 1111 ";
        for (auto example : examples) {
            std::string ans = PrettyString(example.first);
            std::printf("%08x : %s\n", example.first, ans.c_str());
            assert(example.second == ans);
        }
    }

    void TestParseOffset() {
        std::string in = "123(a0)";
        std::string reg;
        uint32_t offset;
        bingen_.ParseOffset(in, &reg, &offset);
        assert(reg == "a0");
        assert(offset == 123);
    }

    void Test_Parse() {
        std::vector<std::string> test_strs = {
            ".L4:",
            "	lw	a5,-36(s0)",
            "	addiw	a5,a5,-1",
            "	sext.w	a5,a5",
            "	call	fib",
        };

        for (auto test_str : test_strs) {
            std::string mnemo;
            std::vector<std::string> args;
            bingen_.Parse(test_str, mnemo, args);
            std::cout << test_str << " -> " << mnemo << " ";
            for (auto arg : args) {
                std::cout << arg << " ";
            }
            std::cout << std::endl;
        }
    }

    void Test_lui() {
        // Note: immediate values are interpreted as hexadecimals.
        assert("0110 1110 0001 0000 0000 0000 0010 0000 " == PrettyString(bingen_.lui("ra", 0x20)));
    }

    void Test_auipc() {
    }

    void Test_jal() {
    }

    void Test_jalr() {
    }

    void Test_branch() {
    }

    void Test_load() {
    }

    void Test_store() {
    }

    void Test_op_imm() {
    }

    void Test_op_imm_shift() {
    }

    void Test_op () {
        assert("0110 0110 0110 0000 0111 1110 0000 0000 " == PrettyString(bingen_.op("add", "t1", "t2", "t3")));
        assert("0110 0110 0110 0000 0111 1110 0010 0000 " == PrettyString(bingen_.op("sub", "t1", "t2", "t3")));
    }

  private:
    BinGen bingen_;
};

int main (void) {
    // TestParseOffset();
    // TestPrettyString();

    std::ofstream ofs;
    BinGenTest test(std::move(ofs));
    test.Test_Parse();
    test.Test_lui();
    test.Test_auipc();
    test.Test_jal();
    test.Test_jalr();
    test.Test_branch();
    test.Test_load();
    test.Test_store();
    test.Test_op_imm();
    std::cout << "Tests are all finished!" << std::endl;
    return 0;
}
