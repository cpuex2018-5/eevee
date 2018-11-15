	.text
# ============= beginning of libcontest.S ===============
min_caml_print_char:
# a0の下位8bitに出力したい文字のasciiコードが入っている
	w	a0
	jr	ra

min_caml_print_int:	# コンテスト用最適化版(数字はたかだか3桁として出力)
	addi	sp, sp, -4
	sw	ra, 0(sp)
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
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra

min_caml_read_int:	# inputs are binary-encoded
	addi	sp, sp, -4
	sw	t1, 0(sp)
	mv	a0, zero
	r	t1
	add	a0, a0, t1
	slli	a0, a0, 8
	r	t1
	andi	t1, t1, 255
	add	a0, a0, t1
	slli	a0, a0, 8
	r	t1
	andi	t1, t1, 255
	add	a0, a0, t1
	slli	a0, a0, 8
	r	t1
	andi	t1, t1, 255
	add	a0, a0, t1
	lw	t1, 0(sp)
	addi	sp, sp, 4
	jr	ra

min_caml_read_float:	# inputs are binary-encoded
	addi	sp, sp, -8
	sw	t1, 0(sp)
	sw	t2, 4(sp)
	mv	t2, zero
	r	t1
	add	t2, t2, t1
	slli	t2, t2, 8
	r	t1
	andi	t1, t1, 255
	add	t2, t2, t1
	slli	t2, t2, 8
	r	t1
	andi	t1, t1, 255
	add	t2, t2, t1
	slli	t2, t2, 8
	r	t1
	andi	t1, t1, 255
	add	t2, t2, t1
	sw	t2, -4(sp)
	flw	fa0, -4(sp)
	lw	t2, 4(sp)
	lw	t1, 0(sp)
	addi	sp, sp, 8
	jr	ra

