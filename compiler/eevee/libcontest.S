	.text
# ============= beginning of libcontest.S ===============
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
