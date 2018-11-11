main:
	addi	sp,sp,-8
	sw	ra,4(sp)
	sw	fp,0(sp)
	addi	fp,sp,8     # fp: old stack pointer
#	main program starts
	fli	fa0, L_a	# 0.9647326178866098
#	fli	fa0, L_1	# 0.5403023058681398
#	fli	fa0, L_2	# -0.4161468365471424
	call	min_caml_cos
#	main program ends
	mv	a5,a0
	mv	a0,a5
	lw	ra,4(sp)
	lw	s0,0(sp)
	addi	sp,sp,8
	jal	zero,end
end:
	j	end
	.data
L_a:	# 12.3
	.word	1095027917
