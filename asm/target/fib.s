	.file	"fib.c"
	.option nopic
	.text
	.align	1
	.globl	fib
	.type	fib, @function
fib:
	addi	sp,sp,-24   # callee-save
	sw	ra,20(sp)
	sw	fp,16(sp)
	sw	s1,12(sp)
	addi	fp,sp,24    # set new fp
	mv	a5,a0
	sw	a5,8(sp)    # 8(sp) <- n
	mv	a4,a5
	li	a5,1
	bgt	a4,a5,.L2
	lw	a5,8(sp)
	j	.L3
.L2:                        # case of n > 1
	lw	a5,8(sp)    # a5 <- n
	addi	a5,a5,-1    # a5 <- n - 1
	mv	a0,a5
	call	fib
	mv	a5,a0
	mv	s1,a5       # s1 <- fib(n - 1)
	lw	a5,8(sp)
	addi	a5,a5,-2    # a5 <- n - 2
	mv	a0,a5
	call	fib
	mv	a5,a0       # a5 <- fib(n - 2)
	add	a5,s1,a5    # a5 <- fib(n - 1) + fib(n - 2)
.L3:                        # case of n <= 1 (return from fib)
	mv	a0,a5
	lw	ra,20(sp)   # restore registers
	lw	fp,16(sp)
	lw	s1,12(sp)
	addi	sp,sp,24
	jr	ra
	.size	fib, .-fib
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-8
	sw	ra,4(sp)
	sw	fp,0(sp)
	addi	fp,sp,8        # fp: old stack pointer
#	main program starts
	li	a0,10
	call	fib
#	main program ends
	mv	a5,a0
	mv	a0,a5
	lw	ra,4(sp)
	lw	s0,0(sp)
	addi	sp,sp,8
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
