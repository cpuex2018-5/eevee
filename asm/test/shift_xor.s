main:
#	main program starts
	li	a0, 15
	slli	a0, a0, 4
	call	min_caml_print_int    # 240
	call	min_caml_print_newline

	li	a0, 33
	srai	a0, a0, 2
	call	min_caml_print_int    # 8
	call	min_caml_print_newline
	
	li	a0, 1
	li	a1, 2
	xor	a0, a0, a1
	call	min_caml_print_int    # 3
	call	min_caml_print_newline
	
	li	a0, 1
	xori	a0, a0, 2
	call	min_caml_print_int    # 3

#	main program ends
end:
	b	end
