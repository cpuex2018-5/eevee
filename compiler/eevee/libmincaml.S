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

min_caml_print_float:
# TODO

min_caml_sin:
# TODO

min_caml_cos:
# TODO

min_caml_abs_float:
	fabs.s	fa0, fa0
	jr	ra

min_caml_sqrt:
	fsqrt.s	fa0, fa0
	jr	ra

min_caml_float_of_int: # int -> float
	fli	ft0, L_itof
	li	t1, 1258291200
	or	a0, a0, t1
# TODO: integer -> floating レジスタ間のmv (fmv.w.x) がほしいかもしれない...
	sw	a0, -4(sp)
	flw	fa0, -4(sp)
	fsub.s	fa0, fa0, ft0
	jr	ra

min_caml_int_of_float: # float -> int
# TODO

	.data
L_itof:	1258291200	# 8388608.0
