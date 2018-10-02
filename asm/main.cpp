#include <iostream>
#include <fstream>
#include <string>
#include "bingen.h"

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

    // Round 1: Replace the instructions with bytecodes
    while (getline(ifs, str)) {
        // Parse the input.
        bingen(str);
    }

    // Round 2: Replace the labels with the actual PC
    return 0;
}

