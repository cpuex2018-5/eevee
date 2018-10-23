#include <iostream>
#include <fstream>
#include <string>
#include <assert.h>
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

// 2-pass assembler of EEVEE (32-bit)
int main(int argc, char* argv[])
{
    if (argc < 2) {
        std::cout << "ERROR: No input files specified" << std::endl;
        return 0;
    }
    std::string infile = argv[1];
    if (!(infile[infile.size() - 2] == '.' && infile[infile.size() - 1] == 's')) {
        std::cout << "ERROR: The input file should have suffix '.s'" << std::endl;
        return 0;
    }
    std::ifstream ifs(infile);
    if (ifs.fail()) {
        std::cerr << "ERROR: Failed to open the file" << std::endl;
        return 0;
    }

    std::string outfile(infile.begin(), infile.end() - 2);
    std::ofstream ofs(outfile);
    std::string str;
    BinGen bingen(std::move(ofs));

    // Round 1: Skim through the assembly code and get the position of each label
    while (getline(ifs, str)) {
        // Parse the input.
        bingen.ReadLabels(str);
    }
    bingen.ClearNline_();
    ifs.clear();
    ifs.seekg(0, std::ios::beg);

    // Round 2: Replace the instructions with bytecodes
    while (getline(ifs, str)) {
        bingen.Main(str);
    }

    ifs.close();
    ofs.close();

    return 0;
}

