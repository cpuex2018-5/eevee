	.file	"ack.c"
	.option nopic
	.text
	.align	1
	.globl	ack
	.type	ack, @function
ack:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	addi	s0,sp,48
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	bgtz	a5,.L2
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	j	.L3
.L2:
	lw	a5,-40(s0)
	sext.w	a5,a5
	bgtz	a5,.L4
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	li	a1,1
	mv	a0,a5
	call	ack
	mv	a5,a0
	j	.L3
.L4:
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sext.w	s1,a5
	lw	a5,-40(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	ack
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	ack
	mv	a5,a0
.L3:
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
	.size	ack, .-ack
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	li	a1,1
	li	a0,1
	call	ack
	mv	a5,a0
	mv	a0,a5
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
