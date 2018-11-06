	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	addi	sp, sp, -8
	sw	fp, 0(sp)
	addi	fp, sp, 8
#	main program starts
	li	a0, 30
	call	fib.10
	call	min_caml_print_int
#	main program ends
	lw	ra, 4(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 8
	j	end
fib.10:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	li	t6, 1
	bgt	a0, t6, ble_else.24
	b	fib.10_ret
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
	b	fib.10_ret
fib.10_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
end:
	j	end
