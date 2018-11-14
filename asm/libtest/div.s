main:
#	main program starts
	li	a0, 14
	li	a1, 3
	call	min_caml_div_rem
#	main program ends
	jal	zero,end
end:
	j	end
