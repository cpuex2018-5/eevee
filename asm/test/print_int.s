main:
#	main program starts
	li	a0, -23
	call	min_caml_print_int
	call	min_caml_print_newline
	li	a0, 4028
	call	min_caml_print_int
#	main program ends
	jal	zero,end
end:
	j	end
