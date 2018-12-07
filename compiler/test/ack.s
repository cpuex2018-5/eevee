	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	li	gp, 92	# initialize gp
#	main program starts
	addi	sp, sp, -8
	sw	ra, 4(sp)
	sw	fp, 0(sp)
	addi	fp, sp, 8
	li	a0, 2
	li	a1, 10
	call	ack_15
	call	min_caml_print_int
	lw	ra, 4(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 8
#	main program ends
end:
	b	end
ack_15:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
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
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
