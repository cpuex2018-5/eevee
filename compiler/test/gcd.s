	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
#	main program starts
	li	a0, 21600
	li	a1, 337500
	call	gcd_7
	call	min_caml_print_int
#	main program ends
	j	end
gcd_7:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	bne	a0, zero, beq_else_17
	mv	a0, a1
	b	gcd_7_ret
beq_else_17:
	bgt	a0, a1, ble_else_18
	sub	a1, a1, a0
	call	gcd_7
	b	gcd_7_ret
ble_else_18:
	sub	a0, a0, a1
	mv	t5, a1
	mv	a1, a0
	mv	a0, t5
	call	gcd_7
gcd_7_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
end:
	j	end
