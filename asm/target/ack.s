main:
	addi	sp,sp,-8
	sw	ra,4(sp)
	sw	fp,0(sp)
	addi	fp,sp,8
# main program starts
	li	a1,10
	li	a0,3
	call	ack
# main program ends
	lw	ra,4(sp)
	lw	fp,0(sp)
	addi	sp,sp,8
	j	end
ack:
	addi	sp,sp,-24
	sw	ra,20(sp)
	sw	fp,16(sp)
	sw	s1,12(sp)
	addi	fp,sp,24
	sw	a0,8(sp)        # 8(sp) <- x
	sw	a1,4(sp)        # 4(sp) <- y
	bgt	a0,zero,.L2
	lw	a5,4(sp)
	addi	a0,a5,1         # a0 <- y + 1
	j	.L3
.L2:                            # x > 0
	lw	a5,4(sp)        # a5 <- y
	bgt	a5,zero,.L4
	lw	a5,8(sp)
	addi	a5,a5,-1        # a5 <- x - 1
	li	a1,1            # a1 <- 1
	mv	a0,a5           # a0 <- x - 1
	call	ack
	j	.L3
.L4:                            # x > 0 && y > 0
	lw	a5,8(sp)
	addi	a5,a5,-1
	mv	s1,a5           # s1 <- x - 1
	lw	a1,4(sp)
	addi	a1,a1,-1        # a1 <- y - 1
	lw	a0,8(sp)        # a0 <- x
	call	ack
	mv	a1,a0           # a1 <- ack (x, y - 1)
	mv	a0,s1           # a0 <- x - 1
	call	ack
.L3:
	lw	ra,20(sp)
	lw	fp,16(sp)
	lw	s1,12(sp)
	addi	sp,sp,24
	jr	ra
end:
	j	end
