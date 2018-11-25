main:
#	main program starts
	li	a0, -23
	call	min_caml_float_of_int
#	main program ends
	jal	zero,end
end:
	j	end
