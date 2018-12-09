min_caml_print_char:
# a0の下位8bitに出力したい文字のasciiコードが入っている
	w	a0
	jr	ra

min_caml_print_newline:
	addi	sp, sp, -4
	sw	t1, 0(sp)
	li	t1, 13
	w	t1
	li	t1, 10
	w	t1
	lw	t1, 0(sp)
	addi	sp, sp, 4
	jr	ra

min_caml_print_int:
	addi	sp, sp, -16
	sw	a1, 12(sp)
	sw	t1, 8(sp)
	sw	s1, 4(sp)
	sw	ra, 0(sp)
# 負数なら'-'を出力し、絶対値を取る
	bge	a0, zero, .print_int_L0
	li	t1, 45
	w	t1		# '-'
	neg	a0, a0
############# 何桁あるか調べる
.print_int_L0:
	li	s1, 100000
	bge	a0, s1, .print_int_L1	# bgeってあるよね？
# < 10 ** 5
	li	s1, 1000
	bge	a0, s1, .print_int_L2
# < 10 ** 3
	li	s1, 100
	bge	a0, s1, .print_int_body
	li	s1, 10
	bge	a0, s1, .print_int_body
	li	s1, 1
	b	.print_int_body
.print_int_L2:	# >= 10 ** 3, < 10 ** 5
	li	s1, 10000
	bge	a0, s1, .print_int_body
	li	s1, 1000
	b	.print_int_body
.print_int_L1:	# >= 10 ** 5
	li	s1, 100000000
	bge	a0, s1, .print_int_L3
# >= 10 ** 5, < 10 ** 8
	li	s1, 10000000
	bge	a0, s1, .print_int_body
	li	s1, 1000000
	bge	a0, s1, .print_int_body
	li	a0, 100000
	b	.print_int_body
.print_int_L3:	# >= 10 ** 8
	li	s1, 1000000000
	bge	a0, s1, .print_int_body
# >= 10 ** 8, < 10 ** 9
	li	s1, 100000000
	b	.print_int_body
###############
.print_int_body:
	mv	a1, s1
	call	min_caml_div_rem	# a0: 商, a1: あまり
	addi	a0, a0, 48
	w	a0
	li	t1, 1
	beq	t1, s1, .print_int_end
	mv	a0, a1
	call	.print_int_div_10	# s1 <- s1 / 10
	b	.print_int_body
.print_int_end:
	lw	a1, 12(sp)
	lw	t1, 8(sp)
	lw	s1, 4(sp)
	lw	ra, 0(sp)
	addi	sp, sp, 16
	jr	ra

.print_int_div_10:	# s1 <- s1 / 10
	li	t1, 10
	bne	s1, t1, .print_int_div_10_L0
	li	s1, 1
	jr	ra
.print_int_div_10_L0:
	li	t1, 100
	bne	s1, t1, .print_int_div_10_L1
	li	s1, 10
	jr	ra
.print_int_div_10_L1:
	li	t1, 1000
	bne	s1, t1, .print_int_div_10_L2
	li	s1, 100
	jr	ra
.print_int_div_10_L2:
	li	t1, 10000
	bne	s1, t1, .print_int_div_10_L3
	li	s1, 1000
	jr	ra
.print_int_div_10_L3:
	li	t1, 100000
	bne	s1, t1, .print_int_div_10_L4
	li	s1, 10000
	jr	ra
.print_int_div_10_L4:
	li	t1, 1000000
	bne	s1, t1, .print_int_div_10_L5
	li	s1, 100000
	jr	ra
.print_int_div_10_L5:
	li	t1, 10000000
	bne	s1, t1, .print_int_div_10_L6
	li	s1, 1000000
	jr	ra
.print_int_div_10_L6:
	li	t1, 100000000
	bne	s1, t1, .print_int_div_10_L7
	li	s1, 10000000
	jr	ra
.print_int_div_10_L7:	# s1 = 10 ** 9
	li	s1, 100000000
	jr	ra

