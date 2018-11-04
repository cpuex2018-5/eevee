	.data
l.106:	 0	# 0.000000
l.105:	 1065353216	# 1.000000
l.104:	 1069547520	# 1.500000
l.103:	 1137180672	# 400.000000
l.102:	 1082130432	# 4.000000
	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	addi	sp, sp, -8
	sw	fp, 0(sp)
	addi	fp, sp, 8
#	main program starts
	li	a0, 0
	call	yloop.53
#	main program ends
	lw	ra, 4(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 8
	j	end
dbl.40:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fadd.s	fa0, fa0, fa0
	j	dbl.40_ret
dbl.40_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
yloop_xloop_iloop.42:
	addi	sp, sp, -52
	sw	ra, 48(sp)
	sw	fp, 44(sp)
	addi	fp, sp, 52
	bne	a0, zero, beq_else.122
	li	a0, 1
	call	min_caml_print_int
	j	yloop_xloop_iloop.42_ret
beq_else.122:
	fsub.s	fa2, fa2, fa3
	fadd.s	fa2, fa2, fa4
	fsw	fa4, 0(sp)
	sw	a0, 8(sp)
	fsw	fa2, 16(sp)
	fsw	fa5, 24(sp)
	fsw	fa1, 32(sp)
	call	dbl.40
	flw	fa1, 32(sp)
	fmul.s	fa0, fa0, fa1
	flw	fa5, 24(sp)
	fadd.s	fa1, fa0, fa5
	flw	fa0, 16(sp)
	fmul.s	fa2, fa0, fa0
	fmul.s	fa3, fa1, fa1
	fadd.s	fa4, fa2, fa3
	fli	fa6, l.102
	fle.s	t6, fa4, fa6
	beq	t6, zero, bne_else.124
	lw	a0, 8(sp)
	addi	a0, a0, -1
	flw	fa4, 0(sp)
	call	yloop_xloop_iloop.42
	j	yloop_xloop_iloop.42_ret
bne_else.124:
	li	a0, 0
	call	min_caml_print_int
	j	yloop_xloop_iloop.42_ret
yloop_xloop_iloop.42_ret:
	lw	ra, 48(sp)
	lw	fp, 44(sp)
	addi	sp, sp, 52
	jr	ra
yloop_xloop.50:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	li	t6, 400
	blt	a0, t6, bge_else.125
	j	yloop_xloop.50_ret
bge_else.125:
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	min_caml_float_of_int
	call	dbl.40
	fli	fa1, l.103
	fdiv.s	fa0, fa0, fa1
	fli	fa1, l.104
	fsub.s	fa0, fa0, fa1
	lw	a0, 4(sp)
	fsw	fa0, 8(sp)
	call	min_caml_float_of_int
	call	dbl.40
	fli	fa1, l.103
	fdiv.s	fa0, fa0, fa1
	fli	fa1, l.105
	fsub.s	fa5, fa0, fa1
	li	a0, 1000
	fli	fa0, l.106
	fli	fa1, l.106
	fli	fa2, l.106
	fli	fa3, l.106
	flw	fa4, 8(sp)
	call	yloop_xloop_iloop.42
	lw	a0, 0(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	call	yloop_xloop.50
	j	yloop_xloop.50_ret
yloop_xloop.50_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
yloop.53:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	li	t6, 400
	blt	a0, t6, bge_else.127
	j	yloop.53_ret
bge_else.127:
	sw	a0, 0(sp)
	call	min_caml_print_newline
	li	a0, 0
	lw	a1, 0(sp)
	call	yloop_xloop.50
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	yloop.53
	j	yloop.53_ret
yloop.53_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
end:
	j	end
