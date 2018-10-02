#include <iostream>
#include "bingen.h"

int main (void) {
    std::string in = "123(a0)";
    std::string reg;
    uint32_t offset;
    ParseOffset(in, &reg, &offset);
    std::cout << reg << " " << offset << std::endl;
    return 0;
}