min_caml_print_hex:
	addi	sp, sp, -12
	sw	a1, 8(sp)
	sw	t1, 4(sp)
	sw	ra, 0(sp)
	mv	a1, a0	# a1に元の数を保存　
	srai	a0, a1, 28
	call	.print_hex_write
	srai	a0, a1, 24
	call	.print_hex_write
	srai	a0, a1, 20
	call	.print_hex_write
	srai	a0, a1, 16
	call	.print_hex_write
	srai	a0, a1, 12
	call	.print_hex_write
	srai	a0, a1, 8
	call	.print_hex_write
	srai	a0, a1, 4
	call	.print_hex_write
	mv	a0, a1
	call	.print_hex_write
	lw	a1, 8(sp)
	lw	t1, 4(sp)
	lw	ra, 0(sp)
	addi	sp, sp, 12
	jr	ra
.print_hex_write:	# a0の下位4bitをhexで出力
	srai	t1, a0, 4
	slli	t1, t1, 4
	sub	a0, a0, t1
	li	t1, 10
	bge	a0, t1, .print_hex_write_L0
	addi	a0, a0, 48
	w	a0
	jr	ra
.print_hex_write_L0:
	addi	a0, a0, 87
	w	a0
	jr	ra

min_caml_print_float:	# print float in hex
	addi	sp, sp, -12
	sw	a0, 8(sp)
	sw	ra, 4(sp)
	fsw	fa0, 0(sp)
	lw	a0, 0(sp)
	call	min_caml_print_hex
	lw	a0, 8(sp)
	lw	ra, 4(sp)
	addi	sp, sp, 12
	jr	ra

min_caml_create_array:
	addi	sp, sp, -8
	sw	t1, 4(sp)
	sw	t2, 0(sp)
	mv	t1, zero
	mv	t2, gp
.create_array_L0:
	sw	a1, 0(gp)
	addi	gp, gp, 4
	addi	t1, t1, 1
	ble	t1, a0, .create_array_L0
	mv	a0, t2
	lw	t1, 4(sp)
	lw	t2, 0(sp)
	addi	sp, sp, 8
	jr	ra

min_caml_div_rem:
# a0 <- a0 / a1, a1 <- a0 mod a1 (引数a0, a1は共に正)
	addi	sp, sp, -4
	sw	t1, 0(sp)
	li	t1, 0			# t1が商
.div_L0:
	blt	a0, a1, .div_end
	sub	a0, a0, a1
	addi	t1, t1, 1
	b	.div_L0
.div_end:
	mv	a1, a0
	mv	a0, t1
	lw	t1, 0(sp)
	addi	sp, sp, 4
	jr	ra

# min_caml_mul:
# # a0 <- a0 * a1
# 	li	t1, 0
# .mul_L0:
# 	ble	a1, zero, .mul_end
# 	add	t1, t1, a0
# 	addi	a1, a1, -1
# 	b	.mul_L0
# .mul_end:
# 	mv	a0, t1
# 	jr	ra

min_caml_floor:
	addi	sp, sp, -12
	sw	t1, 8(sp)
	fsw	ft1, 4(sp)
	sw	ra, 0(sp)
	fmv	ft1, fa0	# ft1: before flooring
	call	min_caml_int_of_float
	call	min_caml_float_of_int
	fle	t1, fa0, ft1	# after <= before ?
	bne	t1, zero, .floor_ret
	fli	ft1, L_1
	fsub	fa0, fa0, ft1
.floor_ret:
	lw	t1, 8(sp)
	flw	ft1, 4(sp)
	lw	ra, 0(sp)
	addi	sp, sp, 12
	jr	ra

# sin/cos
.kernel_sin:	# use: ft1,2,3,4
	fmv	ft1, fa0
	fmul	ft1, ft1, ft1	# ft1: A ^ 2
	fli	ft2, L_S3	# ft2: 係数
	fmul	ft3, fa0, ft1	# ft3: A ^ 3
	fmul	ft4, ft3, ft2
	fsub	fa0, fa0, ft4
	fli	ft2, L_S5
	fmul	ft3, ft3, ft1	# ft3: A ^ 5
	fmul	ft4, ft3, ft2
	fadd	fa0, fa0, ft4
	fli	ft2, L_S7
	fmul	ft3, ft3, ft1	# ft3: A ^ 7
	fmul	ft4, ft3, ft2
	fsub	fa0, fa0, ft4
	jr	ra

