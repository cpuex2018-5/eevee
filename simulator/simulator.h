#include<stdio.h>
#define REG_NUMBER 32
#define MEM_SIZE 0x100000
#define STACK_POS 0xfffff

enum Regs{
  zero,
  ra,
  sp,
  gp,
  tp,
  t0,
  t1,
  t2,
  s0,
  fp,
  s1,
  a0,
  a1,
  a2,
  a3,
  a4,
  a5,
  a6,
  a7,
  s2,
  s3,
  s4,
  s5,
  s6,
  s7,
  s8,
  s9,
  s10,
  s11,
  t3,
  t4,
  t5,
  t6,
};

enum INST{
  INST_LUI,
  INST_AUIPC,
  INST_JAL,
  INST_JALR,
  INST_BEQ,
  INST_BNE,
  INST_BLT,
  INST_BGE,
  INST_BLTU,
  INST_BGEU,
  INST_LB,
  INST_LH,
  INST_LW,
  INST_LBU,
  INST_LHU,
  INST_SB,
  INST_SH,
  INST_SW,
  INST_ADDI,
  INST_SLTI,
  INST_SLTIU,
  INST_XORI,
  INST_ORI,
  INST_ANDI,
  INST_SLLI,
  INST_SRLI,
  INST_SRAI,
  INST_ADD,
  INST_SUB,
  INST_SLL,
  INST_SLT,
  INST_SLTU,
  INST_XOR,
  INST_SRL,
  INST_SRA,
  INST_OR,
  INST_AND
};


typedef struct {
  unsigned long pc;
  int registers[REG_NUMBER];
  float f_registers[REG_NUMBER];
  char *text_memory;
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
