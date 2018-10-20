.main:
0  jal a1,.func2
.func:
4  addi a0,a0,11
8  addi a0,a0,12
12  addi a0,a0,13
.func2:
16  addi a1,a1,34
20  addi a1,a1,35
.func3:
24  addi a1,a1,15
28  jal a2,.main