.kernel_cos:	# use: ft1,2,3,4
	fmv	ft1, fa0
	fmul	ft1, ft1, ft1	# ft1: A ^ 2
	fli	fa0, L_1
	fli	ft2, L_C2
	fmv	ft3, ft1	# ft3: A ^ 2
	fmul	ft4, ft3, ft2
	fsub	fa0, fa0, ft4
	fli	ft2, L_C4
	fmul	ft3, ft3, ft1	# ft3: A ^ 4
	fmul	ft4, ft3, ft2
	fadd	fa0, fa0, ft4
	fli	ft2, L_C6
	fmul	ft3, ft3, ft1	# ft3: A ^ 6
	fmul	ft4, ft3, ft2
	fsub	fa0, fa0, ft4
	jr	ra

.reduction_2pi:	# 呼ばれた時点でft2 = 2.0である必要がある
	fli	ft3, L_2PI		# ft3: P (2pi)
	fli	ft4, L_2PI		# ft4: 2pi (const)
.reduction_2pi_L0:	# loop
	fle	t2, ft3, fa0	# P <= A
	beq	t2, zero, .reduction_2pi_L1
	fmul	ft3, ft3, ft2
	b	.reduction_2pi_L0
.reduction_2pi_L1:	# loop
	fle	t2, ft4, fa0	# 2pi <= A
	beq	t2, zero, .reduction_2pi_end
	fle	t2, ft3, fa0	# P <= A
	beq	t2, zero, .reduction_2pi_L2
# if (A >= P)
	fsub	fa0, fa0, ft3
.reduction_2pi_L2:
	fdiv	ft3, ft3, ft2
	b	.reduction_2pi_L1
.reduction_2pi_end:
	jr	ra

min_caml_sin:
	addi	sp, sp, -36
	fsw	ft0, 32(sp)
	fsw	ft1, 28(sp)
	fsw	ft2, 24(sp)
	fsw	ft3, 20(sp)
	fsw	ft4, 16(sp)
	sw	t2, 12(sp)
	sw	s1, 8(sp)
	sw	ra, 4(sp)
	sw	fp, 0(sp)
	fli	ft0, L_0	# 0.0
	fli	ft1, L_PI	# pi
	fli	ft2, L_2	# 2.0
	fle	s1, ft0, fa0	# s1: FLAG
	xori	s1, s1, 1
	fabs	fa0, fa0
	call	.reduction_2pi
	fle	t2, ft1, fa0	# pi <= A
	beq	t2, zero, .sin_L0
# if (A >= pi)
	fsub	fa0, fa0, ft1
	xori	s1, s1, 1
.sin_L0:
	fdiv	ft3, ft1, ft2	# ft3 = pi / 2
	fle	t2, ft3, fa0	# pi / 2 <= A
	beq	t2, zero, .sin_L1
# if (A >= pi / 2)
	fsub	fa0, ft1, fa0
.sin_L1:
	fdiv	ft1, ft3, ft2	# ft1 = pi / 4 (piを上書き)
	fle	t2, fa0, ft1	# A <= pi / 4
	beq	t2, zero, .sin_L2
# if (A <= pi / 4)
	call	.kernel_sin
	b	.sin_L3
.sin_L2: # else
	fsub	fa0, ft3, fa0
	call	.kernel_cos
.sin_L3:
	beq	s1, zero, .sin_end
	fneg	fa0, fa0	# FLAG == 1ならneg
.sin_end:
	lw	fp, 0(sp)
	lw	ra, 4(sp)
	lw	s1, 8(sp)
	flw	ft0, 32(sp)
	flw	ft1, 28(sp)
	flw	ft2, 24(sp)
	flw	ft3, 20(sp)
	flw	ft4, 16(sp)
	lw	t2, 12(sp)
	addi	sp, sp, 36
	jr	ra

