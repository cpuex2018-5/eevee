	.option nopic
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-8
	sw	s0,4(sp)
	addi	s0,sp,8
	li	a5,4
	mv	a0,a5
	lw	s0,4(sp)
	addi	sp,sp,8
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
