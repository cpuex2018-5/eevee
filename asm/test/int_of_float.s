main:
#	main program starts
	fli	fa0, l.111
	call	min_caml_int_of_float
	call	min_caml_print_int
	call	min_caml_print_newline
	fli	fa0, l.110
	call	min_caml_int_of_float
	call	min_caml_print_int
	call	min_caml_print_newline
	fli	fa0, l.109
	call	min_caml_int_of_float
	call	min_caml_print_int
	call	min_caml_print_newline
	fli	fa0, l.108
	call	min_caml_int_of_float
	call	min_caml_print_int
	call	min_caml_print_newline
	fli	fa0, l.107
	call	min_caml_int_of_float
	call	min_caml_print_int
	call	min_caml_print_newline
	fli	fa0, l.106
	call	min_caml_int_of_float
	call	min_caml_print_int
	call	min_caml_print_newline
	fli	fa0, l.105
	call	min_caml_int_of_float
	call	min_caml_print_int
	call	min_caml_print_newline
	fli	fa0, l.104
	call	min_caml_int_of_float
	call	min_caml_print_int
#	main program ends
end:
	b	end
	.data
l.111:	# 0.000000
	.word	0
l.110:	# 1.000000
	.word	1065353216
l.109:	# 1.500000
	.word	1069547520
l.108:	# 400.000000
	.word	1137180672
l.107:	# 4.000000
	.word	1082130432
l.106:	# 2.000000
	.word	1073741824
l.105:	# 1.400000
	.word	1068708659
l.104:	# 2.400000
	.word	1075419546