min_caml_cos:
	addi	sp, sp, -36
	fsw	ft0, 32(sp)
	fsw	ft1, 28(sp)
	fsw	ft2, 24(sp)
	fsw	ft3, 20(sp)
	fsw	ft4, 16(sp)
	sw	t2, 12(sp)
	sw	s1, 8(sp)
	sw	ra, 4(sp)
	sw	fp, 0(sp)
	fli	ft1, L_PI	# pi
	fli	ft2, L_2	# 2.0
	li	s1, 0		# s1: FLAG
	fabs	fa0, fa0
	call	.reduction_2pi
	fle	t2, ft1, fa0	# pi <= A
	beq	t2, zero, .cos_L0
# if (A >= pi)
	fsub	fa0, fa0, ft1
	xori	s1, s1, 1
.cos_L0:
	fdiv	ft3, ft1, ft2	# ft3 = pi / 2
	fle	t2, ft3, fa0	# pi / 2 <= A
	beq	t2, zero, .cos_L1
# if (A >= pi / 2)
	fsub	fa0, ft1, fa0
	xori	s1, s1, 1
.cos_L1:
	fdiv	ft1, ft3, ft2	# ft1 = pi / 4 (piを上書き)
	fle	t2, fa0, ft1	# A <= pi / 4
	beq	t2, zero, .cos_L2
# if (A <= pi / 4)
	call	.kernel_cos
	b	.cos_L3
.cos_L2: # else
	fsub	fa0, ft3, fa0
	call	.kernel_sin
.cos_L3:
	beq	s1, zero, .cos_end
	fneg	fa0, fa0	# FLAG == 1ならneg
.cos_end:
	lw	fp, 0(sp)
	lw	ra, 4(sp)
	lw	s1, 8(sp)
	flw	ft0, 32(sp)
	flw	ft1, 28(sp)
	flw	ft2, 24(sp)
	flw	ft3, 20(sp)
	flw	ft4, 16(sp)
	lw	t2, 12(sp)
	addi	sp, sp, 36
	jr	ra

.kernel_atan:
	fmv	ft0, fa0
	fmv	ft1, fa0
	fmul	ft0, ft0, ft0	# ft0: A ^ 2
	fmul	ft1, ft1, ft0	# ft1: A ^ 3
	fli	ft2, L_A3	# ft2: 係数
	fmul	ft3, ft2, ft1
	fsub	fa0, fa0, ft3
	fmul	ft1, ft1, ft0	# ft1: A ^ 5
	fli	ft2, L_A5
	fmul	ft3, ft2, ft1
	fadd	fa0, fa0, ft3
	fmul	ft1, ft1, ft0	# ft1: A ^ 7
	fli	ft2, L_A7
	fmul	ft3, ft2, ft1
	fsub	fa0, fa0, ft3
	fmul	ft1, ft1, ft0	# ft1: A ^ 9
	fli	ft2, L_A9
	fmul	ft3, ft2, ft1
	fadd	fa0, fa0, ft3
	fmul	ft1, ft1, ft0	# ft1: A ^ 11
	fli	ft2, L_A11
	fmul	ft3, ft2, ft1
	fsub	fa0, fa0, ft3
	fmul	ft1, ft1, ft0	# ft1: A ^ 13
	fli	ft2, L_A13
	fmul	ft3, ft2, ft1
	fadd	fa0, fa0, ft3
	jr	ra

min_caml_atan:
	addi	sp, sp, -24
	fsw	ft0, 20(sp)
	fsw	ft1, 16(sp)
	fsw	ft2, 12(sp)
	fsw	ft3, 8(sp)
	sw	s1, 4(sp)
	sw	ra, 0(sp)
	fli	ft0, L_Atan1
	fli	ft1, L_0
	fle	s1, ft1, fa0	# s1: sign flag (s1 = 1 when positive)
	fabs	fa0, fa0
	fle	t1, ft0, fa0	# 0.4375 <= fa0
	bne	t1, zero, .atan_L0
