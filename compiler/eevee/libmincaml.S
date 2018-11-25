	.text
# ============= beginning of libmincaml.S ===============
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
	addi	sp, sp, -12
	sw	t1, 8(sp)
	sw	s1, 4(sp)
	sw	ra, 0(sp)
	li	s1, 0		# s1: 何桁あるかを数える
# 負数なら'-'を出力し、絶対値を取る
	bge	a0, zero, .print_int_L0
	li	t1, 45
	w	t1		# '-'
	neg	a0, a0
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
	lw	t1, 8(sp)
	lw	s1, 4(sp)
	lw	ra, 0(sp)
	addi	sp, sp, 12
	jr	ra

min_caml_print_float:
	addi	sp, sp, -8
	sw	a1, 4(sp)
	sw	ra, 0(sp)
	fsw	fa0, -4(sp)	# spをあげない横着
	lw	a0, -4(sp)
	bge	a0, zero, .print_uint_L0
	li	a1, 45
	w	a1
	neg	a0, a0
.print_uint_L0:
	li	a1, 1000000000
	call	min_caml_div_rem	# a0: 商、a1: 余り
	addi	a0, a0, 48
	w	a0
	mv	a0, a1
	li	a1, 100000000
	call	min_caml_div_rem
	addi	a0, a0, 48
	w	a0
	mv	a0, a1
	li	a1, 10000000
	call	min_caml_div_rem
	addi	a0, a0, 48
	w	a0
	mv	a0, a1
	li	a1, 1000000
	call	min_caml_div_rem
	addi	a0, a0, 48
	w	a0
	mv	a0, a1
	li	a1, 100000
	call	min_caml_div_rem
	addi	a0, a0, 48
	w	a0
	mv	a0, a1
	li	a1, 10000
	call	min_caml_div_rem
	addi	a0, a0, 48
	w	a0
	mv	a0, a1
	li	a1, 1000
	call	min_caml_div_rem
	addi	a0, a0, 48
	w	a0
	mv	a0, a1
	li	a1, 100
	call	min_caml_div_rem
	addi	a0, a0, 48
	w	a0
	mv	a0, a1
	li	a1, 10
	call	min_caml_div_rem
	addi	a0, a0, 48
	w	a0
	addi	a1, a1, 48
	w	a1
	lw	a1, 4(sp)
	lw	ra, 0(sp)
	addi	sp, sp, 8
	jr	ra


min_caml_read_int:
# ' '(space)または'\n'で区切る
	addi	sp, sp, -16
	sw	t1, 12(sp)
	sw	t2, 8(sp)
	sw	t3, 4(sp)
	sw	t4, 0(sp)
	mv	a0, zero
	li	t3, 32	# t3: space
	li	t4, 10	# t4: '\n'
	li	t2, 45	# t2: '-'
.read_int_L0:	# skip spaces
	r	t1	# t1: input
	beq	t1, t3, .read_int_L0
	beq	t1, t4, .read_int_L0
	bne	t1, t2, .read_int_L2
# negative number
	r	t1
.read_int_L1:
	mv	t2, a0
	slli	a0, a0, 3
	add	a0, a0, t2
	add	a0, a0, t2	# a0 *= 10
	addi	t1, t1, -48
	sub	a0, a0, t1
	r	t1
	beq	t1, t3, .read_int_end
	beq	t1, t4, .read_int_end
	b	.read_int_L1
.read_int_L2:	# positive number
	mv	t2, a0
	slli	a0, a0, 3
	add	a0, a0, t2
	add	a0, a0, t2	# a0 *= 10
	addi	t1, t1, -48
	add	a0, a0, t1
	r	t1
	beq	t1, t3, .read_int_end
	beq	t1, t4, .read_int_end
	b	.read_int_L2
.read_int_end:
	lw	t1, 12(sp)
	lw	t2, 8(sp)
	lw	t3, 4(sp)
	lw	t4, 0(sp)
	addi	sp, sp, 16
	jr	ra

min_caml_read_float:
# ' '(space)または'\n'で区切る
# TODO: 小数点第1位までしかないことを前提にしているので汎用的にする
	addi	sp, sp, -24
	sw	t1, 20(sp)
	sw	t2, 16(sp)
	sw	t3, 12(sp)
	sw	t4, 8(sp)
	sw	t5, 4(sp)
	sw	ra, 0(sp)
	mv	a0, zero
	li	t3, 32	# t3: space
	li	t4, 10	# t4: '\n'
	li	t5, 46	# t5: '.'
	li	t2, 45	# t2: '-'
.read_float_L0:	# skip spaces
	r	t1	# t1: input
	beq	t1, t3, .read_float_L0
	beq	t1, t4, .read_float_L0
	bne	t1, t2, .read_float_L2
# negative number
	r	t1
.read_float_L1:
	mv	t2, a0
	slli	a0, a0, 3
	add	a0, a0, t2
	add	a0, a0, t2	# a0 *= 10
	addi	t1, t1, -48
	sub	a0, a0, t1
	r	t1
	beq	t1, t3, .read_float_end
	beq	t1, t4, .read_float_end
	bne	t1, t5, .read_float_L1
	r	t1
	b	.read_float_L1
.read_float_L2:	# positive number
	mv	t2, a0
	slli	a0, a0, 3
	add	a0, a0, t2
	add	a0, a0, t2	# a0 *= 10
	addi	t1, t1, -48
	add	a0, a0, t1
	r	t1
	beq	t1, t3, .read_float_end
	beq	t1, t4, .read_float_end
	bne	t1, t5, .read_float_L2
	r	t1
	b	.read_float_L2
.read_float_end:
	call	min_caml_float_of_int
	fli	ft0, L_10
	fdiv	fa0, fa0, ft0
	lw	t1, 20(sp)
	lw	t2, 16(sp)
	lw	t3, 12(sp)
	lw	t4, 8(sp)
	lw	t5, 4(sp)
	lw	ra, 0(sp)
	addi	sp, sp, 24
	jr	ra

