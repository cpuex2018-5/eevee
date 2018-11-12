main:
	addi	sp,sp,-8
	sw	ra,4(sp)
	sw	fp,0(sp)
	addi	fp,sp,8     # fp: old stack pointer
#	main program starts
	call	min_caml_read_int
	call	min_caml_print_int
	call	min_caml_print_newline
	call	min_caml_read_int
	call	min_caml_print_int
	call	min_caml_print_newline
	call	min_caml_read_int
	call	min_caml_print_int
	call	min_caml_print_newline
	call	min_caml_read_float
#	main program ends
	mv	a5,a0
	mv	a0,a5
	lw	ra,4(sp)
	lw	s0,0(sp)
	addi	sp,sp,8
	jal	zero,end
end:
	j	end
