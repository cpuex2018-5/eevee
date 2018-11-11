	.text
# ============= beginning of libmincaml.S ===============
min_caml_print_byte:
# a0の下位8bitに出力したい文字のasciiコードが入っている
	w	a0
	jr	ra
min_caml_print_newline:
	li	t1, 13
	w	t1
	li	t1, 10
	w	t1
	jr	ra
min_caml_print_int:
	addi	sp, sp, -12
	sw	s1, 8(sp)
	sw	ra, 4(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 12
# 負数なら'-'を出力し、絶対値を取る
	bge	a0, zero, .print_int_L0
	li	t1, 45
	w	t1		# '-'
	xori	a0, a0, -1
	addi	a0, a0, 1	# neg
	li	s1, 0		# s1: 何桁あるかを数える
.print_int_L0:
# 出力すべき文字のasciiコードをstackに積んでいく
	addi	s1, s1, 1
	li	a1, 10
	call	min_caml_div_rem
	addi	sp, sp, -4
	addi	a1, a1, 48
	sw	a1, 0(sp)
	bgt	a0, zero, .print_int_L0
.print_int_L1:
# stackから1つずつとってきてprintする
	lw	t1, 0(sp)
	w	t1
	addi	sp, sp, 4
	addi	s1, s1, -1
	bgt	s1, zero, .print_int_L1
.print_int_end:
# spは元の位置に戻っている
	lw	s1, 8(sp)
	lw	ra, 4(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 12
	jr	ra
min_caml_div_rem:
# a0 <- a0 / a1, a1 <- a0 mod a1 (引数a0, a1は共に正)
	li	t1, 0			# t1が商
.div_L0:
	blt	a0, a1, .div_end
	sub	a0, a0, a1
	addi	t1, t1, 1
	b	.div_L0
.div_end:
	mv	a1, a0
	mv	a0, t1
	jr	ra
min_caml_mul:
# a0 <- a0 * a1
	li	t1, 0
.mul_L0:
	ble	a1, zero, .mul_end
	add	t1, t1, a0
	addi	a1, a1, -1
	b	.mul_L0
.mul_end:
	mv	a0, t1
	jr	ra

# sin/cos
.kernel_sin:
	fmv.s	ft1, fa0
	fmul.s	ft1, ft1, ft1	# ft1: A ^ 2
	fli	ft2, L_S3	# ft2: 係数
	fmul.s	ft3, fa0, ft1	# ft3: A ^ 3
	fmul.s	ft4, ft3, ft2
	fsub.s	fa0, fa0, ft4
	fli	ft2, L_S5
	fmul.s	ft3, ft3, ft1	# ft3: A ^ 5
	fmul.s	ft4, ft3, ft2
	fadd.s	fa0, fa0, ft4
	fli	ft2, L_S7
	fmul.s	ft3, ft3, ft1	# ft3: A ^ 7
	fmul.s	ft4, ft3, ft2
	fsub.s	fa0, fa0, ft4
	jr	ra

.kernel_cos:
	fmv.s	ft1, fa0
	fmul.s	ft1, ft1, ft1	# ft1: A ^ 2
	fli	fa0, L_1
	fli	ft2, L_C2
	fmv.s	ft3, ft1	# ft3: A ^ 2
	fmul.s	ft4, ft3, ft2
	fsub.s	fa0, fa0, ft4
	fli	ft2, L_C4
	fmul.s	ft3, ft3, ft1	# ft3: A ^ 4
	fmul.s	ft4, ft3, ft2
	fadd.s	fa0, fa0, ft4
	fli	ft2, L_C6
	fmul.s	ft3, ft3, ft1	# ft3: A ^ 6
	fmul.s	ft4, ft3, ft2
	fsub.s	fa0, fa0, ft4
	jr	ra

.reduction_2pi:	# 呼ばれた時点でft0 = 0.0, ft1 = pi, ft2 = 2.0
	fli	ft3, L_2PI		# ft3: P (2pi)
	fli	ft4, L_2PI		# ft4: 2pi (const)
.reduction_2pi_L0:	# loop
	fle.s	t2, ft3, fa0	# P <= A
	beq	t2, zero, .reduction_2pi_L1
	fmul.s	ft3, ft3, ft2
	b	.reduction_2pi_L0
.reduction_2pi_L1:	# loop
	fle.s	t2, ft4, fa0	# 2pi <= A
	beq	t2, zero, .reduction_2pi_end
	fle.s	t2, ft3, fa0	# P <= A
	beq	t2, zero, .reduction_2pi_L2
# if (A >= P)
	fsub.s	fa0, fa0, ft3
.reduction_2pi_L2:
	fdiv.s	ft3, ft3, ft2
	b	.reduction_2pi_L1
.reduction_2pi_end:
	jr	ra

min_caml_sin:
	addi	sp, sp, -12
	sw	s1, 8(sp)
	sw	ra, 4(sp)
	sw	fp, 0(sp)
	fli	ft0, L_0	# 0.0
	fli	ft1, L_PI	# pi
	fli	ft2, L_2	# 2.0
	fle.s	s1, ft0, fa0	# s1: FLAG
	not	s1, s1
	fabs.s	fa0, fa0
	call	.reduction_2pi
	fle.s	t2, ft1, fa0	# pi <= A
	beq	t2, zero, .sin_L0
# if (A >= pi)
	fsub.s	fa0, fa0, ft1
	not	s1, s1
.sin_L0:
	fdiv.s	ft3, ft1, ft2	# ft3 = pi / 2
	fle.s	t2, ft3, fa0	# pi / 2 <= A
	beq	t2, zero, .sin_L1
# if (A >= pi / 2)
	fsub.s	fa0, ft1, fa0
.sin_L1:
	fdiv.s	ft1, ft3, ft2	# ft1 = pi / 4 (piを上書き)
	fle.s	t2, fa0, ft1	# A <= pi / 4
	beq	t2, zero, .sin_L2
# if (A <= pi / 4)
	call	.kernel_sin
	b	.sin_L3
.sin_L2: # else
	fsub.s	fa0, ft3, fa0
	call	.kernel_cos
	b	.sin_L3
.sin_L3:
	beq	s1, zero, .sin_end
	fneg.s	fa0, fa0	# FLAG == -1ならneg
.sin_end:
	lw	fp, 0(sp)
	lw	ra, 4(sp)
	lw	s1, 8(sp)
	addi	sp, sp, 8
	jr	ra

min_caml_cos:
	addi	sp, sp, -12
	sw	s1, 8(sp)
	sw	ra, 4(sp)
	sw	fp, 0(sp)
	fli	ft0, L_0	# 0.0
	fli	ft1, L_PI	# pi
	fli	ft2, L_2	# 2.0
	li	s1, 0		# s1: FLAG
	fabs.s	fa0, fa0
	call	.reduction_2pi
	fle.s	t2, ft1, fa0	# pi <= A
	beq	t2, zero, .cos_L0
# if (A >= pi)
	fsub.s	fa0, fa0, ft1
	not	s1, s1
.cos_L0:
	fdiv.s	ft3, ft1, ft2	# ft3 = pi / 2
	fle.s	t2, ft3, fa0	# pi / 2 <= A
	beq	t2, zero, .cos_L1
# if (A >= pi / 2)
	fsub.s	fa0, ft1, fa0
	not	s1, s1
.cos_L1:
	fdiv.s	ft1, ft3, ft2	# ft1 = pi / 4 (piを上書き)
	fle.s	t2, fa0, ft1	# A <= pi / 4
	beq	t2, zero, .cos_L2
# if (A <= pi / 4)
	call	.kernel_cos
	b	.cos_L3
.cos_L2: # else
	fsub.s	fa0, ft3, fa0
	call	.kernel_sin
	b	.cos_L3
.cos_L3:
	beq	s1, zero, .cos_end
	fneg.s	fa0, fa0	# FLAG == -1ならneg
.cos_end:
	lw	fp, 0(sp)
	lw	ra, 4(sp)
	lw	s1, 8(sp)
	addi	sp, sp, 8
	jr	ra

min_caml_float_of_int: # int -> float
	fli	ft0, L_8388608
	li	t1, 1258291200  # 0x4b000000
	bge	a0, zero, .float_of_int_pos
# negativeの場合
	neg	a0, a0
	add	a0, a0, t1
	sw	a0, -4(sp)
	flw	fa0, -4(sp)
	fsub.s	fa0, fa0, ft0
	fneg.s	fa0, fa0
	jr	ra
.float_of_int_pos:
	add	a0, a0, t1
# TODO: integer -> floating レジスタ間のmv (fmv.w.x) がほしいかもしれない...
	sw	a0, -4(sp)
	flw	fa0, -4(sp)
	fsub.s	fa0, fa0, ft0
	jr	ra

min_caml_int_of_float: # float -> int
	fli	ft0, L_0
	fle.s	t1, ft0, fa0
	beq	zero, t1, .int_of_float_neg
# positiveの場合
	fli	ft0, L_8388608
	fadd.s	fa0, fa0, ft0
	fsw	fa0, -4(sp)
	lw	a0, -4(sp)
	li	t1, 1258291200
	sub	a0, a0, t1
	jr	ra
.int_of_float_neg:
	fabs.s	fa0, fa0
	fli	ft0, L_8388608
	fadd.s	fa0, fa0, ft0
	fsw	fa0, -4(sp)
	lw	a0, -4(sp)
	li	t1, 1258291200
	sub	a0, a0, t1
	neg	a0, a0
	jr	ra

	.data
L_0:	# 0.0
	.word	0
L_1:	# 1.0
	.word	1065353216
L_2:	# 2.0
	.word	1073741824
L_8388608:	# 8388608.0
	.word	1258291200
L_PI:	# 3.141593
	.word	1078530011
L_2PI:	# 6.283185
	.word	1086918619
L_S3:	# 0.16666668
	.word	1042983596
L_S5:	# 0.008332824
	.word	1007191654
L_S7:	# 0.00019587841
	.word	961373366
L_C2:	# 0.5
	.word	1056964608
L_C4:	# 0.04166368
	.word	1026205577
L_C6:	# 0.0013695068
	.word	984842502
