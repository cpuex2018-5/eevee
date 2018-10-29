main:
	addi	sp,sp,-8
	sw	ra,4(sp)
	sw	fp,0(sp)
	addi	fp,sp,8     # fp: old stack pointer
#	main program starts
	li	a0, 15
	li	a1, 3
	call	min_caml_div
#	main program ends
	mv	a5,a0
	mv	a0,a5
	lw	ra,4(sp)
	lw	s0,0(sp)
	addi	sp,sp,8
	jal	zero,end
