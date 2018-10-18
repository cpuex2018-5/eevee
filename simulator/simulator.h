#include<stdio.h>
#define REG_NUMBER 32
#define MEM_SIZE 0x100000
#define STACK_POS 0xfffff

typedef struct {
  unsigned long pc;
  int registers[REG_NUMBER];
  float f_registers[REG_NUMBER];
  unsigned char *text_memory;
  unsigned char *data_memory;
  unsigned int text_size;
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
Simulator *init(unsigned long m_size,unsigned long s_pos);
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

//util.c
unsigned int get_binary(unsigned int,int,int);
void usage();
void print_binary(int);
void print_instr(Simulator *);

//debug.c
void print_fregs(Simulator *);
void dump_memory(Simulator *,int,int);
void print_regs(Simulator *);
int debug_exec(Simulator *,char *);
