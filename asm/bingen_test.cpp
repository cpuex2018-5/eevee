#include <iostream>
#include <cassert>
#include <map>
#include "bingen.h"

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
    ParseOffset(in, &reg, &offset);
    assert(reg == "a0");
    assert(offset == 123);
}

void Test_lui() {
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
}

int main (void) {
    // TestParseOffset();
    // TestPrettyString();

    std::cout << "Tests are all finished!" << std::endl;
    return 0;
}
