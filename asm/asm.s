addi a0,a0,191
slli a1,a0,24
add a2,a1,a2
xor a0,a0,a0
addi a0,a0,153
slli a1,a0,16
add a2,a1,a2
xor a0,a0,a0
addi a0,a0,153
slli a1,a0,8
add a2,a1,a2
xor a0,a0,a0
addi a0,a0,154
slli a1,a0,0
add a2,a1,a2
sw a2,-4(sp)
flw f1,-4(sp)
fsw f1,-8(sp)
flw f2,-8(sp)
fadd.s f3,f1,f2
fsub.s f4,f2,f3
fmul.s f5,f3,f4
fdiv.s f6,f4,f5
fsqrt.s f7,f4
fmv.s f8,f1
fneg.s f9,f1
fabs.s f10,f2
finv.s f11,f1
