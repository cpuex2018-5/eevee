#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<string.h>
#include<vector>
#include<string>
#include<iostream>
#include<cmath>
#include<assert.h>
#include<algorithm>
extern const unsigned int MEM_SIZE;
extern const unsigned int STACK_POS;

typedef struct {
  unsigned long pc;
  int registers[32];
  float f_registers[32];
  unsigned char *text_memory;
  unsigned char *data_memory;
  unsigned int text_size;
  FILE *in;
  FILE *out;
  FILE *coef;
  std::vector<unsigned int> breakpoints;
  std::vector<unsigned long long int>inst_breakpoints;
  int bp_to_skip;
} Simulator;

typedef struct {
  unsigned int opcode;
  unsigned int rd;
  unsigned int funct3;
  unsigned int rs1;
  unsigned int rs2;
  unsigned int funct7;
  unsigned int imm;
} Op;


//sim.c
Simulator *init(unsigned long m_size,unsigned long s_pos,FILE *,FILE *,FILE *);
void destroy(Simulator*);
void load(Simulator*,FILE *);
void exec(Simulator*,Op *);

//decode.c
Op *decode_r(unsigned int inst,Op *op);
Op *decode_i(unsigned int inst,Op *op);
Op *decode_s(unsigned int inst,Op *op);
Op *decode_u(unsigned int inst,Op *op);
Op *decode_b(unsigned int inst,Op *op);
Op *decode_j(unsigned int inst,Op *op);
Op *decode_io(unsigned int inst,Op *op);
//util.c
inline unsigned int get_binary(unsigned int n,int start,int end){
n = n << (32-end);
n = n >> (32-(end-start));
return n;
}
void usage();
void print_binary(int);
std::string to_string(uint32_t);
void floatToBinary(float f);
void floatToHex(float f);
void disas(unsigned int,unsigned int,Op *);
bool skip(char);

//debug.c
void print_fregs(Simulator *);
void print_regs(Simulator *);
int debug_exec(Simulator *,std::vector<std::string>&);
int debug_parse(Simulator* ,std::string&,std::vector<std::string>&);

float fadd(float,float);
float fmul(float,float);
float fsub(float,float);
float fpuabs(float);
float fpuneg(float);
float fsqrt(float);
float finv(float);
float fdiv(float,float);
unsigned int fle(float,float);
unsigned int flt(float,float);
unsigned int feq(float,float);
