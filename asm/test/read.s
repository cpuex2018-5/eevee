main:
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
	jal	zero,end
end:
	j	end
