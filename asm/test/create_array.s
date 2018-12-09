main:
#	main program starts
	li	a0, 10
	li	a1, 3
	call	min_caml_create_array
	lw	t1, 0(a0)
	lw	t2, 4(a0)
#	main program ends
end:
	b	end
