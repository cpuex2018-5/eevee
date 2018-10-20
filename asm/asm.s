  addi a0,a0,5
  addi a1,a1,2
  addi a2,a2,5
  beq a1,a0,c1
  beq a2,a2,c2
c1:
  addi a3,a3,1
  jal a4,end
c2:
  addi a3,a3,2
  jal a4,end
end:
  addi a5,a5,3
