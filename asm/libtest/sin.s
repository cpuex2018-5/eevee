main:
	addi	sp,sp,-8
	sw	ra,4(sp)
	sw	fp,0(sp)
	addi	fp,sp,8     # fp: old stack pointer
#	main program starts
	fli	fa0, L_1	# 0.8414709848078965
#	fli	fa0, L_2	# 0.9092974268256817
	call	min_caml_sin
#	main program ends
	mv	a5,a0
	mv	a0,a5
	lw	ra,4(sp)
	lw	s0,0(sp)
	addi	sp,sp,8
	jal	zero,end
end:
	j	end
