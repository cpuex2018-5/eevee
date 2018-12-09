main:
#	main program starts
	fli	fa0, L_a	# -0.263231791365801
#	fli	fa0, L_1	# 0.8414709848078965
#	fli	fa0, L_2	# 0.9092974268256817
	call	min_caml_sin
#	main program ends
end:
	b	end
	.data
L_a:	# 12.3
	.word	1095027917
