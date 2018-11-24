main:
# コメントの数字はfpuのアルゴリズムで実行した時にシミュレータで出た結果
#	main program starts
	fli	fa0, l_8348
	fli	fa1, l_8309
	fadd	fa0, fa0, fa1
	call	min_caml_print_float	# 1124132454
	call	min_caml_print_newline

	fli	fa0, l_8348
	fli	fa1, l_8309
	fsub	fa0, fa0, fa1
	call	min_caml_print_float	# 1123955507
	call	min_caml_print_newline

	fli	fa0, l_8348
	fli	fa1, l_8309
	fmul	fa0, fa0, fa1
	call	min_caml_print_float	# 1122395750
	call	min_caml_print_newline

	fli	fa0, l_8348
	fli	fa1, l_8309
	fdiv	fa0, fa0, fa1
	call	min_caml_print_float	# 1125005541
	call	min_caml_print_newline

	fli	fa0, l_8348
	fsqrt	fa0, fa0
	call	min_caml_print_float	# 1093993714
	call	min_caml_print_newline

	fli	fa0, l_8348
	finv	fa0, fa0
	call	min_caml_print_float	# 1006632959
	call	min_caml_print_newline

	fli	fa0, l_8348
	fneg	fa0, fa0
	call	min_caml_print_float	# -1023410176
	call	min_caml_print_newline

	fli	fa0, l_8348
	fneg	fa0, fa0
	fabs	fa0, fa0
	call	min_caml_print_float	# 1124073472
	call	min_caml_print_newline

	fli	fa0, l_8348
	fneg	fa0, fa0
	fabs	fa1, fa0
	fmv	fa0, fa1
	call	min_caml_print_float	# 1124073472
	call	min_caml_print_newline

	fli	fa0, l_8348
	fli	fa1, l_8348
	feq	a0, fa0, fa1
	call	min_caml_print_int	# 1
	call	min_caml_print_newline

	fli	fa0, l_8348
	fli	fa1, l_8348
	fle	a0, fa0, fa1
	call	min_caml_print_int	# 1
	call	min_caml_print_newline

# 	fli	fa0, l_8348
# 	fli	fa1, l_8348
# 	flt	a0, fa0, fa1
# 	call	min_caml_print_int
# 	call	min_caml_print_newline

#	main program ends
	jal	zero,end
end:
	j	end
	.data
l_8348:	# 128.000000
	.word	1124073472
l_8309:	# 0.900000
	.word	1063675494
l_8308:	# 0.200000
	.word	1045220557
l_8205:	# 150.000000
	.word	1125515264
l_8203:	# -150.000000
	.word	-1021968384
l_8185:	# 0.100000
	.word	1036831949
l_8181:	# -2.000000
	.word	-1073741824
l_8179:	# 0.003906
	.word	998244352
l_8154:	# 20.000000
	.word	1101004800
l_8153:	# 0.050000
	.word	1028443341
l_8147:	# 0.250000
	.word	1048576000
l_8143:	# 10.000000
	.word	1092616192
l_8137:	# 0.300000
	.word	1050253722
l_8136:	# 255.000000
	.word	1132396544
l_8135:	# 0.500000
	.word	1056964608
l_8134:	# 0.150000
	.word	1041865114
l_8130:	# 3.141593
	.word	1078530011
l_8129:	# 30.000000
	.word	1106247680
l_8128:	# 15.000000
	.word	1097859072
l_8127:	# 0.000100
	.word	953267991
l_8062:	# 100000000.000000
	.word	1287568416
l_8058:	# 1000000000.000000
	.word	1315859240
l_8037:	# -0.100000
	.word	-1110651699
l_8025:	# 0.010000
	.word	1008981770
l_8024:	# -0.200000
	.word	-1102263091
l_7782:	# 2.000000
	.word	1073741824
l_7748:	# -200.000000
	.word	-1018691584
l_7746:	# 200.000000
	.word	1128792064
l_7745:	# 0.017453
	.word	1016003125
l_7672:	# -1.000000
	.word	-1082130432
l_7671:	# 1.000000
	.word	1065353216
l_7670:	# 0.000000
	.word	0
