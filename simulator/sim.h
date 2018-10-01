#include<stdio.h>
#define REG_NUMBER 32

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
  char *memory;
} Simulator;

Simulator *init(unsigned long m_size);

void load(Simulator*,FILE *);

void exec(Simulator*);
