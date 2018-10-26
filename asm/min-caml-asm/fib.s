	.text
	.globl _min_caml_start
	.align 2
_min_caml_start: # main entry point
	addi	sp, sp, -8
	sw	ra, 4(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 8
#	main program starts
	li	a0, 30
	call	fib.10
#	main program ends
	lw	ra, 4(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 8
	jal	zero, end
fib.10:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	li	s11, 1
	bgt	a0, s11, ble_else.24
	j	fib.10_ret
ble_else.24:
	addi	a1, a0, -1
	sw	a0, 0(sp)
	mv	a0, a1
	call	fib.10
	lw	a1, 0(sp)
	addi	a1, a1, -2
	sw	a0, 4(sp)
	mv	a0, a1
	call	fib.10
	lw	a1, 4(sp)
	add	a0, a1, a0
	j	fib.10_ret
fib.10_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
end:
	jal	zero, end
