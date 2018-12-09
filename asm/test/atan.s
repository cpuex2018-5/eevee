main:
#	main program starts
#	fli	fa0, L_0	# 0.0
#	fli	fa0, L_A5	# atan(0.2) = 0.19739555984988078
#	fli	fa0, L_1	# 0.7853981633974483
#	fli	fa0, L_2	# 1.1071487177940906
	fli	fa0, L_2PI	# 1.4129651365067377
	call	min_caml_atan
#	main program ends
end:
	b	end
	.data
L_a:	# 12.3
	.word	1095027917
