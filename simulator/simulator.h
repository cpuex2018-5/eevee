#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<string.h>
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
Simulator *init(unsigned long m_size,unsigned long s_pos,FILE *,FILE *);
void destroy(Simulator*);
void load(Simulator*,FILE *);
void exec(Simulator*);

//decode.c
Op *decode_r(unsigned int inst,Op *op);
Op *decode_i(unsigned int inst,Op *op);
Op *decode_s(unsigned int inst,Op *op);
Op *decode_u(unsigned int inst,Op *op);
Op *decode_b(unsigned int inst,Op *op);
Op *decode_j(unsigned int inst,Op *op);
Op *decode_io(unsigned int inst,Op *op);
//util.c
unsigned int get_binary(unsigned int,int,int);
void usage();
void print_binary(int);
void print_instr(Simulator *);
void disas(unsigned int,unsigned int,Op *);
//debug.c
void print_fregs(Simulator *);
void dump_memory(Simulator *,int,int);
void print_regs(Simulator *);
int debug_exec(Simulator *,char *);
