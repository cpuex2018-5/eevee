	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	addi	sp, sp, -8
	sw	fp, 0(sp)
	addi	fp, sp, 8
#	main program starts
	li	a0, 21600
	lui	a1, 82
	ori	a1, a1, 1628
	call	gcd.7
	call	min_caml_print_int
#	main program ends
	lw	ra, 4(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 8
	j	end
gcd.7:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	bne	a0, zero, beq_else.17
	mv	a0, a1
	b	gcd.7_ret
beq_else.17:
	bgt	a0, a1, ble_else.18
	sub	a1, a1, a0
	call	gcd.7
	b	gcd.7_ret
ble_else.18:
	sub	a0, a0, a1
	mv	t5, a1
	mv	a1, a0
	mv	a0, t5
	call	gcd.7
	b	gcd.7_ret
gcd.7_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
end:
	j	end
