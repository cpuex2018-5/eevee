#include <iostream>
#include <fstream>
#include <cassert>
#include <assert.h>
#include <map>
#include <string>
#include "bingen.h"

class BinGenTest{
  public:
    BinGenTest(std::ofstream ofs)
        : bingen_(BinGen(std::move(ofs), false /* is_verbose */, false /* is_debug */)) {}
    ~BinGenTest() = default;

    void TestToString() {
        std::map<uint32_t, std::string> examples;
        examples[0x00000000] = "0000 0000 0000 0000 0000 0000 0000 0000 ";
        examples[0xfffff0f0] = "1111 1111 1111 1111 1111 0000 1111 0000 ";
        examples[0xfffffff0] = "1111 1111 1111 1111 1111 1111 1111 0000 ";
        examples[0xffffffff] = "1111 1111 1111 1111 1111 1111 1111 1111 ";
        for (auto example : examples) {
            std::string ans = bingen_.ToString(example.first);
            std::printf("%08x : %s\n", example.first, ans.c_str());
            assert(example.second == ans);
        }
        std::printf("Passed: TestToString()\n");
    }

    void TestParseOffset() {
        std::string in = "123(a0)";
        std::string reg;
        uint32_t offset;
        bingen_.ParseOffset(in, &reg, &offset);
        assert(reg == "a0");
        assert(offset == 123);
        std::printf("Passed: TestParseOffset()\n");
    }

    void TestParse() {
        std::vector<std::string> test_strs = {
            ".L4:",
            "	lw	a5,-36(s0)",
            "	addiw	a5,a5,-1",
            "	sext.w	a5,a5",
            "	call	fib",
            "	add	a5,s1,a5			# hogehoge",
            "	add	a5,s1,a5# hogehoge",
            "	mv ra,s1# hogehoge",
            "	j fuga# hogehoge",
            "  # hogehoge",
            "main:  # hogehoge",
            "# main program starts",
            "   j fib.10_ret",
        };

        for (auto test_str : test_strs) {
            std::string mnemo;
            std::vector<std::string> args;
            bingen_.Parse(test_str, mnemo, args);
            std::cout << test_str << " -> mnemo:|" << mnemo << "|";
            for (auto arg : args) {
                std::cout << "arg:|" << arg << "|";
            }
            std::cout << std::endl;
        }
    }

    void TestConvert() {
        // jalrが符号拡張するのでauipcに渡す即値は0になる
        assert("0000 0000 0000 0000 0000 0011 0001 0111     1111 1100 0100 0011 0000 0000 1110 0111 " ==
                bingen_.InstToString(bingen_.Convert("    call -60")));

        std::printf("Passed: TestConvert()\n");
    }

  private:
    BinGen bingen_;
};

int main (void) {
    // TestParseOffset();
    // TestToString();

    std::ofstream ofs;
    BinGenTest test(std::move(ofs));
    test.TestParse();
    test.TestConvert();
    std::cout << "Tests are all finished!" << std::endl;
    return 0;
}
