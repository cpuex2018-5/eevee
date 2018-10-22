	.file	"gcd.c"
	.option nopic
	.text
	.align	1
	.globl	gcd
	.type	gcd, @function
gcd:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	bnez	a5,.L2
	lw	a5,-24(s0)
	j	.L3
.L2:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bgt	a4,a5,.L4
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	subw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	gcd
	mv	a5,a0
	j	.L3
.L4:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	subw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	gcd
	mv	a5,a0
.L3:
	mv	a0,a5
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	gcd, .-gcd
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	li	a1,35
	li	a0,10
	call	gcd
	mv	a5,a0
	mv	a0,a5
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
