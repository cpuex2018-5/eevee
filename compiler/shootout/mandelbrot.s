	.data
l.111:	 0	# 0.000000
l.110:	 1065353216	# 1.000000
l.109:	 1069547520	# 1.500000
l.108:	 1137180672	# 400.000000
l.107:	 1082130432	# 4.000000
l.106:	 1073741824	# 2.000000
	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	addi	sp, sp, -8
	sw	fp, 0(sp)
	addi	fp, sp, 8
#	main program starts
	li	a0, 0
	call	yloop.54
#	main program ends
	lw	ra, 4(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 8
	j	end
yloop_xloop_iloop.43:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	bne	a0, zero, beq_else.122
	li	a0, 1
	call	min_caml_print_int
	b	yloop_xloop_iloop.43_ret
beq_else.122:
	fsub.s	fa2, fa2, fa3
	fadd.s	fa2, fa2, fa4
	fli	fa3, l.106
	fmul.s	fa0, fa3, fa0
	fmul.s	fa0, fa0, fa1
	fadd.s	fa1, fa0, fa5
	fmul.s	fa0, fa2, fa2
	fmul.s	fa3, fa1, fa1
	fadd.s	fa6, fa0, fa3
	fli	fa7, l.107
	fle.s	t6, fa6, fa7
	beq	t6, zero, bne_else.123
	addi	a0, a0, -1
	fmv.s	ft11, fa2
	fmv.s	fa2, fa0
	fmv.s	fa0, ft11
	call	yloop_xloop_iloop.43
	b	yloop_xloop_iloop.43_ret
bne_else.123:
	li	a0, 0
	call	min_caml_print_int
	b	yloop_xloop_iloop.43_ret
yloop_xloop_iloop.43_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
yloop_xloop.51:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	li	t6, 400
	blt	a0, t6, bge_else.124
	b	yloop_xloop.51_ret
bge_else.124:
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	min_caml_float_of_int
	fli	fa1, l.106
	fmul.s	fa0, fa0, fa1
	fli	fa1, l.108
	fdiv.s	fa0, fa0, fa1
	fli	fa1, l.109
	fsub.s	fa0, fa0, fa1
	lw	a0, 4(sp)
	fsw	fa0, 8(sp)
	call	min_caml_float_of_int
	fli	fa1, l.106
	fmul.s	fa0, fa0, fa1
	fli	fa1, l.108
	fdiv.s	fa0, fa0, fa1
	fli	fa1, l.110
	fsub.s	fa5, fa0, fa1
	li	a0, 1000
	fli	fa0, l.111
	fli	fa1, l.111
	fli	fa2, l.111
	fli	fa3, l.111
	flw	fa4, 8(sp)
	call	yloop_xloop_iloop.43
	lw	a0, 0(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	call	yloop_xloop.51
	b	yloop_xloop.51_ret
yloop_xloop.51_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
yloop.54:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	li	t6, 400
	blt	a0, t6, bge_else.126
	b	yloop.54_ret
bge_else.126:
	sw	a0, 0(sp)
	call	min_caml_print_newline
	li	a0, 0
	lw	a1, 0(sp)
	call	yloop_xloop.51
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	yloop.54
	b	yloop.54_ret
yloop.54_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
end:
	j	end
