	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	li	gp, 92	# initialize gp
#	main program starts
	li	a0, 30
	call	fib_10
	call	min_caml_print_int
#	main program ends
	j	end
fib_10:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	li	t6, 1
	bgt	a0, t6, ble_else_24
	b	fib_10_ret
ble_else_24:
	addi	a1, a0, -1
	sw	a0, 0(sp)
	mv	a0, a1
	call	fib_10
	lw	a1, 0(sp)
	addi	a1, a1, -2
	sw	a0, 4(sp)
	mv	a0, a1
	call	fib_10
	lw	a1, 4(sp)
	add	a0, a1, a0
fib_10_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
end:
	j	end
