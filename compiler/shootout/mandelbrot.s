	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	li	gp, 116	# initialize gp
#	main program starts
	li	a0, 0
	call	yloop_43
#	main program ends
	j	end
iloop_59:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	bne	a0, zero, beq_else_124
	li	a0, 1
	call	min_caml_print_int
	b	iloop_59_ret
beq_else_124:
	fsub.s	fa2, fa2, fa3
	fadd.s	fa2, fa2, fa4
	fli	fa3, l_106
	fmul.s	fa0, fa3, fa0
	fmul.s	fa0, fa0, fa1
	fadd.s	fa1, fa0, fa5
	fmul.s	fa0, fa2, fa2
	fmul.s	fa3, fa1, fa1
	fadd.s	fa6, fa0, fa3
	fli	fa7, l_107
	fle.s	t6, fa6, fa7
	beq	t6, zero, bne_else_125
	addi	a0, a0, -1
	fmv.s	ft11, fa2
	fmv.s	fa2, fa0
	fmv.s	fa0, ft11
	call	iloop_59
	b	iloop_59_ret
bne_else_125:
	li	a0, 0
	call	min_caml_print_int
iloop_59_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
xloop_47:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	li	t6, 400
	blt	a0, t6, bge_else_126
	b	xloop_47_ret
bge_else_126:
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	min_caml_float_of_int
	fli	fa1, l_106
	fmul.s	fa0, fa0, fa1
	fli	fa2, l_108
	fdiv.s	fa0, fa0, fa2
	fli	fa3, l_109
	fsub.s	fa0, fa0, fa3
	lw	a0, 4(sp)
	fsw	fa0, 8(sp)
	fsw	fa2, 16(sp)
	fsw	fa1, 24(sp)
	call	min_caml_float_of_int
	flw	fa1, 24(sp)
	fmul.s	fa0, fa0, fa1
	flw	fa1, 16(sp)
	fdiv.s	fa0, fa0, fa1
	fli	fa1, l_110
	fsub.s	fa5, fa0, fa1
	li	a0, 100
	fli	fa0, l_111
	flw	fa4, 8(sp)
	fmv.s	fa3, fa0
	fmv.s	fa2, fa0
	fmv.s	fa1, fa0
	call	iloop_59
	lw	a0, 0(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	call	xloop_47
xloop_47_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
yloop_43:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	li	t6, 400
	blt	a0, t6, bge_else_128
	b	yloop_43_ret
bge_else_128:
	sw	a0, 0(sp)
	call	min_caml_print_newline
	li	a0, 0
	lw	a1, 0(sp)
	call	xloop_47
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	yloop_43
yloop_43_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
end:
	j	end
	.data
l_111:	# 0.000000
	.word	0
l_110:	# 1.000000
	.word	1065353216
l_109:	# 1.500000
	.word	1069547520
l_108:	# 400.000000
	.word	1137180672
l_107:	# 4.000000
	.word	1082130432
l_106:	# 2.000000
	.word	1073741824