# |A| < 0.4375の場合
	call	.kernel_atan
	b	.atan_L2
.atan_L0:
	fli	ft0, L_Atan2
	fle	t1, ft0, fa0	# 2.4375 <= fa0
	bne	t1, zero, .atan_L1
# |A| < 2.4375の場合
	fli	ft0, L_1
	fsub	ft1, fa0, ft0	# ft1 = |A| - 1.0
	fadd	ft0, fa0, ft0	# ft0 = |A| + 1.0
	fdiv	fa0, ft1, ft0
	call	.kernel_atan
	fli	ft0, L_PI4
	fadd	fa0, fa0, ft0
	# 符号処理
	b	.atan_L2
.atan_L1:
# |A| >= 2.4375の場合
	finv	fa0, fa0
	call	.kernel_atan
	fli	ft0, L_PI2
	fsub	fa0, ft0, fa0
	# 符号処理
	b	.atan_L2
.atan_L2:
	bne	s1, zero, .atan_end
	fneg	fa0, fa0
.atan_end:
	flw	ft0, 20(sp)
	flw	ft1, 16(sp)
	flw	ft2, 12(sp)
	flw	ft3, 8(sp)
	lw	s1, 4(sp)
	lw	ra, 0(sp)
	addi	sp, sp, 24
	jr	ra

min_caml_float_of_int: # int -> float
	addi	sp, sp, -8
	fsw	ft0, 4(sp)
	sw	t1, 0(sp)
	fli	ft0, L_8388608
	li	t1, 1258291200  # 0x4b000000
	bge	a0, zero, .float_of_int_pos
# negativeの場合
	neg	a0, a0
	add	a0, a0, t1
	sw	a0, -4(sp)
	flw	fa0, -4(sp)
	fsub	fa0, fa0, ft0
	fneg	fa0, fa0
	b	.float_of_int_ret
.float_of_int_pos:
	add	a0, a0, t1
# TODO: integer -> floating レジスタ間のmv (fmv.w.x) がほしいかもしれない...
	sw	a0, -4(sp)
	flw	fa0, -4(sp)
	fsub	fa0, fa0, ft0
.float_of_int_ret:
	flw	ft0, 4(sp)
	lw	t1, 0(sp)
	addi	sp, sp, 8
	jr	ra

min_caml_int_of_float: # float -> int
	addi	sp, sp, -8
	fsw	ft0, 4(sp)
	sw	t1, 0(sp)
	fli	ft0, L_0
	fle	t1, ft0, fa0
	beq	zero, t1, .int_of_float_neg
# positiveの場合
	fli	ft0, L_8388608
	fadd	fa0, fa0, ft0
	fsw	fa0, -4(sp)
	lw	a0, -4(sp)
	li	t1, 1258291200
	sub	a0, a0, t1
	b	.int_of_float_ret
.int_of_float_neg:
	fabs	fa0, fa0
	fli	ft0, L_8388608
	fadd	fa0, fa0, ft0
	fsw	fa0, -4(sp)
	lw	a0, -4(sp)
	li	t1, 1258291200
	sub	a0, a0, t1
	neg	a0, a0
.int_of_float_ret:
	flw	ft0, 4(sp)
	lw	t1, 0(sp)
	addi	sp, sp, 8
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
L_10:	# 10.0
	.word	1092616192
L_PI4:	# 0.785398
	.word	1061752795
L_PI2:	# 1.570796
	.word	1070141403
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
L_Atan1:	# 0.437500
	.word	1054867456
L_Atan2:	# 2.437500
	.word	1075576832
L_A3:	# 0.3333333
	.word	1051372202
L_A5:	# 0.2
	.word	1045220557
L_A7:	# 0.142857142
	.word	1041385765
L_A9:	# 0.111111104
	.word	1038323256
L_A11:	# 0.08976446
	.word	1035458158
L_A13:	# 0.060035485
	.word	1031137221
