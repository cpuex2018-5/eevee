	.text
# ============= beginning of libmincaml.S ===============
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

