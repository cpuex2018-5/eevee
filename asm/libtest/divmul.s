main:
	addi	sp,sp,-8
	sw	ra,4(sp)
	sw	fp,0(sp)
	addi	fp,sp,8     # fp: old stack pointer
#	main program starts
	li	a0, 15
	li	a1, 3
	call	min_caml_mul
#	main program ends
	mv	a5,a0
	mv	a0,a5
	lw	ra,4(sp)
	lw	s0,0(sp)
	addi	sp,sp,8
	jal	zero,end
min_caml_div_rem:
# a0 <- a0 / a1, a1 <- a0 mod a1 (引数a0, a1は共に正)
	li	t1, 0			# t1にストア
.div_L0:
	blt	a0, a1, .div_end	# a0 < a1なら終了
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
end:
	jal	zero,end
