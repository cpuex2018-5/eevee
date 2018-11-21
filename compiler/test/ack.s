	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	li	gp, 92	# initialize gp
#	main program starts
	li	a0, 2
	li	a1, 10
	call	ack_15
	call	min_caml_print_int
#	main program ends
	j	end
ack_15:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	bgt	a0, zero, ble_else_34
	addi	a0, a1, 1
	b	ack_15_ret
ble_else_34:
	bgt	a1, zero, ble_else_35
	addi	a0, a0, -1
	li	a1, 1
	call	ack_15
	b	ack_15_ret
ble_else_35:
	addi	a2, a0, -1
	addi	a1, a1, -1
	sw	a2, 0(sp)
	call	ack_15
	mv	a1, a0
	lw	a0, 0(sp)
	call	ack_15
ack_15_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
end:
	j	end
