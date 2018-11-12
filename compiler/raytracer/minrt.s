	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	addi	sp, sp, -8
	sw	fp, 0(sp)
	addi	fp, sp, 8
#	main program starts
	li	a0, 1
	li	a1, 0
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	min_caml_create_array
	fli	fa0, l.7005
	lw	a1, 4(sp)
	sw	a0, 8(sp)
	fsw	fa0, 16(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 60
	mv	a2, gp
	addi	gp, gp, 48
	sw	a0, 40(a2)
	sw	a0, 36(a2)
	sw	a0, 32(a2)
	sw	a0, 28(a2)
	lw	a3, 4(sp)
	sw	a3, 24(a2)
	sw	a0, 20(a2)
	sw	a0, 16(a2)
	sw	a3, 12(a2)
	sw	a3, 8(a2)
	sw	a3, 4(a2)
	sw	a3, 0(a2)
	mv	a0, a2
	sw	a1, 24(sp)
	mv	t5, a1
	mv	a1, a0
	mv	a0, t5
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 16(sp)
	sw	a0, 28(sp)
	sw	a1, 32(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a0, 32(sp)
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 36(sp)
	mv	a0, a1
	call	min_caml_create_array
	fli	fa0, l.7412
	lw	a1, 0(sp)
	sw	a0, 40(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 50
	li	a2, -1
	lw	a3, 0(sp)
	sw	a0, 44(sp)
	sw	a1, 48(sp)
	mv	a1, a2
	mv	a0, a3
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 48(sp)
	call	min_caml_create_array
	li	a1, 0
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a2, 0(sp)
	sw	a0, 52(sp)
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 0(sp)
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 0(sp)
	sw	a0, 56(sp)
	mv	a0, a1
	call	min_caml_create_array
	lw	a1, 0(sp)
	lw	a2, 4(sp)
	sw	a0, 60(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	fli	fa0, l.7358
	lw	a1, 0(sp)
	sw	a0, 64(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 68(sp)
	mv	a0, a1
	call	min_caml_create_array
	lw	a1, 0(sp)
	lw	a2, 4(sp)
	sw	a0, 72(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 76(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 80(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 84(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 88(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 2
	lw	a2, 4(sp)
	sw	a0, 92(sp)
	sw	a1, 96(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	lw	a1, 96(sp)
	lw	a2, 4(sp)
	sw	a0, 100(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 0(sp)
	sw	a0, 104(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 108(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 112(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 116(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 120(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 124(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 128(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 4(sp)
	sw	a0, 132(sp)
	mv	a0, a1
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 4(sp)
	sw	a1, 136(sp)
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 136(sp)
	sw	a0, 0(a1)
	lw	a0, 4(sp)
	call	min_caml_create_array
	mv	a1, a0
	li	a0, 5
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 4(sp)
	sw	a0, 140(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 144(sp)
	mv	a0, a1
	call	min_caml_create_array
	lw	a1, 24(sp)
	lw	a2, 144(sp)
	sw	a0, 148(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 148(sp)
	sw	a0, 0(a1)
	mv	a0, a1
	flw	fa0, 16(sp)
	lw	a1, 4(sp)
	sw	a0, 152(sp)
	mv	a0, a1
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 4(sp)
	sw	a1, 156(sp)
	call	min_caml_create_array
	li	a1, 180
	mv	a2, gp
	addi	gp, gp, 24
	flw	fa0, 16(sp)
	fsw	fa0, 16(a2)
	sw	a0, 8(a2)
	lw	a0, 156(sp)
	sw	a0, 4(a2)
	lw	a0, 4(sp)
	sw	a0, 0(a2)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	lw	a1, 0(sp)
	lw	a2, 4(sp)
	sw	a0, 160(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 80
	la	a2, trace_ray.2903
	sw	a2, 0(a1)
	lw	a2, 68(sp)
	sw	a2, 76(a1)
	lw	a2, 84(sp)
	sw	a2, 72(a1)
	lw	a3, 116(sp)
	sw	a3, 68(a1)
	lw	a3, 112(sp)
	sw	a3, 64(a1)
	lw	a4, 60(sp)
	sw	a4, 60(a1)
	lw	a4, 92(sp)
	sw	a4, 56(a1)
	lw	a5, 160(sp)
	sw	a5, 52(a1)
	lw	a6, 56(sp)
	sw	a6, 48(a1)
	lw	a7, 28(sp)
	sw	a7, 44(a1)
	lw	s1, 80(sp)
	sw	s1, 40(a1)
	sw	a0, 36(a1)
	lw	s2, 8(sp)
	sw	s2, 32(a1)
	lw	s3, 152(sp)
	sw	s3, 28(a1)
	lw	s4, 40(sp)
	sw	s4, 24(a1)
	lw	s5, 64(sp)
	sw	s5, 20(a1)
	lw	s5, 72(sp)
	sw	s5, 16(a1)
	lw	s6, 76(sp)
	sw	s6, 12(a1)
	lw	s7, 44(sp)
	sw	s7, 8(a1)
	lw	s7, 52(sp)
	sw	s7, 4(a1)
	mv	s7, gp
	addi	gp, gp, 40
	la	s8, trace_diffuse_ray.2909
	sw	s8, 0(s7)
	sw	a2, 32(s7)
	sw	a6, 28(s7)
	sw	a7, 24(s7)
	sw	s1, 20(s7)
	sw	s4, 16(s7)
	sw	s5, 12(s7)
	sw	s6, 8(s7)
	lw	a2, 88(sp)
	sw	a2, 4(s7)
	mv	a6, gp
	addi	gp, gp, 8
	la	s1, iter_trace_diffuse_rays.2912
	sw	s1, 0(a6)
	sw	s7, 4(a6)
	mv	s1, gp
	addi	gp, gp, 8
	la	s5, trace_diffuse_rays.2917
	sw	s5, 0(s1)
	sw	a6, 4(s1)
	mv	a6, gp
	addi	gp, gp, 16
	la	s5, trace_diffuse_ray_80percent.2921
	sw	s5, 0(a6)
	sw	s1, 8(a6)
	lw	s5, 140(sp)
	sw	s5, 4(a6)
	mv	s6, gp
	addi	gp, gp, 16
	la	s7, calc_diffuse_using_1point.2925
	sw	s7, 0(s6)
	sw	a6, 12(s6)
	sw	a4, 8(s6)
	sw	a2, 4(s6)
	mv	a6, gp
	addi	gp, gp, 16
	la	s7, calc_diffuse_using_5points.2928
	sw	s7, 0(a6)
	sw	a4, 8(a6)
	sw	a2, 4(a6)
	mv	s7, gp
	addi	gp, gp, 8
	la	s8, do_without_neighbors.2934
	sw	s8, 0(s7)
	sw	s6, 4(s7)
	mv	s6, gp
	addi	gp, gp, 8
	la	s8, neighbors_exist.2937
	sw	s8, 0(s6)
	lw	s8, 100(sp)
	sw	s8, 4(s6)
	mv	s9, gp
	addi	gp, gp, 16
	la	s10, try_exploit_neighbors.2950
	sw	s10, 0(s9)
	sw	s7, 8(s9)
	sw	a6, 4(s9)
	mv	a6, gp
	addi	gp, gp, 8
	la	s10, write_ppm_header.2957
	sw	s10, 0(a6)
	sw	s8, 4(a6)
	mv	s10, gp
	addi	gp, gp, 8
	la	s11, write_rgb.2961
	sw	s11, 0(s10)
	sw	a4, 4(s10)
	mv	s11, gp
	addi	gp, gp, 16
	la	t0, pretrace_diffuse_rays.2963
	sw	t0, 0(s11)
	sw	s1, 12(s11)
	sw	s5, 8(s11)
	sw	a2, 4(s11)
	mv	a2, gp
	addi	gp, gp, 40
	la	s1, pretrace_pixels.2966
	sw	s1, 0(a2)
	lw	s1, 36(sp)
	sw	s1, 36(a2)
	sw	a1, 32(a2)
	sw	a3, 28(a2)
	lw	a1, 120(sp)
	sw	a1, 24(a2)
	lw	a1, 108(sp)
	sw	a1, 20(a2)
	sw	a4, 16(a2)
	lw	a3, 132(sp)
	sw	a3, 12(a2)
	sw	s11, 8(a2)
	lw	a3, 104(sp)
	sw	a3, 4(a2)
	mv	s1, gp
	addi	gp, gp, 32
	la	s11, pretrace_line.2973
	sw	s11, 0(s1)
	lw	s11, 128(sp)
	sw	s11, 24(s1)
	lw	s11, 124(sp)
	sw	s11, 20(s1)
	sw	a1, 16(s1)
	sw	a2, 12(s1)
	sw	s8, 8(s1)
	sw	a3, 4(s1)
	mv	a2, gp
	addi	gp, gp, 32
	la	s11, scan_pixel.2977
	sw	s11, 0(a2)
	sw	s10, 24(a2)
	sw	s9, 20(a2)
	sw	a4, 16(a2)
	sw	s6, 12(a2)
	sw	s8, 8(a2)
	sw	s7, 4(a2)
	mv	a4, gp
	addi	gp, gp, 16
	la	s6, scan_line.2983
	sw	s6, 0(a4)
	sw	a2, 12(a4)
	sw	s1, 8(a4)
	sw	s8, 4(a4)
	mv	a2, gp
	addi	gp, gp, 8
	la	s6, create_pixelline.2996
	sw	s6, 0(a2)
	sw	s8, 4(a2)
	mv	s6, gp
	addi	gp, gp, 8
	la	s7, calc_dirvec.3003
	sw	s7, 0(s6)
	sw	s5, 4(s6)
	mv	s7, gp
	addi	gp, gp, 8
	la	s9, calc_dirvecs.3011
	sw	s9, 0(s7)
	sw	s6, 4(s7)
	mv	s6, gp
	addi	gp, gp, 8
	la	s9, calc_dirvec_rows.3016
	sw	s9, 0(s6)
	sw	s7, 4(s6)
	mv	s7, gp
	addi	gp, gp, 8
	la	s9, create_dirvec.3020
	sw	s9, 0(s7)
	sw	s2, 4(s7)
	mv	s9, gp
	addi	gp, gp, 8
	la	s10, create_dirvec_elements.3022
	sw	s10, 0(s9)
	sw	s7, 4(s9)
	mv	s10, gp
	addi	gp, gp, 16
	la	s11, create_dirvecs.3025
	sw	s11, 0(s10)
	sw	s5, 12(s10)
	sw	s9, 8(s10)
	sw	s7, 4(s10)
	mv	s9, gp
	addi	gp, gp, 8
	la	s11, init_vecset_constants.3030
	sw	s11, 0(s9)
	sw	s5, 4(s9)
	mv	s5, gp
	addi	gp, gp, 16
	la	s11, init_dirvecs.3032
	sw	s11, 0(s5)
	sw	s9, 12(s5)
	sw	s10, 8(s5)
	sw	s6, 4(s5)
	mv	s6, gp
	addi	gp, gp, 16
	la	s9, add_reflection.3034
	sw	s9, 0(s6)
	sw	a5, 8(s6)
	sw	s7, 4(s6)
	mv	a5, gp
	addi	gp, gp, 16
	la	s7, setup_rect_reflection.3041
	sw	s7, 0(a5)
	sw	a0, 12(a5)
	sw	s4, 8(a5)
	sw	s6, 4(a5)
	mv	s7, gp
	addi	gp, gp, 16
	la	s9, setup_surface_reflection.3044
	sw	s9, 0(s7)
	sw	a0, 12(s7)
	sw	s4, 8(s7)
	sw	s6, 4(s7)
	mv	a0, gp
	addi	gp, gp, 16
	la	s6, setup_reflections.3047
	sw	s6, 0(a0)
	sw	s7, 12(a0)
	sw	a5, 8(a0)
	sw	a7, 4(a0)
	mv	t6, gp
	addi	gp, gp, 56
	la	a5, rt.3049
	sw	a5, 0(t6)
	sw	a6, 48(t6)
	sw	a0, 44(t6)
	sw	a1, 40(t6)
	sw	a4, 36(t6)
	sw	s1, 32(t6)
	sw	s2, 28(t6)
	sw	s3, 24(t6)
	sw	s4, 20(t6)
	sw	s5, 16(t6)
	sw	s8, 12(t6)
	sw	a3, 8(t6)
	sw	a2, 4(t6)
	li	a0, 512
	mv	a1, a0
	lw	ra, 0(t6)
	jr	ra
#	main program ends
	lw	ra, 4(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 8
	j	end
fispos.2402:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fli	fa1, l.7005
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else.11023
	li	a0, 0
	b	fispos.2402_ret
bne_else.11023:
	li	a0, 1
	b	fispos.2402_ret
fispos.2402_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
fisneg.2404:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fli	fa1, l.7005
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.11024
	li	a0, 0
	b	fisneg.2404_ret
bne_else.11024:
	li	a0, 1
	b	fisneg.2404_ret
fisneg.2404_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
fiszero.2406:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fli	fa1, l.7005
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else.11025
	li	a0, 1
	b	fiszero.2406_ret
bne_else.11025:
	li	a0, 0
	b	fiszero.2406_ret
fiszero.2406_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
fneg.2408:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fli	fa1, l.7006
	fmul.s	fa0, fa1, fa0
	b	fneg.2408_ret
fneg.2408_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
fsqr.2410:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fmul.s	fa0, fa0, fa0
	b	fsqr.2410_ret
fsqr.2410_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
fless.2412:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.11026
	li	a0, 0
	b	fless.2412_ret
bne_else.11026:
	li	a0, 1
	b	fless.2412_ret
fless.2412_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
fabs.2415:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fabs.s	fa0, fa0
	b	fabs.2415_ret
fabs.2415_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
fhalf.2417:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fli	fa1, l.7007
	fdiv.s	fa0, fa0, fa1
	b	fhalf.2417_ret
fhalf.2417_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
xor.2419:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a2, 0
	bne	a0, a2, beq_else.11027
	mv	a0, a1
	b	xor.2419_ret
beq_else.11027:
	li	a0, 0
	bne	a1, a0, beq_else.11028
	li	a0, 1
	b	xor.2419_ret
beq_else.11028:
	li	a0, 0
	b	xor.2419_ret
xor.2419_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
sgn.2422:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	fsw	fa0, 0(sp)
	call	fiszero.2406
	li	a1, 0
	bne	a0, a1, beq_else.11029
	flw	fa0, 0(sp)
	call	fispos.2402
	li	a1, 0
	bne	a0, a1, beq_else.11030
	fli	fa0, l.7006
	b	sgn.2422_ret
beq_else.11030:
	fli	fa0, l.7008
	b	sgn.2422_ret
beq_else.11029:
	fli	fa0, l.7005
	b	sgn.2422_ret
sgn.2422_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
fneg_cond.2424:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a1, 0
	bne	a0, a1, beq_else.11031
	call	fneg.2408
	b	fneg_cond.2424_ret
beq_else.11031:
	b	fneg_cond.2424_ret
fneg_cond.2424_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
add_mod5.2427:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	add	a0, a0, a1
	li	a1, 5
	bgt	a1, a0, ble_else.11032
	addi	a0, a0, -5
	b	add_mod5.2427_ret
ble_else.11032:
	b	add_mod5.2427_ret
add_mod5.2427_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecset.2430:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a1, 0
	add	t6, a0, a1
	fsw	fa0, 0(t6)
	li	a1, 4
	add	t6, a0, a1
	fsw	fa1, 0(t6)
	li	a1, 8
	add	t6, a0, a1
	fsw	fa2, 0(t6)
	b	vecset.2430_ret
vecset.2430_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecfill.2435:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a1, 0
	add	t6, a0, a1
	fsw	fa0, 0(t6)
	li	a1, 4
	add	t6, a0, a1
	fsw	fa0, 0(t6)
	li	a1, 8
	add	t6, a0, a1
	fsw	fa0, 0(t6)
	b	vecfill.2435_ret
vecfill.2435_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecbzero.2438:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fli	fa0, l.7005
	call	vecfill.2435
	b	vecbzero.2438_ret
vecbzero.2438_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
veccpy.2440:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a2, 0
	add	t6, a1, a2
	flw	fa0, 0(t6)
	li	a2, 0
	add	t6, a0, a2
	fsw	fa0, 0(t6)
	li	a2, 4
	add	t6, a1, a2
	flw	fa0, 0(t6)
	li	a2, 4
	add	t6, a0, a2
	fsw	fa0, 0(t6)
	li	a2, 8
	add	t6, a1, a2
	flw	fa0, 0(t6)
	li	a1, 8
	add	t6, a0, a1
	fsw	fa0, 0(t6)
	b	veccpy.2440_ret
veccpy.2440_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecunit_sgn.2443:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	li	a2, 0
	add	t6, a0, a2
	flw	fa0, 0(t6)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	call	fsqr.2410
	li	a0, 4
	lw	a1, 4(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fsw	fa0, 8(sp)
	fmv.s	fa0, fa1
	call	fsqr.2410
	flw	fa1, 8(sp)
	fadd.s	fa0, fa1, fa0
	li	a0, 8
	lw	a1, 4(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fsw	fa0, 16(sp)
	fmv.s	fa0, fa1
	call	fsqr.2410
	flw	fa1, 16(sp)
	fadd.s	fa0, fa1, fa0
	fsqrt.s	fa0, fa0
	fsw	fa0, 24(sp)
	call	fiszero.2406
	li	a1, 0
	bne	a0, a1, beq_else.11036
	li	a0, 0
	lw	a1, 0(sp)
	bne	a1, a0, beq_else.11038
	fli	fa0, l.7008
	flw	fa1, 24(sp)
	fdiv.s	fa0, fa0, fa1
	b	beq_cont.11039
beq_else.11038:
	fli	fa0, l.7006
	flw	fa1, 24(sp)
	fdiv.s	fa0, fa0, fa1
beq_cont.11039:
	b	beq_cont.11037
beq_else.11036:
	fli	fa0, l.7008
beq_cont.11037:
	li	a0, 0
	lw	a1, 4(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa1, fa1, fa0
	li	a0, 0
	add	t6, a1, a0
	fsw	fa1, 0(t6)
	li	a0, 4
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa1, fa1, fa0
	li	a0, 4
	add	t6, a1, a0
	fsw	fa1, 0(t6)
	li	a0, 8
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa0, fa1, fa0
	li	a0, 8
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	vecunit_sgn.2443_ret
vecunit_sgn.2443_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
veciprod.2446:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a2, 0
	add	t6, a0, a2
	flw	fa0, 0(t6)
	li	a2, 0
	add	t6, a1, a2
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	li	a2, 4
	add	t6, a0, a2
	flw	fa1, 0(t6)
	li	a2, 4
	add	t6, a1, a2
	flw	fa2, 0(t6)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	li	a2, 8
	add	t6, a0, a2
	flw	fa1, 0(t6)
	li	a0, 8
	add	t6, a1, a0
	flw	fa2, 0(t6)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	b	veciprod.2446_ret
veciprod.2446_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
veciprod2.2449:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a1, 0
	add	t6, a0, a1
	flw	fa3, 0(t6)
	fmul.s	fa0, fa3, fa0
	li	a1, 4
	add	t6, a0, a1
	flw	fa3, 0(t6)
	fmul.s	fa1, fa3, fa1
	fadd.s	fa0, fa0, fa1
	li	a1, 8
	add	t6, a0, a1
	flw	fa1, 0(t6)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	b	veciprod2.2449_ret
veciprod2.2449_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecaccum.2454:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a2, 0
	add	t6, a0, a2
	flw	fa1, 0(t6)
	li	a2, 0
	add	t6, a1, a2
	flw	fa2, 0(t6)
	fmul.s	fa2, fa0, fa2
	fadd.s	fa1, fa1, fa2
	li	a2, 0
	add	t6, a0, a2
	fsw	fa1, 0(t6)
	li	a2, 4
	add	t6, a0, a2
	flw	fa1, 0(t6)
	li	a2, 4
	add	t6, a1, a2
	flw	fa2, 0(t6)
	fmul.s	fa2, fa0, fa2
	fadd.s	fa1, fa1, fa2
	li	a2, 4
	add	t6, a0, a2
	fsw	fa1, 0(t6)
	li	a2, 8
	add	t6, a0, a2
	flw	fa1, 0(t6)
	li	a2, 8
	add	t6, a1, a2
	flw	fa2, 0(t6)
	fmul.s	fa0, fa0, fa2
	fadd.s	fa0, fa1, fa0
	li	a1, 8
	add	t6, a0, a1
	fsw	fa0, 0(t6)
	b	vecaccum.2454_ret
vecaccum.2454_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecadd.2458:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a2, 0
	add	t6, a0, a2
	flw	fa0, 0(t6)
	li	a2, 0
	add	t6, a1, a2
	flw	fa1, 0(t6)
	fadd.s	fa0, fa0, fa1
	li	a2, 0
	add	t6, a0, a2
	fsw	fa0, 0(t6)
	li	a2, 4
	add	t6, a0, a2
	flw	fa0, 0(t6)
	li	a2, 4
	add	t6, a1, a2
	flw	fa1, 0(t6)
	fadd.s	fa0, fa0, fa1
	li	a2, 4
	add	t6, a0, a2
	fsw	fa0, 0(t6)
	li	a2, 8
	add	t6, a0, a2
	flw	fa0, 0(t6)
	li	a2, 8
	add	t6, a1, a2
	flw	fa1, 0(t6)
	fadd.s	fa0, fa0, fa1
	li	a1, 8
	add	t6, a0, a1
	fsw	fa0, 0(t6)
	b	vecadd.2458_ret
vecadd.2458_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecscale.2461:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a1, 0
	add	t6, a0, a1
	flw	fa1, 0(t6)
	fmul.s	fa1, fa1, fa0
	li	a1, 0
	add	t6, a0, a1
	fsw	fa1, 0(t6)
	li	a1, 4
	add	t6, a0, a1
	flw	fa1, 0(t6)
	fmul.s	fa1, fa1, fa0
	li	a1, 4
	add	t6, a0, a1
	fsw	fa1, 0(t6)
	li	a1, 8
	add	t6, a0, a1
	flw	fa1, 0(t6)
	fmul.s	fa0, fa1, fa0
	li	a1, 8
	add	t6, a0, a1
	fsw	fa0, 0(t6)
	b	vecscale.2461_ret
vecscale.2461_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecaccumv.2464:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a3, 0
	add	t6, a0, a3
	flw	fa0, 0(t6)
	li	a3, 0
	add	t6, a1, a3
	flw	fa1, 0(t6)
	li	a3, 0
	add	t6, a2, a3
	flw	fa2, 0(t6)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	li	a3, 0
	add	t6, a0, a3
	fsw	fa0, 0(t6)
	li	a3, 4
	add	t6, a0, a3
	flw	fa0, 0(t6)
	li	a3, 4
	add	t6, a1, a3
	flw	fa1, 0(t6)
	li	a3, 4
	add	t6, a2, a3
	flw	fa2, 0(t6)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	li	a3, 4
	add	t6, a0, a3
	fsw	fa0, 0(t6)
	li	a3, 8
	add	t6, a0, a3
	flw	fa0, 0(t6)
	li	a3, 8
	add	t6, a1, a3
	flw	fa1, 0(t6)
	li	a1, 8
	add	t6, a2, a1
	flw	fa2, 0(t6)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	li	a1, 8
	add	t6, a0, a1
	fsw	fa0, 0(t6)
	b	vecaccumv.2464_ret
vecaccumv.2464_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_texturetype.2468:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	b	o_texturetype.2468_ret
o_texturetype.2468_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_form.2470:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	mv	a0, a1
	b	o_form.2470_ret
o_form.2470_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_reflectiontype.2472:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	mv	a0, a2
	b	o_reflectiontype.2472_ret
o_reflectiontype.2472_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_isinvert.2474:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	mv	a0, a6
	b	o_isinvert.2474_ret
o_isinvert.2474_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_isrot.2476:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	mv	a0, a3
	b	o_isrot.2476_ret
o_isrot.2476_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_a.2478:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a0, 0
	add	t6, a4, a0
	flw	fa0, 0(t6)
	b	o_param_a.2478_ret
o_param_a.2478_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_b.2480:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a0, 4
	add	t6, a4, a0
	flw	fa0, 0(t6)
	b	o_param_b.2480_ret
o_param_b.2480_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_c.2482:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a0, 8
	add	t6, a4, a0
	flw	fa0, 0(t6)
	b	o_param_c.2482_ret
o_param_c.2482_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_abc.2484:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	mv	a0, a4
	b	o_param_abc.2484_ret
o_param_abc.2484_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_x.2486:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a0, 0
	add	t6, a5, a0
	flw	fa0, 0(t6)
	b	o_param_x.2486_ret
o_param_x.2486_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_y.2488:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a0, 4
	add	t6, a5, a0
	flw	fa0, 0(t6)
	b	o_param_y.2488_ret
o_param_y.2488_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_z.2490:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a0, 8
	add	t6, a5, a0
	flw	fa0, 0(t6)
	b	o_param_z.2490_ret
o_param_z.2490_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_diffuse.2492:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a0, 0
	add	t6, a7, a0
	flw	fa0, 0(t6)
	b	o_diffuse.2492_ret
o_diffuse.2492_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_hilight.2494:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a0, 4
	add	t6, a7, a0
	flw	fa0, 0(t6)
	b	o_hilight.2494_ret
o_hilight.2494_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_color_red.2496:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a0, 0
	add	t6, s1, a0
	flw	fa0, 0(t6)
	b	o_color_red.2496_ret
o_color_red.2496_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_color_green.2498:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a0, 4
	add	t6, s1, a0
	flw	fa0, 0(t6)
	b	o_color_green.2498_ret
o_color_green.2498_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_color_blue.2500:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a0, 8
	add	t6, s1, a0
	flw	fa0, 0(t6)
	b	o_color_blue.2500_ret
o_color_blue.2500_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_r1.2502:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a0, 0
	add	t6, s2, a0
	flw	fa0, 0(t6)
	b	o_param_r1.2502_ret
o_param_r1.2502_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_r2.2504:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a0, 4
	add	t6, s2, a0
	flw	fa0, 0(t6)
	b	o_param_r2.2504_ret
o_param_r2.2504_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_r3.2506:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a0, 8
	add	t6, s2, a0
	flw	fa0, 0(t6)
	b	o_param_r3.2506_ret
o_param_r3.2506_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_ctbl.2508:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	mv	a0, s3
	b	o_param_ctbl.2508_ret
o_param_ctbl.2508_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_rgb.2510:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	b	p_rgb.2510_ret
p_rgb.2510_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_intersection_points.2512:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	mv	a0, a1
	b	p_intersection_points.2512_ret
p_intersection_points.2512_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_surface_ids.2514:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	mv	a0, a2
	b	p_surface_ids.2514_ret
p_surface_ids.2514_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_calc_diffuse.2516:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	mv	a0, a3
	b	p_calc_diffuse.2516_ret
p_calc_diffuse.2516_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_energy.2518:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	mv	a0, a4
	b	p_energy.2518_ret
p_energy.2518_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_received_ray_20percent.2520:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	mv	a0, a5
	b	p_received_ray_20percent.2520_ret
p_received_ray_20percent.2520_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_group_id.2522:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a0, 0
	add	t6, a6, a0
	lw	a0, 0(t6)
	b	p_group_id.2522_ret
p_group_id.2522_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_set_group_id.2524:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a0, 0
	add	t6, a6, a0
	sw	s1, 0(t6)
	b	p_set_group_id.2524_ret
p_set_group_id.2524_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_nvectors.2527:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	mv	a0, a7
	b	p_nvectors.2527_ret
p_nvectors.2527_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
d_vec.2529:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	b	d_vec.2529_ret
d_vec.2529_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
d_const.2531:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	mv	a0, a1
	b	d_const.2531_ret
d_const.2531_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
r_surface_id.2533:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	b	r_surface_id.2533_ret
r_surface_id.2533_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
r_dvec.2535:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	mv	a0, gp
	addi	gp, gp, 8
	sw	a2, 4(a0)
	sw	a1, 0(a0)
	b	r_dvec.2535_ret
r_dvec.2535_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
r_bright.2537:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	b	r_bright.2537_ret
r_bright.2537_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
rad.2539:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fli	fa1, l.7094
	fmul.s	fa0, fa0, fa1
	b	rad.2539_ret
rad.2539_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
read_screen_settings.2541:
	addi	sp, sp, -84
	sw	ra, 80(sp)
	sw	fp, 76(sp)
	addi	fp, sp, 84
	sw	a4, 0(sp)
	sw	a2, 4(sp)
	sw	a1, 8(sp)
	sw	a3, 12(sp)
	sw	a0, 16(sp)
	call	min_caml_read_float
	li	a0, 0
	lw	a1, 16(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	li	a0, 4
	lw	a1, 16(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	li	a0, 8
	lw	a1, 16(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	call	rad.2539
	fsw	fa0, 24(sp)
	call	min_caml_cos
	flw	fa1, 24(sp)
	fsw	fa0, 32(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	fsw	fa0, 40(sp)
	call	min_caml_read_float
	call	rad.2539
	fsw	fa0, 48(sp)
	call	min_caml_cos
	flw	fa1, 48(sp)
	fsw	fa0, 56(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	flw	fa1, 32(sp)
	fmul.s	fa2, fa1, fa0
	fli	fa3, l.7098
	fmul.s	fa2, fa2, fa3
	li	a0, 0
	lw	a1, 12(sp)
	add	t6, a1, a0
	fsw	fa2, 0(t6)
	fli	fa2, l.7100
	flw	fa3, 40(sp)
	fmul.s	fa2, fa3, fa2
	li	a0, 4
	add	t6, a1, a0
	fsw	fa2, 0(t6)
	flw	fa2, 56(sp)
	fmul.s	fa4, fa1, fa2
	fli	fa5, l.7098
	fmul.s	fa4, fa4, fa5
	li	a0, 8
	add	t6, a1, a0
	fsw	fa4, 0(t6)
	li	a0, 0
	lw	a2, 8(sp)
	add	t6, a2, a0
	fsw	fa2, 0(t6)
	fli	fa4, l.7005
	li	a0, 4
	add	t6, a2, a0
	fsw	fa4, 0(t6)
	fsw	fa0, 64(sp)
	call	fneg.2408
	li	a0, 8
	lw	a1, 8(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	flw	fa0, 40(sp)
	call	fneg.2408
	flw	fa1, 64(sp)
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 4(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	flw	fa0, 32(sp)
	call	fneg.2408
	li	a0, 4
	lw	a1, 4(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	flw	fa0, 40(sp)
	call	fneg.2408
	flw	fa1, 56(sp)
	fmul.s	fa0, fa0, fa1
	li	a0, 8
	lw	a1, 4(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 0
	lw	a1, 16(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	li	a0, 0
	lw	a2, 12(sp)
	add	t6, a2, a0
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	li	a0, 0
	lw	a3, 0(sp)
	add	t6, a3, a0
	fsw	fa0, 0(t6)
	li	a0, 4
	add	t6, a1, a0
	flw	fa0, 0(t6)
	li	a0, 4
	add	t6, a2, a0
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	li	a0, 4
	add	t6, a3, a0
	fsw	fa0, 0(t6)
	li	a0, 8
	add	t6, a1, a0
	flw	fa0, 0(t6)
	li	a0, 8
	add	t6, a2, a0
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	li	a0, 8
	add	t6, a3, a0
	fsw	fa0, 0(t6)
	b	read_screen_settings.2541_ret
read_screen_settings.2541_ret:
	lw	ra, 80(sp)
	lw	fp, 76(sp)
	addi	sp, sp, 84
	jr	ra
read_light.2548:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	min_caml_read_int
	call	min_caml_read_float
	call	rad.2539
	fsw	fa0, 8(sp)
	call	min_caml_sin
	call	fneg.2408
	li	a0, 4
	lw	a1, 4(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	call	rad.2539
	flw	fa1, 8(sp)
	fsw	fa0, 16(sp)
	fmv.s	fa0, fa1
	call	min_caml_cos
	flw	fa1, 16(sp)
	fsw	fa0, 24(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	flw	fa1, 24(sp)
	fmul.s	fa0, fa1, fa0
	li	a0, 0
	lw	a1, 4(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	flw	fa0, 16(sp)
	call	min_caml_cos
	flw	fa1, 24(sp)
	fmul.s	fa0, fa1, fa0
	li	a0, 8
	lw	a1, 4(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	read_light.2548_ret
read_light.2548_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
rotate_quadratic_matrix.2552:
	addi	sp, sp, -204
	sw	ra, 200(sp)
	sw	fp, 196(sp)
	addi	fp, sp, 204
	li	a2, 0
	add	t6, a1, a2
	flw	fa0, 0(t6)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	min_caml_cos
	li	a0, 0
	lw	a1, 4(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fsw	fa0, 8(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	li	a0, 4
	lw	a1, 4(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fsw	fa0, 16(sp)
	fmv.s	fa0, fa1
	call	min_caml_cos
	li	a0, 4
	lw	a1, 4(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fsw	fa0, 24(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	li	a0, 8
	lw	a1, 4(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fsw	fa0, 32(sp)
	fmv.s	fa0, fa1
	call	min_caml_cos
	li	a0, 8
	lw	a1, 4(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fsw	fa0, 40(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	flw	fa1, 40(sp)
	flw	fa2, 24(sp)
	fmul.s	fa3, fa2, fa1
	flw	fa4, 32(sp)
	flw	fa5, 16(sp)
	fmul.s	fa6, fa5, fa4
	fmul.s	fa6, fa6, fa1
	flw	fa7, 8(sp)
	fmul.s	fs1, fa7, fa0
	fsub.s	fa6, fa6, fs1
	fmul.s	fs1, fa7, fa4
	fmul.s	fs1, fs1, fa1
	fmul.s	fs2, fa5, fa0
	fadd.s	fs1, fs1, fs2
	fmul.s	fs2, fa2, fa0
	fmul.s	fs3, fa5, fa4
	fmul.s	fs3, fs3, fa0
	fmul.s	fs4, fa7, fa1
	fadd.s	fs3, fs3, fs4
	fmul.s	fs4, fa7, fa4
	fmul.s	fa0, fs4, fa0
	fmul.s	fa1, fa5, fa1
	fsub.s	fa0, fa0, fa1
	fsw	fa0, 48(sp)
	fsw	fs1, 56(sp)
	fsw	fs3, 64(sp)
	fsw	fa6, 72(sp)
	fsw	fs2, 80(sp)
	fsw	fa3, 88(sp)
	fmv.s	fa0, fa4
	call	fneg.2408
	flw	fa1, 24(sp)
	flw	fa2, 16(sp)
	fmul.s	fa2, fa2, fa1
	flw	fa3, 8(sp)
	fmul.s	fa1, fa3, fa1
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	flw	fa3, 0(t6)
	li	a0, 4
	add	t6, a1, a0
	flw	fa4, 0(t6)
	li	a0, 8
	add	t6, a1, a0
	flw	fa5, 0(t6)
	flw	fa6, 88(sp)
	fsw	fa1, 96(sp)
	fsw	fa2, 104(sp)
	fsw	fa5, 112(sp)
	fsw	fa0, 120(sp)
	fsw	fa4, 128(sp)
	fsw	fa3, 136(sp)
	fmv.s	fa0, fa6
	call	fsqr.2410
	flw	fa1, 136(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa2, 80(sp)
	fsw	fa0, 144(sp)
	fmv.s	fa0, fa2
	call	fsqr.2410
	flw	fa1, 128(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa2, 144(sp)
	fadd.s	fa0, fa2, fa0
	flw	fa2, 120(sp)
	fsw	fa0, 152(sp)
	fmv.s	fa0, fa2
	call	fsqr.2410
	flw	fa1, 112(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa2, 152(sp)
	fadd.s	fa0, fa2, fa0
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	flw	fa0, 72(sp)
	call	fsqr.2410
	flw	fa1, 136(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa2, 64(sp)
	fsw	fa0, 160(sp)
	fmv.s	fa0, fa2
	call	fsqr.2410
	flw	fa1, 128(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa2, 160(sp)
	fadd.s	fa0, fa2, fa0
	flw	fa2, 104(sp)
	fsw	fa0, 168(sp)
	fmv.s	fa0, fa2
	call	fsqr.2410
	flw	fa1, 112(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa2, 168(sp)
	fadd.s	fa0, fa2, fa0
	li	a0, 4
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	flw	fa0, 56(sp)
	call	fsqr.2410
	flw	fa1, 136(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa2, 48(sp)
	fsw	fa0, 176(sp)
	fmv.s	fa0, fa2
	call	fsqr.2410
	flw	fa1, 128(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa2, 176(sp)
	fadd.s	fa0, fa2, fa0
	flw	fa2, 96(sp)
	fsw	fa0, 184(sp)
	fmv.s	fa0, fa2
	call	fsqr.2410
	flw	fa1, 112(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa2, 184(sp)
	fadd.s	fa0, fa2, fa0
	li	a0, 8
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	fli	fa0, l.7007
	flw	fa2, 72(sp)
	flw	fa3, 136(sp)
	fmul.s	fa4, fa3, fa2
	flw	fa5, 56(sp)
	fmul.s	fa4, fa4, fa5
	flw	fa6, 64(sp)
	flw	fa7, 128(sp)
	fmul.s	fs1, fa7, fa6
	flw	fs2, 48(sp)
	fmul.s	fs1, fs1, fs2
	fadd.s	fa4, fa4, fs1
	flw	fs1, 104(sp)
	fmul.s	fs3, fa1, fs1
	flw	fs4, 96(sp)
	fmul.s	fs3, fs3, fs4
	fadd.s	fa4, fa4, fs3
	fmul.s	fa0, fa0, fa4
	li	a0, 0
	lw	a1, 4(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	fli	fa0, l.7007
	flw	fa4, 88(sp)
	fmul.s	fs3, fa3, fa4
	fmul.s	fa5, fs3, fa5
	flw	fs3, 80(sp)
	fmul.s	fs5, fa7, fs3
	fmul.s	fs2, fs5, fs2
	fadd.s	fa5, fa5, fs2
	flw	fs2, 120(sp)
	fmul.s	fs5, fa1, fs2
	fmul.s	fs4, fs5, fs4
	fadd.s	fa5, fa5, fs4
	fmul.s	fa0, fa0, fa5
	li	a0, 4
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	fli	fa0, l.7007
	fmul.s	fa3, fa3, fa4
	fmul.s	fa2, fa3, fa2
	fmul.s	fa3, fa7, fs3
	fmul.s	fa3, fa3, fa6
	fadd.s	fa2, fa2, fa3
	fmul.s	fa1, fa1, fs2
	fmul.s	fa1, fa1, fs1
	fadd.s	fa1, fa2, fa1
	fmul.s	fa0, fa0, fa1
	li	a0, 8
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	rotate_quadratic_matrix.2552_ret
rotate_quadratic_matrix.2552_ret:
	lw	ra, 200(sp)
	lw	fp, 196(sp)
	addi	sp, sp, 204
	jr	ra
read_nth_object.2555:
	addi	sp, sp, -116
	sw	ra, 112(sp)
	sw	fp, 108(sp)
	addi	fp, sp, 116
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, beq_else.11050
	li	a0, 0
	b	read_nth_object.2555_ret
beq_else.11050:
	sw	a0, 8(sp)
	call	min_caml_read_int
	sw	a0, 12(sp)
	call	min_caml_read_int
	sw	a0, 16(sp)
	call	min_caml_read_int
	li	a1, 3
	fli	fa0, l.7005
	sw	a0, 20(sp)
	mv	a0, a1
	call	min_caml_create_array
	sw	a0, 24(sp)
	call	min_caml_read_float
	li	a0, 0
	lw	a1, 24(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	li	a0, 4
	lw	a1, 24(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	li	a0, 8
	lw	a1, 24(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 3
	fli	fa0, l.7005
	call	min_caml_create_array
	sw	a0, 28(sp)
	call	min_caml_read_float
	li	a0, 0
	lw	a1, 28(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	li	a0, 4
	lw	a1, 28(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	li	a0, 8
	lw	a1, 28(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	call	fisneg.2404
	li	a1, 2
	fli	fa0, l.7005
	sw	a0, 32(sp)
	mv	a0, a1
	call	min_caml_create_array
	sw	a0, 36(sp)
	call	min_caml_read_float
	li	a0, 0
	lw	a1, 36(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	li	a0, 4
	lw	a1, 36(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 3
	fli	fa0, l.7005
	call	min_caml_create_array
	sw	a0, 40(sp)
	call	min_caml_read_float
	li	a0, 0
	lw	a1, 40(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	li	a0, 4
	lw	a1, 40(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	li	a0, 8
	lw	a1, 40(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 3
	fli	fa0, l.7005
	call	min_caml_create_array
	li	a1, 0
	lw	a2, 20(sp)
	sw	a0, 44(sp)
	bne	a2, a1, beq_else.11051
	b	beq_cont.11052
beq_else.11051:
	call	min_caml_read_float
	call	rad.2539
	li	a0, 0
	lw	a1, 44(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	call	rad.2539
	li	a0, 4
	lw	a1, 44(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	call	rad.2539
	li	a0, 8
	lw	a1, 44(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
beq_cont.11052:
	li	a0, 2
	lw	a1, 12(sp)
	bne	a1, a0, beq_else.11053
	li	a0, 1
	b	beq_cont.11054
beq_else.11053:
	lw	a0, 32(sp)
beq_cont.11054:
	li	a2, 4
	fli	fa0, l.7005
	sw	a0, 48(sp)
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 48
	sw	a0, 40(a1)
	lw	a0, 44(sp)
	sw	a0, 36(a1)
	lw	a2, 40(sp)
	sw	a2, 32(a1)
	lw	a2, 36(sp)
	sw	a2, 28(a1)
	lw	a2, 48(sp)
	sw	a2, 24(a1)
	lw	a2, 28(sp)
	sw	a2, 20(a1)
	lw	a2, 24(sp)
	sw	a2, 16(a1)
	lw	a3, 20(sp)
	sw	a3, 12(a1)
	lw	a4, 16(sp)
	sw	a4, 8(a1)
	lw	a4, 12(sp)
	sw	a4, 4(a1)
	lw	a5, 8(sp)
	sw	a5, 0(a1)
	lw	a5, 4(sp)
	slli	a5, a5, 2
	lw	a6, 0(sp)
	add	t6, a6, a5
	sw	a1, 0(t6)
	li	a1, 3
	bne	a4, a1, beq_else.11055
	li	a1, 0
	add	t6, a2, a1
	flw	fa0, 0(t6)
	fsw	fa0, 56(sp)
	call	fiszero.2406
	li	a1, 0
	bne	a0, a1, beq_else.11058
	flw	fa0, 56(sp)
	call	sgn.2422
	flw	fa1, 56(sp)
	fsw	fa0, 64(sp)
	fmv.s	fa0, fa1
	call	fsqr.2410
	flw	fa1, 64(sp)
	fdiv.s	fa0, fa1, fa0
	b	beq_cont.11059
beq_else.11058:
	fli	fa0, l.7005
beq_cont.11059:
	li	a0, 0
	lw	a1, 24(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 4
	add	t6, a1, a0
	flw	fa0, 0(t6)
	fsw	fa0, 72(sp)
	call	fiszero.2406
	li	a1, 0
	bne	a0, a1, beq_else.11060
	flw	fa0, 72(sp)
	call	sgn.2422
	flw	fa1, 72(sp)
	fsw	fa0, 80(sp)
	fmv.s	fa0, fa1
	call	fsqr.2410
	flw	fa1, 80(sp)
	fdiv.s	fa0, fa1, fa0
	b	beq_cont.11061
beq_else.11060:
	fli	fa0, l.7005
beq_cont.11061:
	li	a0, 4
	lw	a1, 24(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 8
	add	t6, a1, a0
	flw	fa0, 0(t6)
	fsw	fa0, 88(sp)
	call	fiszero.2406
	li	a1, 0
	bne	a0, a1, beq_else.11062
	flw	fa0, 88(sp)
	call	sgn.2422
	flw	fa1, 88(sp)
	fsw	fa0, 96(sp)
	fmv.s	fa0, fa1
	call	fsqr.2410
	flw	fa1, 96(sp)
	fdiv.s	fa0, fa1, fa0
	b	beq_cont.11063
beq_else.11062:
	fli	fa0, l.7005
beq_cont.11063:
	li	a0, 8
	lw	a1, 24(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.11056
beq_else.11055:
	li	a1, 2
	bne	a4, a1, beq_else.11064
	li	a1, 0
	lw	a4, 32(sp)
	bne	a4, a1, beq_else.11066
	li	a1, 1
	b	beq_cont.11067
beq_else.11066:
	li	a1, 0
beq_cont.11067:
	mv	a0, a2
	call	vecunit_sgn.2443
	b	beq_cont.11065
beq_else.11064:
beq_cont.11065:
beq_cont.11056:
	li	a0, 0
	lw	a1, 20(sp)
	bne	a1, a0, beq_else.11068
	b	beq_cont.11069
beq_else.11068:
	lw	a0, 24(sp)
	lw	a1, 44(sp)
	call	rotate_quadratic_matrix.2552
beq_cont.11069:
	li	a0, 1
	b	read_nth_object.2555_ret
read_nth_object.2555_ret:
	lw	ra, 112(sp)
	lw	fp, 108(sp)
	addi	sp, sp, 116
	jr	ra
read_object.2558:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	li	a3, 60
	bgt	a3, a0, ble_else.11070
	b	read_object.2558_ret
ble_else.11070:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	mv	a1, a2
	call	read_nth_object.2555
	li	a1, 0
	bne	a0, a1, beq_else.11072
	li	a0, 0
	lw	a1, 4(sp)
	lw	a2, 8(sp)
	add	t6, a1, a0
	sw	a2, 0(t6)
	b	read_object.2558_ret
beq_else.11072:
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	call	read_object.2558
	b	read_object.2558_ret
read_object.2558_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
read_all_object.2562:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a2, 0
	mv	a4, a1
	mv	a3, a0
	mv	t5, a2
	mv	a2, a1
	mv	a1, a0
	mv	a0, t5
	call	read_object.2558
	b	read_all_object.2562_ret
read_all_object.2562_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
read_net_item.2566:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	sw	a0, 0(sp)
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, beq_else.11074
	lw	a0, 0(sp)
	addi	a0, a0, 1
	li	a1, -1
	call	min_caml_create_array
	b	read_net_item.2566_ret
beq_else.11074:
	lw	a1, 0(sp)
	addi	a2, a1, 1
	sw	a0, 4(sp)
	mv	a0, a2
	call	read_net_item.2566
	lw	a1, 0(sp)
	slli	a1, a1, 2
	lw	a2, 4(sp)
	add	t6, a0, a1
	sw	a2, 0(t6)
	b	read_net_item.2566_ret
read_net_item.2566_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
read_or_network.2568:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	li	a1, 0
	sw	a0, 0(sp)
	mv	a0, a1
	call	read_net_item.2566
	mv	a1, a0
	li	a0, 0
	add	t6, a1, a0
	lw	a0, 0(t6)
	li	a2, -1
	bne	a0, a2, beq_else.11075
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_or_network.2568_ret
beq_else.11075:
	lw	a0, 0(sp)
	addi	a2, a0, 1
	sw	a1, 4(sp)
	mv	a0, a2
	call	read_or_network.2568
	lw	a1, 0(sp)
	slli	a1, a1, 2
	lw	a2, 4(sp)
	add	t6, a0, a1
	sw	a2, 0(t6)
	b	read_or_network.2568_ret
read_or_network.2568_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
read_and_network.2570:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	li	a2, 0
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	mv	a0, a2
	call	read_net_item.2566
	li	a1, 0
	add	t6, a0, a1
	lw	a1, 0(t6)
	li	a2, -1
	bne	a1, a2, beq_else.11076
	b	read_and_network.2570_ret
beq_else.11076:
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 0(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, 1
	mv	a1, a3
	call	read_and_network.2570
	b	read_and_network.2570_ret
read_and_network.2570_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
read_parameter.2573:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	sw	a5, 0(sp)
	sw	a0, 4(sp)
	sw	a4, 8(sp)
	sw	a3, 12(sp)
	sw	a2, 16(sp)
	sw	a1, 20(sp)
	mv	a5, a6
	mv	a4, s3
	mv	a3, s2
	mv	a2, s1
	mv	a1, a7
	mv	a0, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	call	read_screen_settings.2541
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	mv	a3, a1
	mv	a2, a0
	call	read_light.2548
	lw	a0, 12(sp)
	lw	a1, 8(sp)
	mv	a3, a1
	mv	a2, a0
	call	read_all_object.2562
	li	a0, 0
	lw	a1, 4(sp)
	mv	a2, a1
	call	read_and_network.2570
	li	a0, 0
	call	read_or_network.2568
	li	a1, 0
	lw	a2, 0(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	b	read_parameter.2573_ret
read_parameter.2573_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
solver_rect_surface.2586:
	addi	sp, sp, -132
	sw	ra, 128(sp)
	sw	fp, 124(sp)
	addi	fp, sp, 132
	slli	s9, s5, 2
	add	t6, s4, s9
	flw	fa3, 0(t6)
	sw	s8, 0(sp)
	fsw	fa2, 8(sp)
	sw	s7, 16(sp)
	fsw	fa1, 24(sp)
	sw	s6, 32(sp)
	fsw	fa0, 40(sp)
	sw	s4, 48(sp)
	sw	s5, 52(sp)
	sw	s3, 56(sp)
	sw	s2, 60(sp)
	sw	s1, 64(sp)
	sw	a7, 68(sp)
	sw	a6, 72(sp)
	sw	a5, 76(sp)
	sw	a4, 80(sp)
	sw	a3, 84(sp)
	sw	a2, 88(sp)
	sw	a1, 92(sp)
	sw	a0, 96(sp)
	fmv.s	fa0, fa3
	call	fiszero.2406
	li	a1, 0
	bne	a0, a1, beq_else.11082
	lw	a0, 96(sp)
	lw	a1, 92(sp)
	lw	a2, 88(sp)
	lw	a3, 84(sp)
	lw	a4, 80(sp)
	lw	a5, 76(sp)
	lw	a6, 72(sp)
	lw	a7, 68(sp)
	lw	s1, 64(sp)
	lw	s2, 60(sp)
	lw	s3, 56(sp)
	call	o_param_abc.2484
	lw	a1, 96(sp)
	lw	a2, 92(sp)
	lw	a3, 88(sp)
	lw	a4, 84(sp)
	lw	a5, 80(sp)
	lw	a6, 76(sp)
	lw	a7, 72(sp)
	lw	s1, 68(sp)
	lw	s2, 64(sp)
	lw	s3, 60(sp)
	lw	s4, 56(sp)
	sw	a0, 100(sp)
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_isinvert.2474
	lw	a1, 52(sp)
	slli	a2, a1, 2
	lw	a3, 48(sp)
	add	t6, a3, a2
	flw	fa0, 0(t6)
	sw	a0, 104(sp)
	call	fisneg.2404
	mv	a1, a0
	lw	a0, 104(sp)
	call	xor.2419
	lw	a1, 52(sp)
	slli	a2, a1, 2
	lw	a3, 100(sp)
	add	t6, a3, a2
	flw	fa0, 0(t6)
	call	fneg_cond.2424
	flw	fa1, 40(sp)
	fsub.s	fa0, fa0, fa1
	lw	a0, 52(sp)
	slli	a0, a0, 2
	lw	a1, 48(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fdiv.s	fa0, fa0, fa1
	lw	a0, 32(sp)
	slli	a2, a0, 2
	add	t6, a1, a2
	flw	fa1, 0(t6)
	fmul.s	fa1, fa0, fa1
	flw	fa2, 24(sp)
	fadd.s	fa1, fa1, fa2
	fsw	fa0, 112(sp)
	fmv.s	fa0, fa1
	call	fabs.2415
	lw	a0, 32(sp)
	slli	a0, a0, 2
	lw	a1, 100(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11084
	li	a0, 0
	b	solver_rect_surface.2586_ret
beq_else.11084:
	lw	a0, 16(sp)
	slli	a1, a0, 2
	lw	a2, 48(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	flw	fa1, 112(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa2, 8(sp)
	fadd.s	fa0, fa0, fa2
	call	fabs.2415
	lw	a0, 16(sp)
	slli	a0, a0, 2
	lw	a1, 100(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11085
	li	a0, 0
	b	solver_rect_surface.2586_ret
beq_else.11085:
	li	a0, 0
	lw	a1, 0(sp)
	flw	fa0, 112(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 1
	b	solver_rect_surface.2586_ret
beq_else.11082:
	li	a0, 0
	b	solver_rect_surface.2586_ret
solver_rect_surface.2586_ret:
	lw	ra, 128(sp)
	lw	fp, 124(sp)
	addi	sp, sp, 132
	jr	ra
solver_rect.2596:
	addi	sp, sp, -88
	sw	ra, 84(sp)
	sw	fp, 80(sp)
	addi	fp, sp, 88
	li	s6, 0
	li	s7, 1
	li	s8, 2
	fsw	fa0, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa1, 16(sp)
	sw	s5, 24(sp)
	sw	s4, 28(sp)
	sw	s3, 32(sp)
	sw	s2, 36(sp)
	sw	s1, 40(sp)
	sw	a7, 44(sp)
	sw	a6, 48(sp)
	sw	a5, 52(sp)
	sw	a4, 56(sp)
	sw	a3, 60(sp)
	sw	a2, 64(sp)
	sw	a1, 68(sp)
	sw	a0, 72(sp)
	mv	s9, s5
	mv	t5, s8
	mv	s8, s5
	mv	s5, s6
	mv	s6, s7
	mv	s7, t5
	call	solver_rect_surface.2586
	li	a1, 0
	bne	a0, a1, beq_else.11086
	li	s5, 1
	li	s6, 2
	li	s7, 0
	flw	fa0, 16(sp)
	flw	fa1, 8(sp)
	flw	fa2, 0(sp)
	lw	a0, 72(sp)
	lw	a1, 68(sp)
	lw	a2, 64(sp)
	lw	a3, 60(sp)
	lw	a4, 56(sp)
	lw	a5, 52(sp)
	lw	a6, 48(sp)
	lw	a7, 44(sp)
	lw	s1, 40(sp)
	lw	s2, 36(sp)
	lw	s3, 32(sp)
	lw	s4, 28(sp)
	lw	s8, 24(sp)
	mv	s9, s8
	call	solver_rect_surface.2586
	li	a1, 0
	bne	a0, a1, beq_else.11087
	li	s5, 2
	li	s6, 0
	li	s7, 1
	flw	fa0, 8(sp)
	flw	fa1, 0(sp)
	flw	fa2, 16(sp)
	lw	a0, 72(sp)
	lw	a1, 68(sp)
	lw	a2, 64(sp)
	lw	a3, 60(sp)
	lw	a4, 56(sp)
	lw	a5, 52(sp)
	lw	a6, 48(sp)
	lw	a7, 44(sp)
	lw	s1, 40(sp)
	lw	s2, 36(sp)
	lw	s3, 32(sp)
	lw	s4, 28(sp)
	lw	s8, 24(sp)
	mv	s9, s8
	call	solver_rect_surface.2586
	li	a1, 0
	bne	a0, a1, beq_else.11088
	li	a0, 0
	b	solver_rect.2596_ret
beq_else.11088:
	li	a0, 3
	b	solver_rect.2596_ret
beq_else.11087:
	li	a0, 2
	b	solver_rect.2596_ret
beq_else.11086:
	li	a0, 1
	b	solver_rect.2596_ret
solver_rect.2596_ret:
	lw	ra, 84(sp)
	lw	fp, 80(sp)
	addi	sp, sp, 88
	jr	ra
solver_surface.2603:
	addi	sp, sp, -60
	sw	ra, 56(sp)
	sw	fp, 52(sp)
	addi	fp, sp, 60
	sw	s5, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa1, 16(sp)
	fsw	fa0, 24(sp)
	sw	s4, 32(sp)
	call	o_param_abc.2484
	mv	a1, a0
	lw	a0, 32(sp)
	sw	a1, 36(sp)
	call	veciprod.2446
	fsw	fa0, 40(sp)
	call	fispos.2402
	li	a1, 0
	bne	a0, a1, beq_else.11090
	li	a0, 0
	b	solver_surface.2603_ret
beq_else.11090:
	flw	fa0, 24(sp)
	flw	fa1, 16(sp)
	flw	fa2, 8(sp)
	lw	a0, 36(sp)
	call	veciprod2.2449
	call	fneg.2408
	flw	fa1, 40(sp)
	fdiv.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 1
	b	solver_surface.2603_ret
solver_surface.2603_ret:
	lw	ra, 56(sp)
	lw	fp, 52(sp)
	addi	sp, sp, 60
	jr	ra
quadratic.2610:
	addi	sp, sp, -172
	sw	ra, 168(sp)
	sw	fp, 164(sp)
	addi	fp, sp, 172
	fsw	fa0, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa1, 16(sp)
	sw	s3, 24(sp)
	sw	s2, 28(sp)
	sw	s1, 32(sp)
	sw	a7, 36(sp)
	sw	a6, 40(sp)
	sw	a5, 44(sp)
	sw	a4, 48(sp)
	sw	a3, 52(sp)
	sw	a2, 56(sp)
	sw	a1, 60(sp)
	sw	a0, 64(sp)
	call	fsqr.2410
	lw	a0, 64(sp)
	lw	a1, 60(sp)
	lw	a2, 56(sp)
	lw	a3, 52(sp)
	lw	a4, 48(sp)
	lw	a5, 44(sp)
	lw	a6, 40(sp)
	lw	a7, 36(sp)
	lw	s1, 32(sp)
	lw	s2, 28(sp)
	lw	s3, 24(sp)
	fsw	fa0, 72(sp)
	call	o_param_a.2478
	flw	fa1, 72(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 16(sp)
	fsw	fa0, 80(sp)
	fmv.s	fa0, fa1
	call	fsqr.2410
	lw	a0, 64(sp)
	lw	a1, 60(sp)
	lw	a2, 56(sp)
	lw	a3, 52(sp)
	lw	a4, 48(sp)
	lw	a5, 44(sp)
	lw	a6, 40(sp)
	lw	a7, 36(sp)
	lw	s1, 32(sp)
	lw	s2, 28(sp)
	lw	s3, 24(sp)
	fsw	fa0, 88(sp)
	call	o_param_b.2480
	flw	fa1, 88(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 80(sp)
	fadd.s	fa0, fa1, fa0
	flw	fa1, 8(sp)
	fsw	fa0, 96(sp)
	fmv.s	fa0, fa1
	call	fsqr.2410
	lw	a0, 64(sp)
	lw	a1, 60(sp)
	lw	a2, 56(sp)
	lw	a3, 52(sp)
	lw	a4, 48(sp)
	lw	a5, 44(sp)
	lw	a6, 40(sp)
	lw	a7, 36(sp)
	lw	s1, 32(sp)
	lw	s2, 28(sp)
	lw	s3, 24(sp)
	fsw	fa0, 104(sp)
	call	o_param_c.2482
	flw	fa1, 104(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 96(sp)
	fadd.s	fa0, fa1, fa0
	lw	a0, 64(sp)
	lw	a1, 60(sp)
	lw	a2, 56(sp)
	lw	a3, 52(sp)
	lw	a4, 48(sp)
	lw	a5, 44(sp)
	lw	a6, 40(sp)
	lw	a7, 36(sp)
	lw	s1, 32(sp)
	lw	s2, 28(sp)
	lw	s3, 24(sp)
	fsw	fa0, 112(sp)
	call	o_isrot.2476
	li	a1, 0
	bne	a0, a1, beq_else.11092
	flw	fa0, 112(sp)
	b	quadratic.2610_ret
beq_else.11092:
	flw	fa0, 8(sp)
	flw	fa1, 16(sp)
	fmul.s	fa2, fa1, fa0
	lw	a0, 64(sp)
	lw	a1, 60(sp)
	lw	a2, 56(sp)
	lw	a3, 52(sp)
	lw	a4, 48(sp)
	lw	a5, 44(sp)
	lw	a6, 40(sp)
	lw	a7, 36(sp)
	lw	s1, 32(sp)
	lw	s2, 28(sp)
	lw	s3, 24(sp)
	fsw	fa2, 120(sp)
	call	o_param_r1.2502
	flw	fa1, 120(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 112(sp)
	fadd.s	fa0, fa1, fa0
	flw	fa1, 0(sp)
	flw	fa2, 8(sp)
	fmul.s	fa2, fa2, fa1
	lw	a0, 64(sp)
	lw	a1, 60(sp)
	lw	a2, 56(sp)
	lw	a3, 52(sp)
	lw	a4, 48(sp)
	lw	a5, 44(sp)
	lw	a6, 40(sp)
	lw	a7, 36(sp)
	lw	s1, 32(sp)
	lw	s2, 28(sp)
	lw	s3, 24(sp)
	fsw	fa0, 128(sp)
	fsw	fa2, 136(sp)
	call	o_param_r2.2504
	flw	fa1, 136(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 128(sp)
	fadd.s	fa0, fa1, fa0
	flw	fa1, 16(sp)
	flw	fa2, 0(sp)
	fmul.s	fa1, fa2, fa1
	lw	a0, 64(sp)
	lw	a1, 60(sp)
	lw	a2, 56(sp)
	lw	a3, 52(sp)
	lw	a4, 48(sp)
	lw	a5, 44(sp)
	lw	a6, 40(sp)
	lw	a7, 36(sp)
	lw	s1, 32(sp)
	lw	s2, 28(sp)
	lw	s3, 24(sp)
	fsw	fa0, 144(sp)
	fsw	fa1, 152(sp)
	call	o_param_r3.2506
	flw	fa1, 152(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 144(sp)
	fadd.s	fa0, fa1, fa0
	b	quadratic.2610_ret
quadratic.2610_ret:
	lw	ra, 168(sp)
	lw	fp, 164(sp)
	addi	sp, sp, 172
	jr	ra
bilinear.2615:
	addi	sp, sp, -196
	sw	ra, 192(sp)
	sw	fp, 188(sp)
	addi	fp, sp, 196
	fmul.s	fa6, fa0, fa3
	fsw	fa3, 0(sp)
	fsw	fa0, 8(sp)
	fsw	fa5, 16(sp)
	fsw	fa2, 24(sp)
	sw	s3, 32(sp)
	sw	s2, 36(sp)
	sw	s1, 40(sp)
	sw	a7, 44(sp)
	sw	a6, 48(sp)
	sw	a5, 52(sp)
	sw	a4, 56(sp)
	sw	a3, 60(sp)
	sw	a2, 64(sp)
	sw	a1, 68(sp)
	sw	a0, 72(sp)
	fsw	fa4, 80(sp)
	fsw	fa1, 88(sp)
	fsw	fa6, 96(sp)
	call	o_param_a.2478
	flw	fa1, 96(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 80(sp)
	flw	fa2, 88(sp)
	fmul.s	fa3, fa2, fa1
	lw	a0, 72(sp)
	lw	a1, 68(sp)
	lw	a2, 64(sp)
	lw	a3, 60(sp)
	lw	a4, 56(sp)
	lw	a5, 52(sp)
	lw	a6, 48(sp)
	lw	a7, 44(sp)
	lw	s1, 40(sp)
	lw	s2, 36(sp)
	lw	s3, 32(sp)
	fsw	fa0, 104(sp)
	fsw	fa3, 112(sp)
	call	o_param_b.2480
	flw	fa1, 112(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 104(sp)
	fadd.s	fa0, fa1, fa0
	flw	fa1, 16(sp)
	flw	fa2, 24(sp)
	fmul.s	fa3, fa2, fa1
	lw	a0, 72(sp)
	lw	a1, 68(sp)
	lw	a2, 64(sp)
	lw	a3, 60(sp)
	lw	a4, 56(sp)
	lw	a5, 52(sp)
	lw	a6, 48(sp)
	lw	a7, 44(sp)
	lw	s1, 40(sp)
	lw	s2, 36(sp)
	lw	s3, 32(sp)
	fsw	fa0, 120(sp)
	fsw	fa3, 128(sp)
	call	o_param_c.2482
	flw	fa1, 128(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 120(sp)
	fadd.s	fa0, fa1, fa0
	lw	a0, 72(sp)
	lw	a1, 68(sp)
	lw	a2, 64(sp)
	lw	a3, 60(sp)
	lw	a4, 56(sp)
	lw	a5, 52(sp)
	lw	a6, 48(sp)
	lw	a7, 44(sp)
	lw	s1, 40(sp)
	lw	s2, 36(sp)
	lw	s3, 32(sp)
	fsw	fa0, 136(sp)
	call	o_isrot.2476
	li	a1, 0
	bne	a0, a1, beq_else.11094
	flw	fa0, 136(sp)
	b	bilinear.2615_ret
beq_else.11094:
	flw	fa0, 80(sp)
	flw	fa1, 24(sp)
	fmul.s	fa2, fa1, fa0
	flw	fa3, 16(sp)
	flw	fa4, 88(sp)
	fmul.s	fa5, fa4, fa3
	fadd.s	fa2, fa2, fa5
	lw	a0, 72(sp)
	lw	a1, 68(sp)
	lw	a2, 64(sp)
	lw	a3, 60(sp)
	lw	a4, 56(sp)
	lw	a5, 52(sp)
	lw	a6, 48(sp)
	lw	a7, 44(sp)
	lw	s1, 40(sp)
	lw	s2, 36(sp)
	lw	s3, 32(sp)
	fsw	fa2, 144(sp)
	call	o_param_r1.2502
	flw	fa1, 144(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 16(sp)
	flw	fa2, 8(sp)
	fmul.s	fa1, fa2, fa1
	flw	fa3, 0(sp)
	flw	fa4, 24(sp)
	fmul.s	fa4, fa4, fa3
	fadd.s	fa1, fa1, fa4
	lw	a0, 72(sp)
	lw	a1, 68(sp)
	lw	a2, 64(sp)
	lw	a3, 60(sp)
	lw	a4, 56(sp)
	lw	a5, 52(sp)
	lw	a6, 48(sp)
	lw	a7, 44(sp)
	lw	s1, 40(sp)
	lw	s2, 36(sp)
	lw	s3, 32(sp)
	fsw	fa0, 152(sp)
	fsw	fa1, 160(sp)
	call	o_param_r2.2504
	flw	fa1, 160(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 152(sp)
	fadd.s	fa0, fa1, fa0
	flw	fa1, 80(sp)
	flw	fa2, 8(sp)
	fmul.s	fa1, fa2, fa1
	flw	fa2, 0(sp)
	flw	fa3, 88(sp)
	fmul.s	fa2, fa3, fa2
	fadd.s	fa1, fa1, fa2
	lw	a0, 72(sp)
	lw	a1, 68(sp)
	lw	a2, 64(sp)
	lw	a3, 60(sp)
	lw	a4, 56(sp)
	lw	a5, 52(sp)
	lw	a6, 48(sp)
	lw	a7, 44(sp)
	lw	s1, 40(sp)
	lw	s2, 36(sp)
	lw	s3, 32(sp)
	fsw	fa0, 168(sp)
	fsw	fa1, 176(sp)
	call	o_param_r3.2506
	flw	fa1, 176(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 168(sp)
	fadd.s	fa0, fa1, fa0
	call	fhalf.2417
	flw	fa1, 136(sp)
	fadd.s	fa0, fa1, fa0
	b	bilinear.2615_ret
bilinear.2615_ret:
	lw	ra, 192(sp)
	lw	fp, 188(sp)
	addi	sp, sp, 196
	jr	ra
solver_second.2623:
	addi	sp, sp, -140
	sw	ra, 136(sp)
	sw	fp, 132(sp)
	addi	fp, sp, 140
	li	s6, 0
	add	t6, s4, s6
	flw	fa3, 0(t6)
	li	s6, 4
	add	t6, s4, s6
	flw	fa4, 0(t6)
	li	s6, 8
	add	t6, s4, s6
	flw	fa5, 0(t6)
	sw	s5, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa1, 16(sp)
	fsw	fa0, 24(sp)
	sw	s3, 32(sp)
	sw	s2, 36(sp)
	sw	s1, 40(sp)
	sw	a7, 44(sp)
	sw	a6, 48(sp)
	sw	a5, 52(sp)
	sw	a4, 56(sp)
	sw	a3, 60(sp)
	sw	a2, 64(sp)
	sw	a1, 68(sp)
	sw	a0, 72(sp)
	sw	s4, 76(sp)
	fmv.s	fa2, fa5
	fmv.s	fa1, fa4
	fmv.s	fa0, fa3
	call	quadratic.2610
	fsw	fa0, 80(sp)
	call	fiszero.2406
	li	a1, 0
	bne	a0, a1, beq_else.11096
	li	a0, 0
	lw	a1, 76(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	li	a0, 4
	add	t6, a1, a0
	flw	fa1, 0(t6)
	li	a0, 8
	add	t6, a1, a0
	flw	fa2, 0(t6)
	flw	fa3, 24(sp)
	flw	fa4, 16(sp)
	flw	fa5, 8(sp)
	lw	a0, 72(sp)
	lw	a1, 68(sp)
	lw	a2, 64(sp)
	lw	a3, 60(sp)
	lw	a4, 56(sp)
	lw	a5, 52(sp)
	lw	a6, 48(sp)
	lw	a7, 44(sp)
	lw	s1, 40(sp)
	lw	s2, 36(sp)
	lw	s3, 32(sp)
	call	bilinear.2615
	flw	fa1, 24(sp)
	flw	fa2, 16(sp)
	flw	fa3, 8(sp)
	lw	a0, 72(sp)
	lw	a1, 68(sp)
	lw	a2, 64(sp)
	lw	a3, 60(sp)
	lw	a4, 56(sp)
	lw	a5, 52(sp)
	lw	a6, 48(sp)
	lw	a7, 44(sp)
	lw	s1, 40(sp)
	lw	s2, 36(sp)
	lw	s3, 32(sp)
	fsw	fa0, 88(sp)
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	call	quadratic.2610
	lw	a0, 72(sp)
	lw	a1, 68(sp)
	lw	a2, 64(sp)
	lw	a3, 60(sp)
	lw	a4, 56(sp)
	lw	a5, 52(sp)
	lw	a6, 48(sp)
	lw	a7, 44(sp)
	lw	s1, 40(sp)
	lw	s2, 36(sp)
	lw	s3, 32(sp)
	fsw	fa0, 96(sp)
	call	o_form.2470
	li	a1, 3
	bne	a0, a1, beq_else.11097
	fli	fa0, l.7008
	flw	fa1, 96(sp)
	fsub.s	fa0, fa1, fa0
	b	beq_cont.11098
beq_else.11097:
	flw	fa0, 96(sp)
beq_cont.11098:
	flw	fa1, 88(sp)
	fsw	fa0, 104(sp)
	fmv.s	fa0, fa1
	call	fsqr.2410
	flw	fa1, 104(sp)
	flw	fa2, 80(sp)
	fmul.s	fa1, fa2, fa1
	fsub.s	fa0, fa0, fa1
	fsw	fa0, 112(sp)
	call	fispos.2402
	li	a1, 0
	bne	a0, a1, beq_else.11099
	li	a0, 0
	b	solver_second.2623_ret
beq_else.11099:
	flw	fa0, 112(sp)
	fsqrt.s	fa0, fa0
	lw	a0, 72(sp)
	lw	a1, 68(sp)
	lw	a2, 64(sp)
	lw	a3, 60(sp)
	lw	a4, 56(sp)
	lw	a5, 52(sp)
	lw	a6, 48(sp)
	lw	a7, 44(sp)
	lw	s1, 40(sp)
	lw	s2, 36(sp)
	lw	s3, 32(sp)
	fsw	fa0, 120(sp)
	call	o_isinvert.2474
	li	a1, 0
	bne	a0, a1, beq_else.11100
	flw	fa0, 120(sp)
	call	fneg.2408
	b	beq_cont.11101
beq_else.11100:
	flw	fa0, 120(sp)
beq_cont.11101:
	flw	fa1, 88(sp)
	fsub.s	fa0, fa0, fa1
	flw	fa1, 80(sp)
	fdiv.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 1
	b	solver_second.2623_ret
beq_else.11096:
	li	a0, 0
	b	solver_second.2623_ret
solver_second.2623_ret:
	lw	ra, 136(sp)
	lw	fp, 132(sp)
	addi	sp, sp, 140
	jr	ra
solver.2630:
	addi	sp, sp, -76
	sw	ra, 72(sp)
	sw	fp, 68(sp)
	addi	fp, sp, 76
	slli	a0, a0, 2
	add	t6, a3, a0
	lw	a0, 0(t6)
	li	a3, 0
	add	t6, a2, a3
	flw	fa0, 0(t6)
	sw	a4, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	sw	a2, 12(sp)
	fsw	fa0, 16(sp)
	call	o_param_x.2486
	flw	fa1, 16(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 4
	lw	a1, 12(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 8(sp)
	fsw	fa0, 24(sp)
	fsw	fa1, 32(sp)
	call	o_param_y.2488
	flw	fa1, 32(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 8
	lw	a1, 12(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 8(sp)
	fsw	fa0, 40(sp)
	fsw	fa1, 48(sp)
	call	o_param_z.2490
	flw	fa1, 48(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 8(sp)
	fsw	fa0, 56(sp)
	call	o_form.2470
	li	a1, 1
	bne	a0, a1, beq_else.11102
	flw	fa0, 24(sp)
	flw	fa1, 40(sp)
	flw	fa2, 56(sp)
	lw	a0, 8(sp)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	mv	a3, a2
	call	solver_rect.2596
	b	solver.2630_ret
beq_else.11102:
	li	a1, 2
	bne	a0, a1, beq_else.11103
	flw	fa0, 24(sp)
	flw	fa1, 40(sp)
	flw	fa2, 56(sp)
	lw	a0, 8(sp)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	mv	a3, a2
	call	solver_surface.2603
	b	solver.2630_ret
beq_else.11103:
	flw	fa0, 24(sp)
	flw	fa1, 40(sp)
	flw	fa2, 56(sp)
	lw	a0, 8(sp)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	mv	a3, a2
	call	solver_second.2623
	b	solver.2630_ret
solver.2630_ret:
	lw	ra, 72(sp)
	lw	fp, 68(sp)
	addi	sp, sp, 76
	jr	ra
solver_rect_fast.2636:
	addi	sp, sp, -172
	sw	ra, 168(sp)
	sw	fp, 164(sp)
	addi	fp, sp, 172
	li	s7, 0
	add	t6, s5, s7
	flw	fa3, 0(t6)
	fsub.s	fa3, fa3, fa0
	li	s7, 4
	add	t6, s5, s7
	flw	fa4, 0(t6)
	fmul.s	fa3, fa3, fa4
	li	s7, 4
	add	t6, s4, s7
	flw	fa4, 0(t6)
	fmul.s	fa4, fa3, fa4
	fadd.s	fa4, fa4, fa1
	sw	s6, 0(sp)
	fsw	fa0, 8(sp)
	fsw	fa1, 16(sp)
	sw	s5, 24(sp)
	fsw	fa2, 32(sp)
	fsw	fa3, 40(sp)
	sw	s4, 48(sp)
	sw	s3, 52(sp)
	sw	s2, 56(sp)
	sw	s1, 60(sp)
	sw	a7, 64(sp)
	sw	a6, 68(sp)
	sw	a5, 72(sp)
	sw	a4, 76(sp)
	sw	a3, 80(sp)
	sw	a2, 84(sp)
	sw	a1, 88(sp)
	sw	a0, 92(sp)
	fmv.s	fa0, fa4
	call	fabs.2415
	lw	a0, 92(sp)
	lw	a1, 88(sp)
	lw	a2, 84(sp)
	lw	a3, 80(sp)
	lw	a4, 76(sp)
	lw	a5, 72(sp)
	lw	a6, 68(sp)
	lw	a7, 64(sp)
	lw	s1, 60(sp)
	lw	s2, 56(sp)
	lw	s3, 52(sp)
	fsw	fa0, 96(sp)
	call	o_param_b.2480
	fmv.s	fa1, fa0
	flw	fa0, 96(sp)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11106
	li	a0, 0
	b	beq_cont.11107
beq_else.11106:
	li	a0, 8
	lw	a1, 48(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	flw	fa1, 40(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa2, 32(sp)
	fadd.s	fa0, fa0, fa2
	call	fabs.2415
	lw	a0, 92(sp)
	lw	a1, 88(sp)
	lw	a2, 84(sp)
	lw	a3, 80(sp)
	lw	a4, 76(sp)
	lw	a5, 72(sp)
	lw	a6, 68(sp)
	lw	a7, 64(sp)
	lw	s1, 60(sp)
	lw	s2, 56(sp)
	lw	s3, 52(sp)
	fsw	fa0, 104(sp)
	call	o_param_c.2482
	fmv.s	fa1, fa0
	flw	fa0, 104(sp)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11108
	li	a0, 0
	b	beq_cont.11109
beq_else.11108:
	li	a0, 4
	lw	a1, 24(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	call	fiszero.2406
	li	a1, 0
	bne	a0, a1, beq_else.11110
	li	a0, 1
	b	beq_cont.11111
beq_else.11110:
	li	a0, 0
beq_cont.11111:
beq_cont.11109:
beq_cont.11107:
	li	a1, 0
	bne	a0, a1, beq_else.11112
	li	a0, 8
	lw	a1, 24(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	flw	fa1, 16(sp)
	fsub.s	fa0, fa0, fa1
	li	a0, 12
	add	t6, a1, a0
	flw	fa2, 0(t6)
	fmul.s	fa0, fa0, fa2
	li	a0, 0
	lw	a2, 48(sp)
	add	t6, a2, a0
	flw	fa2, 0(t6)
	fmul.s	fa2, fa0, fa2
	flw	fa3, 8(sp)
	fadd.s	fa2, fa2, fa3
	fsw	fa0, 112(sp)
	fmv.s	fa0, fa2
	call	fabs.2415
	lw	a0, 92(sp)
	lw	a1, 88(sp)
	lw	a2, 84(sp)
	lw	a3, 80(sp)
	lw	a4, 76(sp)
	lw	a5, 72(sp)
	lw	a6, 68(sp)
	lw	a7, 64(sp)
	lw	s1, 60(sp)
	lw	s2, 56(sp)
	lw	s3, 52(sp)
	fsw	fa0, 120(sp)
	call	o_param_a.2478
	fmv.s	fa1, fa0
	flw	fa0, 120(sp)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11113
	li	a0, 0
	b	beq_cont.11114
beq_else.11113:
	li	a0, 8
	lw	a1, 48(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	flw	fa1, 112(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa2, 32(sp)
	fadd.s	fa0, fa0, fa2
	call	fabs.2415
	lw	a0, 92(sp)
	lw	a1, 88(sp)
	lw	a2, 84(sp)
	lw	a3, 80(sp)
	lw	a4, 76(sp)
	lw	a5, 72(sp)
	lw	a6, 68(sp)
	lw	a7, 64(sp)
	lw	s1, 60(sp)
	lw	s2, 56(sp)
	lw	s3, 52(sp)
	fsw	fa0, 128(sp)
	call	o_param_c.2482
	fmv.s	fa1, fa0
	flw	fa0, 128(sp)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11115
	li	a0, 0
	b	beq_cont.11116
beq_else.11115:
	li	a0, 12
	lw	a1, 24(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	call	fiszero.2406
	li	a1, 0
	bne	a0, a1, beq_else.11117
	li	a0, 1
	b	beq_cont.11118
beq_else.11117:
	li	a0, 0
beq_cont.11118:
beq_cont.11116:
beq_cont.11114:
	li	a1, 0
	bne	a0, a1, beq_else.11119
	li	a0, 16
	lw	a1, 24(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	flw	fa1, 32(sp)
	fsub.s	fa0, fa0, fa1
	li	a0, 20
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a2, 48(sp)
	add	t6, a2, a0
	flw	fa1, 0(t6)
	fmul.s	fa1, fa0, fa1
	flw	fa2, 8(sp)
	fadd.s	fa1, fa1, fa2
	fsw	fa0, 136(sp)
	fmv.s	fa0, fa1
	call	fabs.2415
	lw	a0, 92(sp)
	lw	a1, 88(sp)
	lw	a2, 84(sp)
	lw	a3, 80(sp)
	lw	a4, 76(sp)
	lw	a5, 72(sp)
	lw	a6, 68(sp)
	lw	a7, 64(sp)
	lw	s1, 60(sp)
	lw	s2, 56(sp)
	lw	s3, 52(sp)
	fsw	fa0, 144(sp)
	call	o_param_a.2478
	fmv.s	fa1, fa0
	flw	fa0, 144(sp)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11120
	li	a0, 0
	b	beq_cont.11121
beq_else.11120:
	li	a0, 4
	lw	a1, 48(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	flw	fa1, 136(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa2, 16(sp)
	fadd.s	fa0, fa0, fa2
	call	fabs.2415
	lw	a0, 92(sp)
	lw	a1, 88(sp)
	lw	a2, 84(sp)
	lw	a3, 80(sp)
	lw	a4, 76(sp)
	lw	a5, 72(sp)
	lw	a6, 68(sp)
	lw	a7, 64(sp)
	lw	s1, 60(sp)
	lw	s2, 56(sp)
	lw	s3, 52(sp)
	fsw	fa0, 152(sp)
	call	o_param_b.2480
	fmv.s	fa1, fa0
	flw	fa0, 152(sp)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11122
	li	a0, 0
	b	beq_cont.11123
beq_else.11122:
	li	a0, 20
	lw	a1, 24(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	call	fiszero.2406
	li	a1, 0
	bne	a0, a1, beq_else.11124
	li	a0, 1
	b	beq_cont.11125
beq_else.11124:
	li	a0, 0
beq_cont.11125:
beq_cont.11123:
beq_cont.11121:
	li	a1, 0
	bne	a0, a1, beq_else.11126
	li	a0, 0
	b	solver_rect_fast.2636_ret
beq_else.11126:
	li	a0, 0
	lw	a1, 0(sp)
	flw	fa0, 136(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 3
	b	solver_rect_fast.2636_ret
beq_else.11119:
	li	a0, 0
	lw	a1, 0(sp)
	flw	fa0, 112(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 2
	b	solver_rect_fast.2636_ret
beq_else.11112:
	li	a0, 0
	lw	a1, 0(sp)
	flw	fa0, 40(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 1
	b	solver_rect_fast.2636_ret
solver_rect_fast.2636_ret:
	lw	ra, 168(sp)
	lw	fp, 164(sp)
	addi	sp, sp, 172
	jr	ra
solver_surface_fast.2644:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	li	a0, 0
	add	t6, s4, a0
	flw	fa3, 0(t6)
	sw	s5, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa1, 16(sp)
	fsw	fa0, 24(sp)
	sw	s4, 32(sp)
	fmv.s	fa0, fa3
	call	fisneg.2404
	li	a1, 0
	bne	a0, a1, beq_else.11128
	li	a0, 0
	b	solver_surface_fast.2644_ret
beq_else.11128:
	li	a0, 4
	lw	a1, 32(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	flw	fa1, 24(sp)
	fmul.s	fa0, fa0, fa1
	li	a0, 8
	add	t6, a1, a0
	flw	fa1, 0(t6)
	flw	fa2, 16(sp)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	li	a0, 12
	add	t6, a1, a0
	flw	fa1, 0(t6)
	flw	fa2, 8(sp)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 1
	b	solver_surface_fast.2644_ret
solver_surface_fast.2644_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
solver_second_fast.2651:
	addi	sp, sp, -140
	sw	ra, 136(sp)
	sw	fp, 132(sp)
	addi	fp, sp, 140
	li	s6, 0
	add	t6, s4, s6
	flw	fa3, 0(t6)
	sw	s5, 0(sp)
	fsw	fa3, 8(sp)
	sw	s3, 16(sp)
	sw	s2, 20(sp)
	sw	s1, 24(sp)
	sw	a7, 28(sp)
	sw	a6, 32(sp)
	sw	a5, 36(sp)
	sw	a4, 40(sp)
	sw	a3, 44(sp)
	sw	a2, 48(sp)
	sw	a1, 52(sp)
	sw	a0, 56(sp)
	fsw	fa2, 64(sp)
	fsw	fa1, 72(sp)
	fsw	fa0, 80(sp)
	sw	s4, 88(sp)
	fmv.s	fa0, fa3
	call	fiszero.2406
	li	a1, 0
	bne	a0, a1, beq_else.11131
	li	a0, 4
	lw	a1, 88(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	flw	fa1, 80(sp)
	fmul.s	fa0, fa0, fa1
	li	a0, 8
	add	t6, a1, a0
	flw	fa2, 0(t6)
	flw	fa3, 72(sp)
	fmul.s	fa2, fa2, fa3
	fadd.s	fa0, fa0, fa2
	li	a0, 12
	add	t6, a1, a0
	flw	fa2, 0(t6)
	flw	fa4, 64(sp)
	fmul.s	fa2, fa2, fa4
	fadd.s	fa0, fa0, fa2
	lw	a0, 56(sp)
	lw	a2, 52(sp)
	lw	a3, 48(sp)
	lw	a4, 44(sp)
	lw	a5, 40(sp)
	lw	a6, 36(sp)
	lw	a7, 32(sp)
	lw	s1, 28(sp)
	lw	s2, 24(sp)
	lw	s3, 20(sp)
	lw	s4, 16(sp)
	fsw	fa0, 96(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	fmv.s	fa2, fa4
	fmv.s	fa0, fa1
	fmv.s	fa1, fa3
	call	quadratic.2610
	lw	a0, 56(sp)
	lw	a1, 52(sp)
	lw	a2, 48(sp)
	lw	a3, 44(sp)
	lw	a4, 40(sp)
	lw	a5, 36(sp)
	lw	a6, 32(sp)
	lw	a7, 28(sp)
	lw	s1, 24(sp)
	lw	s2, 20(sp)
	lw	s3, 16(sp)
	fsw	fa0, 104(sp)
	call	o_form.2470
	li	a1, 3
	bne	a0, a1, beq_else.11133
	fli	fa0, l.7008
	flw	fa1, 104(sp)
	fsub.s	fa0, fa1, fa0
	b	beq_cont.11134
beq_else.11133:
	flw	fa0, 104(sp)
beq_cont.11134:
	flw	fa1, 96(sp)
	fsw	fa0, 112(sp)
	fmv.s	fa0, fa1
	call	fsqr.2410
	flw	fa1, 112(sp)
	flw	fa2, 8(sp)
	fmul.s	fa1, fa2, fa1
	fsub.s	fa0, fa0, fa1
	fsw	fa0, 120(sp)
	call	fispos.2402
	li	a1, 0
	bne	a0, a1, beq_else.11135
	li	a0, 0
	b	solver_second_fast.2651_ret
beq_else.11135:
	lw	a0, 56(sp)
	lw	a1, 52(sp)
	lw	a2, 48(sp)
	lw	a3, 44(sp)
	lw	a4, 40(sp)
	lw	a5, 36(sp)
	lw	a6, 32(sp)
	lw	a7, 28(sp)
	lw	s1, 24(sp)
	lw	s2, 20(sp)
	lw	s3, 16(sp)
	call	o_isinvert.2474
	li	a1, 0
	bne	a0, a1, beq_else.11136
	flw	fa0, 120(sp)
	fsqrt.s	fa0, fa0
	flw	fa1, 96(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 16
	lw	a1, 88(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.11137
beq_else.11136:
	flw	fa0, 120(sp)
	fsqrt.s	fa0, fa0
	flw	fa1, 96(sp)
	fadd.s	fa0, fa1, fa0
	li	a0, 16
	lw	a1, 88(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
beq_cont.11137:
	li	a0, 1
	b	solver_second_fast.2651_ret
beq_else.11131:
	li	a0, 0
	b	solver_second_fast.2651_ret
solver_second_fast.2651_ret:
	lw	ra, 136(sp)
	lw	fp, 132(sp)
	addi	sp, sp, 140
	jr	ra
solver_fast.2658:
	addi	sp, sp, -88
	sw	ra, 84(sp)
	sw	fp, 80(sp)
	addi	fp, sp, 88
	slli	a6, a0, 2
	add	t6, a4, a6
	lw	a4, 0(t6)
	li	a6, 0
	add	t6, a3, a6
	flw	fa0, 0(t6)
	sw	a5, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	sw	a1, 12(sp)
	sw	a4, 16(sp)
	sw	a3, 20(sp)
	fsw	fa0, 24(sp)
	mv	a0, a4
	call	o_param_x.2486
	flw	fa1, 24(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 4
	lw	a1, 20(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 16(sp)
	fsw	fa0, 32(sp)
	fsw	fa1, 40(sp)
	call	o_param_y.2488
	flw	fa1, 40(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 8
	lw	a1, 20(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 16(sp)
	fsw	fa0, 48(sp)
	fsw	fa1, 56(sp)
	call	o_param_z.2490
	flw	fa1, 56(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 12(sp)
	lw	a1, 8(sp)
	fsw	fa0, 64(sp)
	call	d_const.2531
	lw	a1, 4(sp)
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	lw	a1, 16(sp)
	sw	a0, 72(sp)
	mv	a0, a1
	call	o_form.2470
	li	a1, 1
	bne	a0, a1, beq_else.11138
	lw	a0, 12(sp)
	lw	a1, 8(sp)
	call	d_vec.2529
	mv	a1, a0
	flw	fa0, 32(sp)
	flw	fa1, 48(sp)
	flw	fa2, 64(sp)
	lw	a0, 16(sp)
	lw	a2, 72(sp)
	lw	a3, 0(sp)
	mv	a4, a3
	call	solver_rect_fast.2636
	b	solver_fast.2658_ret
beq_else.11138:
	li	a1, 2
	bne	a0, a1, beq_else.11139
	flw	fa0, 32(sp)
	flw	fa1, 48(sp)
	flw	fa2, 64(sp)
	lw	a0, 16(sp)
	lw	a1, 72(sp)
	lw	a2, 0(sp)
	mv	a3, a2
	call	solver_surface_fast.2644
	b	solver_fast.2658_ret
beq_else.11139:
	flw	fa0, 32(sp)
	flw	fa1, 48(sp)
	flw	fa2, 64(sp)
	lw	a0, 16(sp)
	lw	a1, 72(sp)
	lw	a2, 0(sp)
	mv	a3, a2
	call	solver_second_fast.2651
	b	solver_fast.2658_ret
solver_fast.2658_ret:
	lw	ra, 84(sp)
	lw	fp, 80(sp)
	addi	sp, sp, 88
	jr	ra
solver_surface_fast2.2664:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	li	a0, 0
	add	t6, s4, a0
	flw	fa0, 0(t6)
	sw	s6, 0(sp)
	sw	s5, 4(sp)
	sw	s4, 8(sp)
	call	fisneg.2404
	li	a1, 0
	bne	a0, a1, beq_else.11140
	li	a0, 0
	b	solver_surface_fast2.2664_ret
beq_else.11140:
	li	a0, 0
	lw	a1, 8(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	li	a0, 12
	lw	a1, 4(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 1
	b	solver_surface_fast2.2664_ret
solver_surface_fast2.2664_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
solver_second_fast2.2672:
	addi	sp, sp, -132
	sw	ra, 128(sp)
	sw	fp, 124(sp)
	addi	fp, sp, 132
	li	s7, 0
	add	t6, s4, s7
	flw	fa3, 0(t6)
	sw	s6, 0(sp)
	sw	s3, 4(sp)
	sw	s2, 8(sp)
	sw	s1, 12(sp)
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a5, 24(sp)
	sw	a4, 28(sp)
	sw	a3, 32(sp)
	sw	a2, 36(sp)
	sw	a1, 40(sp)
	sw	a0, 44(sp)
	fsw	fa3, 48(sp)
	sw	s5, 56(sp)
	fsw	fa2, 64(sp)
	fsw	fa1, 72(sp)
	fsw	fa0, 80(sp)
	sw	s4, 88(sp)
	fmv.s	fa0, fa3
	call	fiszero.2406
	li	a1, 0
	bne	a0, a1, beq_else.11142
	li	a0, 4
	lw	a1, 88(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	flw	fa1, 80(sp)
	fmul.s	fa0, fa0, fa1
	li	a0, 8
	add	t6, a1, a0
	flw	fa1, 0(t6)
	flw	fa2, 72(sp)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	li	a0, 12
	add	t6, a1, a0
	flw	fa1, 0(t6)
	flw	fa2, 64(sp)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	li	a0, 12
	lw	a2, 56(sp)
	add	t6, a2, a0
	flw	fa1, 0(t6)
	fsw	fa0, 96(sp)
	fsw	fa1, 104(sp)
	call	fsqr.2410
	flw	fa1, 104(sp)
	flw	fa2, 48(sp)
	fmul.s	fa1, fa2, fa1
	fsub.s	fa0, fa0, fa1
	fsw	fa0, 112(sp)
	call	fispos.2402
	li	a1, 0
	bne	a0, a1, beq_else.11144
	li	a0, 0
	b	solver_second_fast2.2672_ret
beq_else.11144:
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	call	o_isinvert.2474
	li	a1, 0
	bne	a0, a1, beq_else.11145
	flw	fa0, 112(sp)
	fsqrt.s	fa0, fa0
	flw	fa1, 96(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 16
	lw	a1, 88(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.11146
beq_else.11145:
	flw	fa0, 112(sp)
	fsqrt.s	fa0, fa0
	flw	fa1, 96(sp)
	fadd.s	fa0, fa1, fa0
	li	a0, 16
	lw	a1, 88(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
beq_cont.11146:
	li	a0, 1
	b	solver_second_fast2.2672_ret
beq_else.11142:
	li	a0, 0
	b	solver_second_fast2.2672_ret
solver_second_fast2.2672_ret:
	lw	ra, 128(sp)
	lw	fp, 124(sp)
	addi	sp, sp, 132
	jr	ra
solver_fast2.2680:
	addi	sp, sp, -64
	sw	ra, 60(sp)
	sw	fp, 56(sp)
	addi	fp, sp, 64
	slli	a5, a0, 2
	add	t6, a3, a5
	lw	a3, 0(t6)
	sw	a4, 0(sp)
	sw	a3, 4(sp)
	sw	a0, 8(sp)
	sw	a2, 12(sp)
	sw	a1, 16(sp)
	mv	a0, a3
	call	o_param_ctbl.2508
	li	a1, 0
	add	t6, a0, a1
	flw	fa0, 0(t6)
	li	a1, 4
	add	t6, a0, a1
	flw	fa1, 0(t6)
	li	a1, 8
	add	t6, a0, a1
	flw	fa2, 0(t6)
	lw	a1, 16(sp)
	lw	a2, 12(sp)
	sw	a0, 20(sp)
	fsw	fa2, 24(sp)
	fsw	fa1, 32(sp)
	fsw	fa0, 40(sp)
	mv	a0, a1
	mv	a1, a2
	call	d_const.2531
	lw	a1, 8(sp)
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	lw	a1, 4(sp)
	sw	a0, 48(sp)
	mv	a0, a1
	call	o_form.2470
	li	a1, 1
	bne	a0, a1, beq_else.11147
	lw	a0, 16(sp)
	lw	a1, 12(sp)
	call	d_vec.2529
	mv	a1, a0
	flw	fa0, 40(sp)
	flw	fa1, 32(sp)
	flw	fa2, 24(sp)
	lw	a0, 4(sp)
	lw	a2, 48(sp)
	lw	a3, 0(sp)
	mv	a4, a3
	call	solver_rect_fast.2636
	b	solver_fast2.2680_ret
beq_else.11147:
	li	a1, 2
	bne	a0, a1, beq_else.11148
	flw	fa0, 40(sp)
	flw	fa1, 32(sp)
	flw	fa2, 24(sp)
	lw	a0, 4(sp)
	lw	a1, 48(sp)
	lw	a2, 20(sp)
	lw	a3, 0(sp)
	mv	a4, a3
	call	solver_surface_fast2.2664
	b	solver_fast2.2680_ret
beq_else.11148:
	flw	fa0, 40(sp)
	flw	fa1, 32(sp)
	flw	fa2, 24(sp)
	lw	a0, 4(sp)
	lw	a1, 48(sp)
	lw	a2, 20(sp)
	lw	a3, 0(sp)
	mv	a4, a3
	call	solver_second_fast2.2672
	b	solver_fast2.2680_ret
solver_fast2.2680_ret:
	lw	ra, 60(sp)
	lw	fp, 56(sp)
	addi	sp, sp, 64
	jr	ra
setup_rect_table.2685:
	addi	sp, sp, -88
	sw	ra, 84(sp)
	sw	fp, 80(sp)
	addi	fp, sp, 88
	li	s5, 6
	fli	fa0, l.7005
	sw	s4, 0(sp)
	sw	s3, 4(sp)
	sw	s2, 8(sp)
	sw	s1, 12(sp)
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a5, 24(sp)
	sw	a4, 28(sp)
	sw	a3, 32(sp)
	sw	a2, 36(sp)
	sw	a1, 40(sp)
	sw	a0, 44(sp)
	mv	a0, s5
	call	min_caml_create_array
	li	a1, 0
	lw	a2, 44(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	sw	a0, 48(sp)
	call	fiszero.2406
	li	a1, 0
	bne	a0, a1, beq_else.11149
	lw	a0, 40(sp)
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 24(sp)
	lw	a5, 20(sp)
	lw	a6, 16(sp)
	lw	a7, 12(sp)
	lw	s1, 8(sp)
	lw	s2, 4(sp)
	lw	s3, 0(sp)
	call	o_isinvert.2474
	li	a1, 0
	lw	a2, 44(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	sw	a0, 52(sp)
	call	fisneg.2404
	mv	a1, a0
	lw	a0, 52(sp)
	call	xor.2419
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	sw	a0, 56(sp)
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_a.2478
	lw	a0, 56(sp)
	call	fneg_cond.2424
	li	a0, 0
	lw	a1, 48(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	fli	fa0, l.7008
	li	a0, 0
	lw	a2, 44(sp)
	add	t6, a2, a0
	flw	fa1, 0(t6)
	fdiv.s	fa0, fa0, fa1
	li	a0, 4
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.11150
beq_else.11149:
	fli	fa0, l.7005
	li	a0, 4
	lw	a1, 48(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
beq_cont.11150:
	li	a0, 4
	lw	a2, 44(sp)
	add	t6, a2, a0
	flw	fa0, 0(t6)
	call	fiszero.2406
	li	a1, 0
	bne	a0, a1, beq_else.11151
	lw	a0, 40(sp)
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 24(sp)
	lw	a5, 20(sp)
	lw	a6, 16(sp)
	lw	a7, 12(sp)
	lw	s1, 8(sp)
	lw	s2, 4(sp)
	lw	s3, 0(sp)
	call	o_isinvert.2474
	li	a1, 4
	lw	a2, 44(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	sw	a0, 60(sp)
	call	fisneg.2404
	mv	a1, a0
	lw	a0, 60(sp)
	call	xor.2419
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	sw	a0, 64(sp)
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_b.2480
	lw	a0, 64(sp)
	call	fneg_cond.2424
	li	a0, 8
	lw	a1, 48(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	fli	fa0, l.7008
	li	a0, 4
	lw	a2, 44(sp)
	add	t6, a2, a0
	flw	fa1, 0(t6)
	fdiv.s	fa0, fa0, fa1
	li	a0, 12
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.11152
beq_else.11151:
	fli	fa0, l.7005
	li	a0, 12
	lw	a1, 48(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
beq_cont.11152:
	li	a0, 8
	lw	a2, 44(sp)
	add	t6, a2, a0
	flw	fa0, 0(t6)
	call	fiszero.2406
	li	a1, 0
	bne	a0, a1, beq_else.11153
	lw	a0, 40(sp)
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 24(sp)
	lw	a5, 20(sp)
	lw	a6, 16(sp)
	lw	a7, 12(sp)
	lw	s1, 8(sp)
	lw	s2, 4(sp)
	lw	s3, 0(sp)
	call	o_isinvert.2474
	li	a1, 8
	lw	a2, 44(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	sw	a0, 68(sp)
	call	fisneg.2404
	mv	a1, a0
	lw	a0, 68(sp)
	call	xor.2419
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	sw	a0, 72(sp)
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_c.2482
	lw	a0, 72(sp)
	call	fneg_cond.2424
	li	a0, 16
	lw	a1, 48(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	fli	fa0, l.7008
	li	a0, 8
	lw	a2, 44(sp)
	add	t6, a2, a0
	flw	fa1, 0(t6)
	fdiv.s	fa0, fa0, fa1
	li	a0, 20
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.11154
beq_else.11153:
	fli	fa0, l.7005
	li	a0, 20
	lw	a1, 48(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
beq_cont.11154:
	mv	a0, a1
	b	setup_rect_table.2685_ret
setup_rect_table.2685_ret:
	lw	ra, 84(sp)
	lw	fp, 80(sp)
	addi	sp, sp, 88
	jr	ra
setup_surface_table.2688:
	addi	sp, sp, -116
	sw	ra, 112(sp)
	sw	fp, 108(sp)
	addi	fp, sp, 116
	li	s5, 4
	fli	fa0, l.7005
	sw	s4, 0(sp)
	sw	s3, 4(sp)
	sw	s2, 8(sp)
	sw	s1, 12(sp)
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a5, 24(sp)
	sw	a4, 28(sp)
	sw	a3, 32(sp)
	sw	a2, 36(sp)
	sw	a1, 40(sp)
	sw	a0, 44(sp)
	mv	a0, s5
	call	min_caml_create_array
	li	a1, 0
	lw	a2, 44(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	lw	a1, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	s1, 16(sp)
	lw	s2, 12(sp)
	lw	s3, 8(sp)
	lw	s4, 4(sp)
	lw	s5, 0(sp)
	sw	a0, 48(sp)
	fsw	fa0, 56(sp)
	mv	a2, a4
	mv	a0, a1
	mv	a4, a6
	mv	a1, a3
	mv	a6, s1
	mv	a3, a5
	mv	s1, s3
	mv	a5, a7
	mv	s3, s5
	mv	a7, s2
	mv	s2, s4
	call	o_param_a.2478
	flw	fa1, 56(sp)
	fmul.s	fa0, fa1, fa0
	li	a0, 4
	lw	a1, 44(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	fsw	fa0, 64(sp)
	fsw	fa1, 72(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_b.2480
	flw	fa1, 72(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 64(sp)
	fadd.s	fa0, fa1, fa0
	li	a0, 8
	lw	a1, 44(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 40(sp)
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 24(sp)
	lw	a5, 20(sp)
	lw	a6, 16(sp)
	lw	a7, 12(sp)
	lw	s1, 8(sp)
	lw	s2, 4(sp)
	lw	s3, 0(sp)
	fsw	fa0, 80(sp)
	fsw	fa1, 88(sp)
	call	o_param_c.2482
	flw	fa1, 88(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 80(sp)
	fadd.s	fa0, fa1, fa0
	fsw	fa0, 96(sp)
	call	fispos.2402
	li	a1, 0
	bne	a0, a1, beq_else.11156
	fli	fa0, l.7005
	li	a0, 0
	lw	a1, 48(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.11157
beq_else.11156:
	fli	fa0, l.7006
	flw	fa1, 96(sp)
	fdiv.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 48(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	lw	a0, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_a.2478
	flw	fa1, 96(sp)
	fdiv.s	fa0, fa0, fa1
	call	fneg.2408
	li	a0, 4
	lw	a1, 48(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	lw	a0, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_b.2480
	flw	fa1, 96(sp)
	fdiv.s	fa0, fa0, fa1
	call	fneg.2408
	li	a0, 8
	lw	a1, 48(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	lw	a0, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_c.2482
	flw	fa1, 96(sp)
	fdiv.s	fa0, fa0, fa1
	call	fneg.2408
	li	a0, 12
	lw	a1, 48(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
beq_cont.11157:
	mv	a0, a1
	b	setup_surface_table.2688_ret
setup_surface_table.2688_ret:
	lw	ra, 112(sp)
	lw	fp, 108(sp)
	addi	sp, sp, 116
	jr	ra
setup_second_table.2691:
	addi	sp, sp, -196
	sw	ra, 192(sp)
	sw	fp, 188(sp)
	addi	fp, sp, 196
	li	s5, 5
	fli	fa0, l.7005
	sw	s4, 0(sp)
	sw	s3, 4(sp)
	sw	s2, 8(sp)
	sw	s1, 12(sp)
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a5, 24(sp)
	sw	a4, 28(sp)
	sw	a3, 32(sp)
	sw	a2, 36(sp)
	sw	a1, 40(sp)
	sw	a0, 44(sp)
	mv	a0, s5
	call	min_caml_create_array
	li	a1, 0
	lw	a2, 44(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	li	a1, 4
	add	t6, a2, a1
	flw	fa1, 0(t6)
	li	a1, 8
	add	t6, a2, a1
	flw	fa2, 0(t6)
	lw	a1, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	s1, 16(sp)
	lw	s2, 12(sp)
	lw	s3, 8(sp)
	lw	s4, 4(sp)
	lw	s5, 0(sp)
	sw	a0, 48(sp)
	mv	a2, a4
	mv	a0, a1
	mv	a4, a6
	mv	a1, a3
	mv	a6, s1
	mv	a3, a5
	mv	s1, s3
	mv	a5, a7
	mv	s3, s5
	mv	a7, s2
	mv	s2, s4
	call	quadratic.2610
	li	a0, 0
	lw	a1, 44(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	fsw	fa0, 56(sp)
	fsw	fa1, 64(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_a.2478
	flw	fa1, 64(sp)
	fmul.s	fa0, fa1, fa0
	call	fneg.2408
	li	a0, 4
	lw	a1, 44(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	fsw	fa0, 72(sp)
	fsw	fa1, 80(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_b.2480
	flw	fa1, 80(sp)
	fmul.s	fa0, fa1, fa0
	call	fneg.2408
	li	a0, 8
	lw	a1, 44(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	fsw	fa0, 88(sp)
	fsw	fa1, 96(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_c.2482
	flw	fa1, 96(sp)
	fmul.s	fa0, fa1, fa0
	call	fneg.2408
	li	a0, 0
	lw	a1, 48(sp)
	flw	fa1, 56(sp)
	add	t6, a1, a0
	fsw	fa1, 0(t6)
	lw	a0, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	fsw	fa0, 104(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_isrot.2476
	li	a1, 0
	bne	a0, a1, beq_else.11159
	li	a0, 4
	lw	a1, 48(sp)
	flw	fa0, 72(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 8
	flw	fa0, 88(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 12
	flw	fa0, 104(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.11160
beq_else.11159:
	li	a0, 8
	lw	a1, 44(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	lw	a0, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	fsw	fa0, 112(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_r2.2504
	flw	fa1, 112(sp)
	fmul.s	fa0, fa1, fa0
	li	a0, 4
	lw	a1, 44(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	fsw	fa0, 120(sp)
	fsw	fa1, 128(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_r3.2506
	flw	fa1, 128(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 120(sp)
	fadd.s	fa0, fa1, fa0
	call	fhalf.2417
	flw	fa1, 72(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 4
	lw	a1, 48(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 8
	lw	a2, 44(sp)
	add	t6, a2, a0
	flw	fa0, 0(t6)
	lw	a0, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	s1, 16(sp)
	lw	s2, 12(sp)
	lw	s3, 8(sp)
	lw	s4, 4(sp)
	lw	s5, 0(sp)
	fsw	fa0, 136(sp)
	mv	a2, a4
	mv	a1, a3
	mv	a4, a6
	mv	a3, a5
	mv	a6, s1
	mv	a5, a7
	mv	s1, s3
	mv	a7, s2
	mv	s3, s5
	mv	s2, s4
	call	o_param_r1.2502
	flw	fa1, 136(sp)
	fmul.s	fa0, fa1, fa0
	li	a0, 0
	lw	a1, 44(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	fsw	fa0, 144(sp)
	fsw	fa1, 152(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_r3.2506
	flw	fa1, 152(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 144(sp)
	fadd.s	fa0, fa1, fa0
	call	fhalf.2417
	flw	fa1, 88(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 8
	lw	a1, 48(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 4
	lw	a2, 44(sp)
	add	t6, a2, a0
	flw	fa0, 0(t6)
	lw	a0, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	s1, 16(sp)
	lw	s2, 12(sp)
	lw	s3, 8(sp)
	lw	s4, 4(sp)
	lw	s5, 0(sp)
	fsw	fa0, 160(sp)
	mv	a2, a4
	mv	a1, a3
	mv	a4, a6
	mv	a3, a5
	mv	a6, s1
	mv	a5, a7
	mv	s1, s3
	mv	a7, s2
	mv	s3, s5
	mv	s2, s4
	call	o_param_r1.2502
	flw	fa1, 160(sp)
	fmul.s	fa0, fa1, fa0
	li	a0, 0
	lw	a1, 44(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 40(sp)
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 24(sp)
	lw	a5, 20(sp)
	lw	a6, 16(sp)
	lw	a7, 12(sp)
	lw	s1, 8(sp)
	lw	s2, 4(sp)
	lw	s3, 0(sp)
	fsw	fa0, 168(sp)
	fsw	fa1, 176(sp)
	call	o_param_r2.2504
	flw	fa1, 176(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 168(sp)
	fadd.s	fa0, fa1, fa0
	call	fhalf.2417
	flw	fa1, 104(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 12
	lw	a1, 48(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
beq_cont.11160:
	flw	fa0, 56(sp)
	call	fiszero.2406
	li	a1, 0
	bne	a0, a1, beq_else.11161
	fli	fa0, l.7008
	flw	fa1, 56(sp)
	fdiv.s	fa0, fa0, fa1
	li	a0, 16
	lw	a1, 48(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.11162
beq_else.11161:
beq_cont.11162:
	lw	a0, 48(sp)
	b	setup_second_table.2691_ret
setup_second_table.2691_ret:
	lw	ra, 192(sp)
	lw	fp, 188(sp)
	addi	sp, sp, 196
	jr	ra
iter_setup_dirvec_constants.2694:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	sw	fp, 32(sp)
	addi	fp, sp, 40
	li	a4, 0
	bgt	a4, a2, ble_else.11163
	slli	a4, a2, 2
	add	t6, a3, a4
	lw	a4, 0(t6)
	sw	a3, 0(sp)
	sw	a2, 4(sp)
	sw	a4, 8(sp)
	sw	a1, 12(sp)
	sw	a0, 16(sp)
	call	d_const.2531
	lw	a1, 16(sp)
	lw	a2, 12(sp)
	sw	a0, 20(sp)
	mv	a0, a1
	mv	a1, a2
	call	d_vec.2529
	lw	a1, 8(sp)
	sw	a0, 24(sp)
	mv	a0, a1
	call	o_form.2470
	li	a1, 1
	bne	a0, a1, beq_else.11164
	lw	a0, 24(sp)
	lw	a1, 8(sp)
	call	setup_rect_table.2685
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 20(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont.11165
beq_else.11164:
	li	a1, 2
	bne	a0, a1, beq_else.11166
	lw	a0, 24(sp)
	lw	a1, 8(sp)
	call	setup_surface_table.2688
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 20(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont.11167
beq_else.11166:
	lw	a0, 24(sp)
	lw	a1, 8(sp)
	call	setup_second_table.2691
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 20(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
beq_cont.11167:
beq_cont.11165:
	addi	a2, a1, -1
	lw	a0, 16(sp)
	lw	a1, 12(sp)
	lw	a3, 0(sp)
	call	iter_setup_dirvec_constants.2694
	b	iter_setup_dirvec_constants.2694_ret
ble_else.11163:
	b	iter_setup_dirvec_constants.2694_ret
iter_setup_dirvec_constants.2694_ret:
	lw	ra, 36(sp)
	lw	fp, 32(sp)
	addi	sp, sp, 40
	jr	ra
setup_dirvec_constants.2698:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a4, 0
	add	t6, a2, a4
	lw	a2, 0(t6)
	addi	a2, a2, -1
	mv	a4, a3
	call	iter_setup_dirvec_constants.2694
	b	setup_dirvec_constants.2698_ret
setup_dirvec_constants.2698_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
setup_startp_constants.2702:
	addi	sp, sp, -60
	sw	ra, 56(sp)
	sw	fp, 52(sp)
	addi	fp, sp, 60
	li	a3, 0
	bgt	a3, a1, ble_else.11169
	slli	a3, a1, 2
	add	t6, a2, a3
	lw	a3, 0(t6)
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	sw	a3, 12(sp)
	mv	a0, a3
	call	o_param_ctbl.2508
	lw	a1, 12(sp)
	sw	a0, 16(sp)
	mv	a0, a1
	call	o_form.2470
	li	a1, 0
	lw	a2, 8(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	lw	a1, 12(sp)
	sw	a0, 20(sp)
	fsw	fa0, 24(sp)
	mv	a0, a1
	call	o_param_x.2486
	flw	fa1, 24(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 0
	lw	a1, 16(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 4
	lw	a2, 8(sp)
	add	t6, a2, a0
	flw	fa0, 0(t6)
	lw	a0, 12(sp)
	fsw	fa0, 32(sp)
	call	o_param_y.2488
	flw	fa1, 32(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 4
	lw	a1, 16(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 8
	lw	a2, 8(sp)
	add	t6, a2, a0
	flw	fa0, 0(t6)
	lw	a0, 12(sp)
	fsw	fa0, 40(sp)
	call	o_param_z.2490
	flw	fa1, 40(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 8
	lw	a1, 16(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 2
	lw	a2, 20(sp)
	bne	a2, a0, beq_else.11170
	lw	a0, 12(sp)
	call	o_param_abc.2484
	li	a1, 0
	lw	a2, 16(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	li	a1, 4
	add	t6, a2, a1
	flw	fa1, 0(t6)
	li	a1, 8
	add	t6, a2, a1
	flw	fa2, 0(t6)
	call	veciprod2.2449
	li	a0, 12
	lw	a1, 16(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.11171
beq_else.11170:
	li	a0, 2
	bgt	a2, a0, ble_else.11172
	b	ble_cont.11173
ble_else.11172:
	li	a0, 0
	add	t6, a1, a0
	flw	fa0, 0(t6)
	li	a0, 4
	add	t6, a1, a0
	flw	fa1, 0(t6)
	li	a0, 8
	add	t6, a1, a0
	flw	fa2, 0(t6)
	lw	a0, 12(sp)
	call	quadratic.2610
	li	a0, 3
	lw	a1, 20(sp)
	bne	a1, a0, beq_else.11174
	fli	fa1, l.7008
	fsub.s	fa0, fa0, fa1
	b	beq_cont.11175
beq_else.11174:
beq_cont.11175:
	li	a0, 12
	lw	a1, 16(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
ble_cont.11173:
beq_cont.11171:
	lw	a0, 4(sp)
	addi	a1, a0, -1
	lw	a0, 8(sp)
	lw	a2, 0(sp)
	call	setup_startp_constants.2702
	b	setup_startp_constants.2702_ret
ble_else.11169:
	b	setup_startp_constants.2702_ret
setup_startp_constants.2702_ret:
	lw	ra, 56(sp)
	lw	fp, 52(sp)
	addi	sp, sp, 60
	jr	ra
setup_startp.2706:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	sw	a2, 0(sp)
	sw	a0, 4(sp)
	sw	a1, 8(sp)
	mv	a1, a0
	mv	a0, a3
	call	veccpy.2440
	li	a0, 0
	lw	a1, 8(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	addi	a1, a0, -1
	lw	a0, 4(sp)
	lw	a2, 0(sp)
	mv	a3, a2
	call	setup_startp_constants.2702
	b	setup_startp.2706_ret
setup_startp.2706_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
is_rect_outside.2711:
	addi	sp, sp, -100
	sw	ra, 96(sp)
	sw	fp, 92(sp)
	addi	fp, sp, 100
	fsw	fa2, 0(sp)
	fsw	fa1, 8(sp)
	sw	s3, 16(sp)
	sw	s2, 20(sp)
	sw	s1, 24(sp)
	sw	a7, 28(sp)
	sw	a6, 32(sp)
	sw	a5, 36(sp)
	sw	a4, 40(sp)
	sw	a3, 44(sp)
	sw	a2, 48(sp)
	sw	a1, 52(sp)
	sw	a0, 56(sp)
	call	fabs.2415
	lw	a0, 56(sp)
	lw	a1, 52(sp)
	lw	a2, 48(sp)
	lw	a3, 44(sp)
	lw	a4, 40(sp)
	lw	a5, 36(sp)
	lw	a6, 32(sp)
	lw	a7, 28(sp)
	lw	s1, 24(sp)
	lw	s2, 20(sp)
	lw	s3, 16(sp)
	fsw	fa0, 64(sp)
	call	o_param_a.2478
	fmv.s	fa1, fa0
	flw	fa0, 64(sp)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11178
	li	a0, 0
	b	beq_cont.11179
beq_else.11178:
	flw	fa0, 8(sp)
	call	fabs.2415
	lw	a0, 56(sp)
	lw	a1, 52(sp)
	lw	a2, 48(sp)
	lw	a3, 44(sp)
	lw	a4, 40(sp)
	lw	a5, 36(sp)
	lw	a6, 32(sp)
	lw	a7, 28(sp)
	lw	s1, 24(sp)
	lw	s2, 20(sp)
	lw	s3, 16(sp)
	fsw	fa0, 72(sp)
	call	o_param_b.2480
	fmv.s	fa1, fa0
	flw	fa0, 72(sp)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11180
	li	a0, 0
	b	beq_cont.11181
beq_else.11180:
	flw	fa0, 0(sp)
	call	fabs.2415
	lw	a0, 56(sp)
	lw	a1, 52(sp)
	lw	a2, 48(sp)
	lw	a3, 44(sp)
	lw	a4, 40(sp)
	lw	a5, 36(sp)
	lw	a6, 32(sp)
	lw	a7, 28(sp)
	lw	s1, 24(sp)
	lw	s2, 20(sp)
	lw	s3, 16(sp)
	fsw	fa0, 80(sp)
	call	o_param_c.2482
	fmv.s	fa1, fa0
	flw	fa0, 80(sp)
	call	fless.2412
beq_cont.11181:
beq_cont.11179:
	li	a1, 0
	bne	a0, a1, beq_else.11182
	lw	a0, 56(sp)
	lw	a1, 52(sp)
	lw	a2, 48(sp)
	lw	a3, 44(sp)
	lw	a4, 40(sp)
	lw	a5, 36(sp)
	lw	a6, 32(sp)
	lw	a7, 28(sp)
	lw	s1, 24(sp)
	lw	s2, 20(sp)
	lw	s3, 16(sp)
	call	o_isinvert.2474
	li	a1, 0
	bne	a0, a1, beq_else.11183
	li	a0, 1
	b	is_rect_outside.2711_ret
beq_else.11183:
	li	a0, 0
	b	is_rect_outside.2711_ret
beq_else.11182:
	lw	a0, 56(sp)
	lw	a1, 52(sp)
	lw	a2, 48(sp)
	lw	a3, 44(sp)
	lw	a4, 40(sp)
	lw	a5, 36(sp)
	lw	a6, 32(sp)
	lw	a7, 28(sp)
	lw	s1, 24(sp)
	lw	s2, 20(sp)
	lw	s3, 16(sp)
	call	o_isinvert.2474
	b	is_rect_outside.2711_ret
is_rect_outside.2711_ret:
	lw	ra, 96(sp)
	lw	fp, 92(sp)
	addi	sp, sp, 100
	jr	ra
is_plane_outside.2716:
	addi	sp, sp, -96
	sw	ra, 92(sp)
	sw	fp, 88(sp)
	addi	fp, sp, 96
	sw	s3, 0(sp)
	sw	s2, 4(sp)
	sw	s1, 8(sp)
	sw	a7, 12(sp)
	sw	a6, 16(sp)
	sw	a5, 20(sp)
	sw	a4, 24(sp)
	sw	a3, 28(sp)
	sw	a2, 32(sp)
	sw	a1, 36(sp)
	sw	a0, 40(sp)
	fsw	fa2, 48(sp)
	fsw	fa1, 56(sp)
	fsw	fa0, 64(sp)
	call	o_param_abc.2484
	flw	fa0, 64(sp)
	flw	fa1, 56(sp)
	flw	fa2, 48(sp)
	call	veciprod2.2449
	lw	a0, 40(sp)
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 24(sp)
	lw	a5, 20(sp)
	lw	a6, 16(sp)
	lw	a7, 12(sp)
	lw	s1, 8(sp)
	lw	s2, 4(sp)
	lw	s3, 0(sp)
	fsw	fa0, 72(sp)
	call	o_isinvert.2474
	flw	fa0, 72(sp)
	sw	a0, 80(sp)
	call	fisneg.2404
	mv	a1, a0
	lw	a0, 80(sp)
	call	xor.2419
	li	a1, 0
	bne	a0, a1, beq_else.11185
	li	a0, 1
	b	is_plane_outside.2716_ret
beq_else.11185:
	li	a0, 0
	b	is_plane_outside.2716_ret
is_plane_outside.2716_ret:
	lw	ra, 92(sp)
	lw	fp, 88(sp)
	addi	sp, sp, 96
	jr	ra
is_second_outside.2721:
	addi	sp, sp, -80
	sw	ra, 76(sp)
	sw	fp, 72(sp)
	addi	fp, sp, 80
	sw	s3, 0(sp)
	sw	s2, 4(sp)
	sw	s1, 8(sp)
	sw	a7, 12(sp)
	sw	a6, 16(sp)
	sw	a5, 20(sp)
	sw	a4, 24(sp)
	sw	a3, 28(sp)
	sw	a2, 32(sp)
	sw	a1, 36(sp)
	sw	a0, 40(sp)
	call	quadratic.2610
	lw	a0, 40(sp)
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 24(sp)
	lw	a5, 20(sp)
	lw	a6, 16(sp)
	lw	a7, 12(sp)
	lw	s1, 8(sp)
	lw	s2, 4(sp)
	lw	s3, 0(sp)
	fsw	fa0, 48(sp)
	call	o_form.2470
	li	a1, 3
	bne	a0, a1, beq_else.11187
	fli	fa0, l.7008
	flw	fa1, 48(sp)
	fsub.s	fa0, fa1, fa0
	b	beq_cont.11188
beq_else.11187:
	flw	fa0, 48(sp)
beq_cont.11188:
	lw	a0, 40(sp)
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 24(sp)
	lw	a5, 20(sp)
	lw	a6, 16(sp)
	lw	a7, 12(sp)
	lw	s1, 8(sp)
	lw	s2, 4(sp)
	lw	s3, 0(sp)
	fsw	fa0, 56(sp)
	call	o_isinvert.2474
	flw	fa0, 56(sp)
	sw	a0, 64(sp)
	call	fisneg.2404
	mv	a1, a0
	lw	a0, 64(sp)
	call	xor.2419
	li	a1, 0
	bne	a0, a1, beq_else.11189
	li	a0, 1
	b	is_second_outside.2721_ret
beq_else.11189:
	li	a0, 0
	b	is_second_outside.2721_ret
is_second_outside.2721_ret:
	lw	ra, 76(sp)
	lw	fp, 72(sp)
	addi	sp, sp, 80
	jr	ra
is_outside.2726:
	addi	sp, sp, -108
	sw	ra, 104(sp)
	sw	fp, 100(sp)
	addi	fp, sp, 108
	fsw	fa2, 0(sp)
	fsw	fa1, 8(sp)
	sw	s3, 16(sp)
	sw	s2, 20(sp)
	sw	s1, 24(sp)
	sw	a7, 28(sp)
	sw	a6, 32(sp)
	sw	a5, 36(sp)
	sw	a4, 40(sp)
	sw	a3, 44(sp)
	sw	a2, 48(sp)
	sw	a1, 52(sp)
	sw	a0, 56(sp)
	fsw	fa0, 64(sp)
	call	o_param_x.2486
	flw	fa1, 64(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 56(sp)
	lw	a1, 52(sp)
	lw	a2, 48(sp)
	lw	a3, 44(sp)
	lw	a4, 40(sp)
	lw	a5, 36(sp)
	lw	a6, 32(sp)
	lw	a7, 28(sp)
	lw	s1, 24(sp)
	lw	s2, 20(sp)
	lw	s3, 16(sp)
	fsw	fa0, 72(sp)
	call	o_param_y.2488
	flw	fa1, 8(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 56(sp)
	lw	a1, 52(sp)
	lw	a2, 48(sp)
	lw	a3, 44(sp)
	lw	a4, 40(sp)
	lw	a5, 36(sp)
	lw	a6, 32(sp)
	lw	a7, 28(sp)
	lw	s1, 24(sp)
	lw	s2, 20(sp)
	lw	s3, 16(sp)
	fsw	fa0, 80(sp)
	call	o_param_z.2490
	flw	fa1, 0(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 56(sp)
	lw	a1, 52(sp)
	lw	a2, 48(sp)
	lw	a3, 44(sp)
	lw	a4, 40(sp)
	lw	a5, 36(sp)
	lw	a6, 32(sp)
	lw	a7, 28(sp)
	lw	s1, 24(sp)
	lw	s2, 20(sp)
	lw	s3, 16(sp)
	fsw	fa0, 88(sp)
	call	o_form.2470
	li	a1, 1
	bne	a0, a1, beq_else.11191
	flw	fa0, 72(sp)
	flw	fa1, 80(sp)
	flw	fa2, 88(sp)
	lw	a0, 56(sp)
	lw	a1, 52(sp)
	lw	a2, 48(sp)
	lw	a3, 44(sp)
	lw	a4, 40(sp)
	lw	a5, 36(sp)
	lw	a6, 32(sp)
	lw	a7, 28(sp)
	lw	s1, 24(sp)
	lw	s2, 20(sp)
	lw	s3, 16(sp)
	call	is_rect_outside.2711
	b	is_outside.2726_ret
beq_else.11191:
	li	a1, 2
	bne	a0, a1, beq_else.11192
	flw	fa0, 72(sp)
	flw	fa1, 80(sp)
	flw	fa2, 88(sp)
	lw	a0, 56(sp)
	lw	a1, 52(sp)
	lw	a2, 48(sp)
	lw	a3, 44(sp)
	lw	a4, 40(sp)
	lw	a5, 36(sp)
	lw	a6, 32(sp)
	lw	a7, 28(sp)
	lw	s1, 24(sp)
	lw	s2, 20(sp)
	lw	s3, 16(sp)
	call	is_plane_outside.2716
	b	is_outside.2726_ret
beq_else.11192:
	flw	fa0, 72(sp)
	flw	fa1, 80(sp)
	flw	fa2, 88(sp)
	lw	a0, 56(sp)
	lw	a1, 52(sp)
	lw	a2, 48(sp)
	lw	a3, 44(sp)
	lw	a4, 40(sp)
	lw	a5, 36(sp)
	lw	a6, 32(sp)
	lw	a7, 28(sp)
	lw	s1, 24(sp)
	lw	s2, 20(sp)
	lw	s3, 16(sp)
	call	is_second_outside.2721
	b	is_outside.2726_ret
is_outside.2726_ret:
	lw	ra, 104(sp)
	lw	fp, 100(sp)
	addi	sp, sp, 108
	jr	ra
check_all_inside.2731:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	li	a4, -1
	bne	a3, a4, beq_else.11193
	li	a0, 1
	b	check_all_inside.2731_ret
beq_else.11193:
	slli	a3, a3, 2
	add	t6, a2, a3
	lw	a3, 0(t6)
	fsw	fa2, 0(sp)
	fsw	fa1, 8(sp)
	fsw	fa0, 16(sp)
	sw	a2, 24(sp)
	sw	a1, 28(sp)
	sw	a0, 32(sp)
	mv	a0, a3
	call	is_outside.2726
	li	a1, 0
	bne	a0, a1, beq_else.11194
	lw	a0, 32(sp)
	addi	a0, a0, 1
	flw	fa0, 16(sp)
	flw	fa1, 8(sp)
	flw	fa2, 0(sp)
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	call	check_all_inside.2731
	b	check_all_inside.2731_ret
beq_else.11194:
	li	a0, 0
	b	check_all_inside.2731_ret
check_all_inside.2731_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
shadow_check_and_group.2738:
	addi	sp, sp, -60
	sw	ra, 56(sp)
	sw	fp, 52(sp)
	addi	fp, sp, 60
	slli	s1, a0, 2
	add	t6, a1, s1
	lw	s1, 0(t6)
	li	s2, -1
	bne	s1, s2, beq_else.11195
	li	a0, 0
	b	shadow_check_and_group.2738_ret
beq_else.11195:
	slli	s1, a0, 2
	add	t6, a1, s1
	lw	s1, 0(t6)
	sw	a5, 0(sp)
	sw	a4, 4(sp)
	sw	a3, 8(sp)
	sw	a2, 12(sp)
	sw	a1, 16(sp)
	sw	a0, 20(sp)
	sw	a6, 24(sp)
	sw	s1, 28(sp)
	sw	a7, 32(sp)
	mv	a3, a2
	mv	a1, a4
	mv	a0, s1
	mv	a4, a6
	mv	a2, a5
	mv	a5, a7
	call	solver_fast.2658
	li	a1, 0
	lw	a2, 32(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	li	a1, 0
	fsw	fa0, 40(sp)
	bne	a0, a1, beq_else.11197
	li	a0, 0
	b	beq_cont.11198
beq_else.11197:
	fli	fa1, l.7324
	call	fless.2412
beq_cont.11198:
	li	a1, 0
	bne	a0, a1, beq_else.11199
	lw	a0, 28(sp)
	slli	a0, a0, 2
	lw	a1, 24(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	call	o_isinvert.2474
	li	a1, 0
	bne	a0, a1, beq_else.11200
	li	a0, 0
	b	shadow_check_and_group.2738_ret
beq_else.11200:
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 16(sp)
	lw	a2, 12(sp)
	lw	a3, 8(sp)
	lw	a4, 4(sp)
	lw	a5, 0(sp)
	lw	a6, 24(sp)
	lw	a7, 32(sp)
	call	shadow_check_and_group.2738
	b	shadow_check_and_group.2738_ret
beq_else.11199:
	fli	fa0, l.7325
	flw	fa1, 40(sp)
	fadd.s	fa0, fa1, fa0
	li	a0, 0
	lw	a1, 8(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa1, fa1, fa0
	li	a0, 0
	lw	a2, 12(sp)
	add	t6, a2, a0
	flw	fa2, 0(t6)
	fadd.s	fa1, fa1, fa2
	li	a0, 4
	add	t6, a1, a0
	flw	fa2, 0(t6)
	fmul.s	fa2, fa2, fa0
	li	a0, 4
	add	t6, a2, a0
	flw	fa3, 0(t6)
	fadd.s	fa2, fa2, fa3
	li	a0, 8
	add	t6, a1, a0
	flw	fa3, 0(t6)
	fmul.s	fa0, fa3, fa0
	li	a0, 8
	add	t6, a2, a0
	flw	fa3, 0(t6)
	fadd.s	fa0, fa0, fa3
	li	a0, 0
	lw	a3, 16(sp)
	lw	a4, 24(sp)
	mv	a2, a4
	mv	a1, a3
	mv	a3, a4
	fmv.s	ft11, fa2
	fmv.s	fa2, fa0
	fmv.s	fa0, fa1
	fmv.s	fa1, ft11
	call	check_all_inside.2731
	li	a1, 0
	bne	a0, a1, beq_else.11201
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 16(sp)
	lw	a2, 12(sp)
	lw	a3, 8(sp)
	lw	a4, 4(sp)
	lw	a5, 0(sp)
	lw	a6, 24(sp)
	lw	a7, 32(sp)
	call	shadow_check_and_group.2738
	b	shadow_check_and_group.2738_ret
beq_else.11201:
	li	a0, 1
	b	shadow_check_and_group.2738_ret
shadow_check_and_group.2738_ret:
	lw	ra, 56(sp)
	lw	fp, 52(sp)
	addi	sp, sp, 60
	jr	ra
shadow_check_one_or_group.2746:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	slli	s2, a0, 2
	add	t6, a1, s2
	lw	s2, 0(t6)
	li	s3, -1
	bne	s2, s3, beq_else.11202
	li	a0, 0
	b	shadow_check_one_or_group.2746_ret
beq_else.11202:
	slli	s2, s2, 2
	add	t6, a2, s2
	lw	s2, 0(t6)
	li	s3, 0
	sw	s1, 0(sp)
	sw	a7, 4(sp)
	sw	a6, 8(sp)
	sw	a5, 12(sp)
	sw	a4, 16(sp)
	sw	a3, 20(sp)
	sw	a2, 24(sp)
	sw	a1, 28(sp)
	sw	a0, 32(sp)
	mv	s6, s1
	mv	s5, a7
	mv	s4, a6
	mv	a2, a3
	mv	a1, s2
	mv	a0, s3
	mv	s3, a5
	mv	s2, a4
	mv	t5, s1
	mv	s1, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, t5
	call	shadow_check_and_group.2738
	li	a1, 0
	bne	a0, a1, beq_else.11203
	lw	a0, 32(sp)
	addi	a0, a0, 1
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	lw	a3, 20(sp)
	lw	a4, 16(sp)
	lw	a5, 12(sp)
	lw	a6, 8(sp)
	lw	a7, 4(sp)
	lw	s1, 0(sp)
	call	shadow_check_one_or_group.2746
	b	shadow_check_one_or_group.2746_ret
beq_else.11203:
	li	a0, 1
	b	shadow_check_one_or_group.2746_ret
shadow_check_one_or_group.2746_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
shadow_check_one_or_matrix.2755:
	addi	sp, sp, -52
	sw	ra, 48(sp)
	sw	fp, 44(sp)
	addi	fp, sp, 52
	slli	s2, a0, 2
	add	t6, a1, s2
	lw	s2, 0(t6)
	li	s3, 0
	add	t6, s2, s3
	lw	s3, 0(t6)
	li	s4, -1
	bne	s3, s4, beq_else.11204
	li	a0, 0
	b	shadow_check_one_or_matrix.2755_ret
beq_else.11204:
	li	s4, 99
	sw	s2, 0(sp)
	sw	s1, 4(sp)
	sw	a7, 8(sp)
	sw	a6, 12(sp)
	sw	a5, 16(sp)
	sw	a4, 20(sp)
	sw	a3, 24(sp)
	sw	a2, 28(sp)
	sw	a1, 32(sp)
	sw	a0, 36(sp)
	bne	s3, s4, beq_else.11205
	li	a0, 1
	b	beq_cont.11206
beq_else.11205:
	mv	a4, a7
	mv	a2, a6
	mv	a1, a5
	mv	a0, s3
	mv	a6, a7
	mv	a5, s1
	mv	a7, s1
	call	solver_fast.2658
	li	a1, 0
	bne	a0, a1, beq_else.11207
	li	a0, 0
	b	beq_cont.11208
beq_else.11207:
	li	a0, 0
	lw	a1, 4(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	fli	fa1, l.7338
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11209
	li	a0, 0
	b	beq_cont.11210
beq_else.11209:
	li	a0, 1
	lw	a1, 0(sp)
	lw	a2, 28(sp)
	lw	a3, 24(sp)
	lw	a4, 20(sp)
	lw	a5, 16(sp)
	lw	a6, 12(sp)
	lw	a7, 8(sp)
	lw	s1, 4(sp)
	mv	s8, s1
	mv	s7, a7
	mv	s6, a6
	mv	s5, a5
	mv	s4, a4
	mv	s3, a3
	mv	s2, a2
	call	shadow_check_one_or_group.2746
	li	a1, 0
	bne	a0, a1, beq_else.11211
	li	a0, 0
	b	beq_cont.11212
beq_else.11211:
	li	a0, 1
beq_cont.11212:
beq_cont.11210:
beq_cont.11208:
beq_cont.11206:
	li	a1, 0
	bne	a0, a1, beq_else.11213
	lw	a0, 36(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	a3, 24(sp)
	lw	a4, 20(sp)
	lw	a5, 16(sp)
	lw	a6, 12(sp)
	lw	a7, 8(sp)
	lw	s1, 4(sp)
	call	shadow_check_one_or_matrix.2755
	b	shadow_check_one_or_matrix.2755_ret
beq_else.11213:
	li	a0, 1
	lw	a1, 0(sp)
	lw	a2, 28(sp)
	lw	a3, 24(sp)
	lw	a4, 20(sp)
	lw	a5, 16(sp)
	lw	a6, 12(sp)
	lw	a7, 8(sp)
	lw	s1, 4(sp)
	mv	s8, s1
	mv	s7, a7
	mv	s6, a6
	mv	s5, a5
	mv	s4, a4
	mv	s3, a3
	mv	s2, a2
	call	shadow_check_one_or_group.2746
	li	a1, 0
	bne	a0, a1, beq_else.11214
	lw	a0, 36(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	a3, 24(sp)
	lw	a4, 20(sp)
	lw	a5, 16(sp)
	lw	a6, 12(sp)
	lw	a7, 8(sp)
	lw	s1, 4(sp)
	call	shadow_check_one_or_matrix.2755
	b	shadow_check_one_or_matrix.2755_ret
beq_else.11214:
	li	a0, 1
	b	shadow_check_one_or_matrix.2755_ret
shadow_check_one_or_matrix.2755_ret:
	lw	ra, 48(sp)
	lw	fp, 44(sp)
	addi	sp, sp, 52
	jr	ra
solve_each_element.2764:
	addi	sp, sp, -100
	sw	ra, 96(sp)
	sw	fp, 92(sp)
	addi	fp, sp, 100
	slli	s3, a0, 2
	add	t6, a1, s3
	lw	s3, 0(t6)
	li	s4, -1
	bne	s3, s4, beq_else.11215
	b	solve_each_element.2764_ret
beq_else.11215:
	sw	s2, 0(sp)
	sw	s1, 4(sp)
	sw	a7, 8(sp)
	sw	a5, 12(sp)
	sw	a4, 16(sp)
	sw	a3, 20(sp)
	sw	a2, 24(sp)
	sw	a1, 28(sp)
	sw	a0, 32(sp)
	sw	a6, 36(sp)
	sw	s3, 40(sp)
	mv	a5, a6
	mv	a4, a7
	mv	a3, a6
	mv	a1, a2
	mv	a0, s3
	mv	a6, a7
	mv	a2, s1
	call	solver.2630
	li	a1, 0
	bne	a0, a1, beq_else.11217
	lw	a0, 40(sp)
	slli	a0, a0, 2
	lw	a1, 36(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	call	o_isinvert.2474
	li	a1, 0
	bne	a0, a1, beq_else.11218
	b	solve_each_element.2764_ret
beq_else.11218:
	lw	a0, 32(sp)
	addi	a0, a0, 1
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	lw	a3, 20(sp)
	lw	a4, 16(sp)
	lw	a5, 12(sp)
	lw	a6, 36(sp)
	lw	a7, 8(sp)
	lw	s1, 4(sp)
	lw	s2, 0(sp)
	call	solve_each_element.2764
	b	solve_each_element.2764_ret
beq_else.11217:
	li	a1, 0
	lw	a2, 8(sp)
	add	t6, a2, a1
	flw	fa1, 0(t6)
	fli	fa0, l.7005
	sw	a0, 44(sp)
	fsw	fa1, 48(sp)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11220
	b	beq_cont.11221
beq_else.11220:
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	flw	fa0, 48(sp)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11222
	b	beq_cont.11223
beq_else.11222:
	fli	fa0, l.7325
	flw	fa1, 48(sp)
	fadd.s	fa0, fa1, fa0
	li	a0, 0
	lw	a1, 24(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa1, fa1, fa0
	li	a0, 0
	lw	a2, 4(sp)
	add	t6, a2, a0
	flw	fa2, 0(t6)
	fadd.s	fa1, fa1, fa2
	li	a0, 4
	add	t6, a1, a0
	flw	fa2, 0(t6)
	fmul.s	fa2, fa2, fa0
	li	a0, 4
	add	t6, a2, a0
	flw	fa3, 0(t6)
	fadd.s	fa2, fa2, fa3
	li	a0, 8
	add	t6, a1, a0
	flw	fa3, 0(t6)
	fmul.s	fa3, fa3, fa0
	li	a0, 8
	add	t6, a2, a0
	flw	fa4, 0(t6)
	fadd.s	fa3, fa3, fa4
	li	a0, 0
	lw	a3, 28(sp)
	lw	a4, 36(sp)
	fsw	fa3, 56(sp)
	fsw	fa2, 64(sp)
	fsw	fa1, 72(sp)
	fsw	fa0, 80(sp)
	mv	a2, a4
	mv	a1, a3
	mv	a3, a4
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	call	check_all_inside.2731
	li	a1, 0
	bne	a0, a1, beq_else.11224
	b	beq_cont.11225
beq_else.11224:
	li	a0, 0
	lw	a1, 0(sp)
	flw	fa0, 80(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	flw	fa0, 72(sp)
	flw	fa1, 64(sp)
	flw	fa2, 56(sp)
	lw	a0, 16(sp)
	call	vecset.2430
	li	a0, 0
	lw	a3, 20(sp)
	lw	a1, 40(sp)
	add	t6, a3, a0
	sw	a1, 0(t6)
	li	a0, 0
	lw	a5, 12(sp)
	lw	a1, 44(sp)
	add	t6, a5, a0
	sw	a1, 0(t6)
beq_cont.11225:
beq_cont.11223:
beq_cont.11221:
	lw	a0, 32(sp)
	addi	a0, a0, 1
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	lw	a3, 20(sp)
	lw	a4, 16(sp)
	lw	a5, 12(sp)
	lw	a6, 36(sp)
	lw	a7, 8(sp)
	lw	s1, 4(sp)
	lw	s2, 0(sp)
	call	solve_each_element.2764
	b	solve_each_element.2764_ret
solve_each_element.2764_ret:
	lw	ra, 96(sp)
	lw	fp, 92(sp)
	addi	sp, sp, 100
	jr	ra
solve_one_or_network.2775:
	addi	sp, sp, -56
	sw	ra, 52(sp)
	sw	fp, 48(sp)
	addi	fp, sp, 56
	slli	s4, a0, 2
	add	t6, a1, s4
	lw	s4, 0(t6)
	li	s5, -1
	bne	s4, s5, beq_else.11226
	b	solve_one_or_network.2775_ret
beq_else.11226:
	slli	s4, s4, 2
	add	t6, a3, s4
	lw	s4, 0(t6)
	li	s5, 0
	sw	s3, 0(sp)
	sw	s2, 4(sp)
	sw	s1, 8(sp)
	sw	a7, 12(sp)
	sw	a6, 16(sp)
	sw	a5, 20(sp)
	sw	a4, 24(sp)
	sw	a3, 28(sp)
	sw	a2, 32(sp)
	sw	a1, 36(sp)
	sw	a0, 40(sp)
	mv	s9, s3
	mv	s8, s2
	mv	s7, s1
	mv	s6, a7
	mv	a3, a4
	mv	a1, s4
	mv	a0, s5
	mv	s5, a6
	mv	s4, a5
	mv	t5, s3
	mv	s3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, t5
	call	solve_each_element.2764
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 24(sp)
	lw	a5, 20(sp)
	lw	a6, 16(sp)
	lw	a7, 12(sp)
	lw	s1, 8(sp)
	lw	s2, 4(sp)
	lw	s3, 0(sp)
	call	solve_one_or_network.2775
	b	solve_one_or_network.2775_ret
solve_one_or_network.2775_ret:
	lw	ra, 52(sp)
	lw	fp, 48(sp)
	addi	sp, sp, 56
	jr	ra
trace_or_matrix.2787:
	addi	sp, sp, -60
	sw	ra, 56(sp)
	sw	fp, 52(sp)
	addi	fp, sp, 60
	slli	s4, a0, 2
	add	t6, a1, s4
	lw	s4, 0(t6)
	li	s5, 0
	add	t6, s4, s5
	lw	s5, 0(t6)
	li	s6, -1
	bne	s5, s6, beq_else.11228
	b	trace_or_matrix.2787_ret
beq_else.11228:
	li	s6, 99
	sw	s3, 0(sp)
	sw	s2, 4(sp)
	sw	s1, 8(sp)
	sw	a7, 12(sp)
	sw	a6, 16(sp)
	sw	a5, 20(sp)
	sw	a4, 24(sp)
	sw	a3, 28(sp)
	sw	a2, 32(sp)
	sw	a1, 36(sp)
	sw	a0, 40(sp)
	bne	s5, s6, beq_else.11230
	li	s5, 1
	mv	s11, s3
	mv	s10, s2
	mv	s9, s1
	mv	s8, a7
	mv	s7, a6
	mv	s6, a5
	mv	a1, s4
	mv	a0, s5
	mv	s5, a4
	mv	s4, a3
	call	solve_one_or_network.2775
	b	beq_cont.11231
beq_else.11230:
	sw	s4, 44(sp)
	mv	a6, s1
	mv	a5, a7
	mv	a4, s1
	mv	a3, a7
	mv	a1, a2
	mv	a0, s5
	mv	a2, s2
	call	solver.2630
	li	a1, 0
	bne	a0, a1, beq_else.11232
	b	beq_cont.11233
beq_else.11232:
	li	a0, 0
	lw	a1, 8(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	li	a0, 0
	lw	a2, 0(sp)
	add	t6, a2, a0
	flw	fa1, 0(t6)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11234
	b	beq_cont.11235
beq_else.11234:
	li	a0, 1
	lw	a1, 44(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 24(sp)
	lw	a5, 20(sp)
	lw	a6, 16(sp)
	lw	a7, 12(sp)
	lw	s1, 8(sp)
	lw	s2, 4(sp)
	lw	s3, 0(sp)
	mv	s11, s3
	mv	s10, s2
	mv	s9, s1
	mv	s8, a7
	mv	s7, a6
	mv	s6, a5
	mv	s5, a4
	mv	s4, a3
	call	solve_one_or_network.2775
beq_cont.11235:
beq_cont.11233:
beq_cont.11231:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 24(sp)
	lw	a5, 20(sp)
	lw	a6, 16(sp)
	lw	a7, 12(sp)
	lw	s1, 8(sp)
	lw	s2, 4(sp)
	lw	s3, 0(sp)
	call	trace_or_matrix.2787
	b	trace_or_matrix.2787_ret
trace_or_matrix.2787_ret:
	lw	ra, 56(sp)
	lw	fp, 52(sp)
	addi	sp, sp, 60
	jr	ra
judge_intersection.2799:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	fli	fa0, l.7358
	li	s3, 0
	add	t6, s2, s3
	fsw	fa0, 0(t6)
	li	s3, 0
	li	s4, 0
	add	t6, a6, s4
	lw	a6, 0(t6)
	sw	s2, 0(sp)
	mv	s11, s2
	mv	s10, s1
	mv	s9, a7
	mv	s8, a5
	mv	s7, a4
	mv	s6, a3
	mv	s5, a2
	mv	s4, a1
	mv	t5, s3
	mv	s3, s2
	mv	s2, s1
	mv	s1, a7
	mv	a7, a5
	mv	a5, a3
	mv	a3, a1
	mv	a1, a6
	mv	a6, a4
	mv	a4, a2
	mv	a2, a0
	mv	a0, t5
	call	trace_or_matrix.2787
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fli	fa0, l.7338
	fsw	fa1, 8(sp)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11237
	li	a0, 0
	b	judge_intersection.2799_ret
beq_else.11237:
	fli	fa1, l.7362
	flw	fa0, 8(sp)
	call	fless.2412
	b	judge_intersection.2799_ret
judge_intersection.2799_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
solve_each_element_fast.2810:
	addi	sp, sp, -108
	sw	ra, 104(sp)
	sw	fp, 100(sp)
	addi	fp, sp, 108
	sw	s3, 0(sp)
	sw	s2, 4(sp)
	sw	a6, 8(sp)
	sw	a5, 12(sp)
	sw	a4, 16(sp)
	sw	s1, 20(sp)
	sw	a7, 24(sp)
	sw	a3, 28(sp)
	sw	a2, 32(sp)
	sw	a1, 36(sp)
	sw	a0, 40(sp)
	mv	a1, a3
	mv	a0, a2
	call	d_vec.2529
	lw	a1, 40(sp)
	slli	a2, a1, 2
	lw	a3, 36(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	li	a4, -1
	bne	a2, a4, beq_else.11238
	b	solve_each_element_fast.2810_ret
beq_else.11238:
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	sw	a0, 44(sp)
	sw	a2, 48(sp)
	mv	a3, a6
	mv	a1, a4
	mv	a0, a2
	mv	a4, a7
	mv	a2, a5
	mv	a5, a6
	mv	a6, a7
	call	solver_fast2.2680
	li	a1, 0
	bne	a0, a1, beq_else.11240
	lw	a0, 48(sp)
	slli	a0, a0, 2
	lw	a1, 24(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	call	o_isinvert.2474
	li	a1, 0
	bne	a0, a1, beq_else.11241
	b	solve_each_element_fast.2810_ret
beq_else.11241:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 16(sp)
	lw	a5, 12(sp)
	lw	a6, 8(sp)
	lw	a7, 24(sp)
	lw	s1, 20(sp)
	lw	s2, 4(sp)
	lw	s3, 0(sp)
	call	solve_each_element_fast.2810
	b	solve_each_element_fast.2810_ret
beq_else.11240:
	li	a1, 0
	lw	a2, 20(sp)
	add	t6, a2, a1
	flw	fa1, 0(t6)
	fli	fa0, l.7005
	sw	a0, 52(sp)
	fsw	fa1, 56(sp)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11243
	b	beq_cont.11244
beq_else.11243:
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	flw	fa0, 56(sp)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11245
	b	beq_cont.11246
beq_else.11245:
	fli	fa0, l.7325
	flw	fa1, 56(sp)
	fadd.s	fa0, fa1, fa0
	li	a0, 0
	lw	a1, 44(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa1, fa1, fa0
	li	a0, 0
	lw	a2, 4(sp)
	add	t6, a2, a0
	flw	fa2, 0(t6)
	fadd.s	fa1, fa1, fa2
	li	a0, 4
	add	t6, a1, a0
	flw	fa2, 0(t6)
	fmul.s	fa2, fa2, fa0
	li	a0, 4
	add	t6, a2, a0
	flw	fa3, 0(t6)
	fadd.s	fa2, fa2, fa3
	li	a0, 8
	add	t6, a1, a0
	flw	fa3, 0(t6)
	fmul.s	fa3, fa3, fa0
	li	a0, 8
	add	t6, a2, a0
	flw	fa4, 0(t6)
	fadd.s	fa3, fa3, fa4
	li	a0, 0
	lw	a1, 36(sp)
	lw	a3, 24(sp)
	fsw	fa3, 64(sp)
	fsw	fa2, 72(sp)
	fsw	fa1, 80(sp)
	fsw	fa0, 88(sp)
	mv	a2, a3
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	call	check_all_inside.2731
	li	a1, 0
	bne	a0, a1, beq_else.11247
	b	beq_cont.11248
beq_else.11247:
	li	a0, 0
	lw	a1, 0(sp)
	flw	fa0, 88(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	flw	fa0, 80(sp)
	flw	fa1, 72(sp)
	flw	fa2, 64(sp)
	lw	a0, 12(sp)
	call	vecset.2430
	li	a0, 0
	lw	a4, 16(sp)
	lw	a1, 48(sp)
	add	t6, a4, a0
	sw	a1, 0(t6)
	li	a0, 0
	lw	a6, 8(sp)
	lw	a1, 52(sp)
	add	t6, a6, a0
	sw	a1, 0(t6)
beq_cont.11248:
beq_cont.11246:
beq_cont.11244:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 16(sp)
	lw	a5, 12(sp)
	lw	a6, 8(sp)
	lw	a7, 24(sp)
	lw	s1, 20(sp)
	lw	s2, 4(sp)
	lw	s3, 0(sp)
	call	solve_each_element_fast.2810
	b	solve_each_element_fast.2810_ret
solve_each_element_fast.2810_ret:
	lw	ra, 104(sp)
	lw	fp, 100(sp)
	addi	sp, sp, 108
	jr	ra
solve_one_or_network_fast.2821:
	addi	sp, sp, -60
	sw	ra, 56(sp)
	sw	fp, 52(sp)
	addi	fp, sp, 60
	slli	s5, a0, 2
	add	t6, a1, s5
	lw	s5, 0(t6)
	li	s6, -1
	bne	s5, s6, beq_else.11249
	b	solve_one_or_network_fast.2821_ret
beq_else.11249:
	slli	s5, s5, 2
	add	t6, a4, s5
	lw	s5, 0(t6)
	li	s6, 0
	sw	s4, 0(sp)
	sw	s3, 4(sp)
	sw	s2, 8(sp)
	sw	s1, 12(sp)
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a5, 24(sp)
	sw	a4, 28(sp)
	sw	a3, 32(sp)
	sw	a2, 36(sp)
	sw	a1, 40(sp)
	sw	a0, 44(sp)
	mv	s10, s4
	mv	s9, s3
	mv	s8, s2
	mv	s7, s1
	mv	a4, a5
	mv	a1, s5
	mv	a0, s6
	mv	s6, a7
	mv	s5, a6
	mv	t5, s4
	mv	s4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, t5
	call	solve_each_element_fast.2810
	lw	a0, 44(sp)
	addi	a0, a0, 1
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	call	solve_one_or_network_fast.2821
	b	solve_one_or_network_fast.2821_ret
solve_one_or_network_fast.2821_ret:
	lw	ra, 56(sp)
	lw	fp, 52(sp)
	addi	sp, sp, 60
	jr	ra
trace_or_matrix_fast.2833:
	addi	sp, sp, -64
	sw	ra, 60(sp)
	sw	fp, 56(sp)
	addi	fp, sp, 64
	slli	s5, a0, 2
	add	t6, a1, s5
	lw	s5, 0(t6)
	li	s6, 0
	add	t6, s5, s6
	lw	s6, 0(t6)
	li	s7, -1
	bne	s6, s7, beq_else.11251
	b	trace_or_matrix_fast.2833_ret
beq_else.11251:
	li	s7, 99
	sw	s4, 0(sp)
	sw	s3, 4(sp)
	sw	s2, 8(sp)
	sw	s1, 12(sp)
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a5, 24(sp)
	sw	a4, 28(sp)
	sw	a3, 32(sp)
	sw	a2, 36(sp)
	sw	a1, 40(sp)
	sw	a0, 44(sp)
	bne	s6, s7, beq_else.11253
	li	s6, 1
	mv	t0, s4
	mv	s11, s3
	mv	s10, s2
	mv	s9, s1
	mv	s8, a7
	mv	s7, a6
	mv	a1, s5
	mv	a0, s6
	mv	s6, a5
	mv	s5, a4
	call	solve_one_or_network_fast.2821
	b	beq_cont.11254
beq_else.11253:
	sw	s5, 48(sp)
	mv	a6, s2
	mv	a5, s1
	mv	a4, s2
	mv	a1, a2
	mv	a0, s6
	mv	a2, a3
	mv	a3, s1
	call	solver_fast2.2680
	li	a1, 0
	bne	a0, a1, beq_else.11255
	b	beq_cont.11256
beq_else.11255:
	li	a0, 0
	lw	a1, 8(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	li	a0, 0
	lw	a2, 0(sp)
	add	t6, a2, a0
	flw	fa1, 0(t6)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11257
	b	beq_cont.11258
beq_else.11257:
	li	a0, 1
	lw	a1, 48(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	mv	t0, s4
	mv	s11, s3
	mv	s10, s2
	mv	s9, s1
	mv	s8, a7
	mv	s7, a6
	mv	s6, a5
	mv	s5, a4
	call	solve_one_or_network_fast.2821
beq_cont.11258:
beq_cont.11256:
beq_cont.11254:
	lw	a0, 44(sp)
	addi	a0, a0, 1
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	call	trace_or_matrix_fast.2833
	b	trace_or_matrix_fast.2833_ret
trace_or_matrix_fast.2833_ret:
	lw	ra, 60(sp)
	lw	fp, 56(sp)
	addi	sp, sp, 64
	jr	ra
judge_intersection_fast.2845:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	fli	fa0, l.7358
	li	s4, 0
	add	t6, s3, s4
	fsw	fa0, 0(t6)
	li	s4, 0
	li	s5, 0
	add	t6, a7, s5
	lw	a7, 0(t6)
	sw	s3, 0(sp)
	mv	t0, s3
	mv	s11, s2
	mv	s10, s1
	mv	s9, a6
	mv	s8, a5
	mv	s7, a4
	mv	s6, a3
	mv	s5, a2
	mv	t5, s4
	mv	s4, s3
	mv	s3, s2
	mv	s2, s1
	mv	s1, a6
	mv	a6, a4
	mv	a4, a2
	mv	a2, a0
	mv	a0, t5
	mv	t5, a7
	mv	a7, a5
	mv	a5, a3
	mv	a3, a1
	mv	a1, t5
	call	trace_or_matrix_fast.2833
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fli	fa0, l.7338
	fsw	fa1, 8(sp)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11260
	li	a0, 0
	b	judge_intersection_fast.2845_ret
beq_else.11260:
	fli	fa1, l.7362
	flw	fa0, 8(sp)
	call	fless.2412
	b	judge_intersection_fast.2845_ret
judge_intersection_fast.2845_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
get_nvector_rect.2856:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	li	a3, 0
	add	t6, a1, a3
	lw	a1, 0(t6)
	sw	a2, 0(sp)
	sw	a0, 4(sp)
	sw	a1, 8(sp)
	mv	a0, a2
	call	vecbzero.2438
	lw	a0, 8(sp)
	addi	a1, a0, -1
	addi	a0, a0, -1
	slli	a0, a0, 2
	lw	a2, 4(sp)
	add	t6, a2, a0
	flw	fa0, 0(t6)
	sw	a1, 12(sp)
	call	sgn.2422
	call	fneg.2408
	lw	a0, 12(sp)
	slli	a0, a0, 2
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	get_nvector_rect.2856_ret
get_nvector_rect.2856_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
get_nvector_plane.2860:
	addi	sp, sp, -60
	sw	ra, 56(sp)
	sw	fp, 52(sp)
	addi	fp, sp, 60
	sw	s3, 0(sp)
	sw	s2, 4(sp)
	sw	s1, 8(sp)
	sw	a7, 12(sp)
	sw	a6, 16(sp)
	sw	a5, 20(sp)
	sw	a4, 24(sp)
	sw	a3, 28(sp)
	sw	a2, 32(sp)
	sw	a1, 36(sp)
	sw	a0, 40(sp)
	sw	s4, 44(sp)
	call	o_param_a.2478
	call	fneg.2408
	li	a0, 0
	lw	a1, 44(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	lw	a0, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_b.2480
	call	fneg.2408
	li	a0, 4
	lw	a1, 44(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	lw	a0, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_c.2482
	call	fneg.2408
	li	a0, 8
	lw	a1, 44(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	get_nvector_plane.2860_ret
get_nvector_plane.2860_ret:
	lw	ra, 56(sp)
	lw	fp, 52(sp)
	addi	sp, sp, 60
	jr	ra
get_nvector_second.2863:
	addi	sp, sp, -164
	sw	ra, 160(sp)
	sw	fp, 156(sp)
	addi	fp, sp, 164
	li	s6, 0
	add	t6, s4, s6
	flw	fa0, 0(t6)
	sw	s5, 0(sp)
	sw	s3, 4(sp)
	sw	s2, 8(sp)
	sw	s1, 12(sp)
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a5, 24(sp)
	sw	a4, 28(sp)
	sw	a3, 32(sp)
	sw	a2, 36(sp)
	sw	a1, 40(sp)
	sw	a0, 44(sp)
	sw	s4, 48(sp)
	fsw	fa0, 56(sp)
	call	o_param_x.2486
	flw	fa1, 56(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 4
	lw	a1, 48(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 44(sp)
	lw	a2, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	s1, 16(sp)
	lw	s2, 12(sp)
	lw	s3, 8(sp)
	lw	s4, 4(sp)
	fsw	fa0, 64(sp)
	fsw	fa1, 72(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_y.2488
	flw	fa1, 72(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 8
	lw	a1, 48(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	fsw	fa0, 80(sp)
	fsw	fa1, 88(sp)
	call	o_param_z.2490
	flw	fa1, 88(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	fsw	fa0, 96(sp)
	call	o_param_a.2478
	flw	fa1, 64(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	fsw	fa0, 104(sp)
	call	o_param_b.2480
	flw	fa1, 80(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	fsw	fa0, 112(sp)
	call	o_param_c.2482
	flw	fa1, 96(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	fsw	fa0, 120(sp)
	call	o_isrot.2476
	li	a1, 0
	bne	a0, a1, beq_else.11264
	li	a0, 0
	lw	a1, 0(sp)
	flw	fa0, 104(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 4
	flw	fa0, 112(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 8
	flw	fa0, 120(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.11265
beq_else.11264:
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	call	o_param_r3.2506
	flw	fa1, 80(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	fsw	fa0, 128(sp)
	call	o_param_r2.2504
	flw	fa1, 96(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa2, 128(sp)
	fadd.s	fa0, fa2, fa0
	call	fhalf.2417
	flw	fa1, 104(sp)
	fadd.s	fa0, fa1, fa0
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	lw	a0, 44(sp)
	lw	a2, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	s1, 16(sp)
	lw	s2, 12(sp)
	lw	s3, 8(sp)
	lw	s4, 4(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_r3.2506
	flw	fa1, 64(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	fsw	fa0, 136(sp)
	call	o_param_r1.2502
	flw	fa1, 96(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 136(sp)
	fadd.s	fa0, fa1, fa0
	call	fhalf.2417
	flw	fa1, 112(sp)
	fadd.s	fa0, fa1, fa0
	li	a0, 4
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	lw	a0, 44(sp)
	lw	a2, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	s1, 16(sp)
	lw	s2, 12(sp)
	lw	s3, 8(sp)
	lw	s4, 4(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_r2.2504
	flw	fa1, 64(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	fsw	fa0, 144(sp)
	call	o_param_r1.2502
	flw	fa1, 80(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 144(sp)
	fadd.s	fa0, fa1, fa0
	call	fhalf.2417
	flw	fa1, 120(sp)
	fadd.s	fa0, fa1, fa0
	li	a0, 8
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
beq_cont.11265:
	lw	a0, 44(sp)
	lw	a2, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	s1, 16(sp)
	lw	s2, 12(sp)
	lw	s3, 8(sp)
	lw	s4, 4(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_isinvert.2474
	mv	a1, a0
	lw	a0, 0(sp)
	call	vecunit_sgn.2443
	b	get_nvector_second.2863_ret
get_nvector_second.2863_ret:
	lw	ra, 160(sp)
	lw	fp, 156(sp)
	addi	sp, sp, 164
	jr	ra
get_nvector.2867:
	addi	sp, sp, -72
	sw	ra, 68(sp)
	sw	fp, 64(sp)
	addi	fp, sp, 72
	sw	s5, 0(sp)
	sw	s3, 4(sp)
	sw	s2, 8(sp)
	sw	s1, 12(sp)
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a5, 24(sp)
	sw	a4, 28(sp)
	sw	a3, 32(sp)
	sw	a2, 36(sp)
	sw	a1, 40(sp)
	sw	a0, 44(sp)
	sw	s7, 48(sp)
	sw	s6, 52(sp)
	sw	s4, 56(sp)
	call	o_form.2470
	li	a1, 1
	bne	a0, a1, beq_else.11266
	lw	a0, 56(sp)
	lw	a1, 52(sp)
	lw	a2, 48(sp)
	mv	a4, a2
	mv	a3, a1
	call	get_nvector_rect.2856
	b	get_nvector.2867_ret
beq_else.11266:
	li	a1, 2
	bne	a0, a1, beq_else.11267
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 48(sp)
	mv	s5, s4
	call	get_nvector_plane.2860
	b	get_nvector.2867_ret
beq_else.11267:
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	lw	s1, 12(sp)
	lw	s2, 8(sp)
	lw	s3, 4(sp)
	lw	s4, 0(sp)
	lw	s5, 48(sp)
	mv	s7, s5
	mv	s6, s4
	call	get_nvector_second.2863
	b	get_nvector.2867_ret
get_nvector.2867_ret:
	lw	ra, 68(sp)
	lw	fp, 64(sp)
	addi	sp, sp, 72
	jr	ra
utexture.2873:
	addi	sp, sp, -300
	sw	ra, 296(sp)
	sw	fp, 292(sp)
	addi	fp, sp, 300
	sw	s4, 0(sp)
	sw	s5, 4(sp)
	sw	s3, 8(sp)
	sw	s2, 12(sp)
	sw	s1, 16(sp)
	sw	a7, 20(sp)
	sw	a6, 24(sp)
	sw	a5, 28(sp)
	sw	a4, 32(sp)
	sw	a3, 36(sp)
	sw	a2, 40(sp)
	sw	a1, 44(sp)
	sw	a0, 48(sp)
	call	o_texturetype.2468
	lw	a1, 48(sp)
	lw	a2, 44(sp)
	lw	a3, 40(sp)
	lw	a4, 36(sp)
	lw	a5, 32(sp)
	lw	a6, 28(sp)
	lw	a7, 24(sp)
	lw	s1, 20(sp)
	lw	s2, 16(sp)
	lw	s3, 12(sp)
	lw	s4, 8(sp)
	sw	a0, 52(sp)
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_color_red.2496
	li	a0, 0
	lw	a1, 4(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	lw	a0, 48(sp)
	lw	a2, 44(sp)
	lw	a3, 40(sp)
	lw	a4, 36(sp)
	lw	a5, 32(sp)
	lw	a6, 28(sp)
	lw	a7, 24(sp)
	lw	s1, 20(sp)
	lw	s2, 16(sp)
	lw	s3, 12(sp)
	lw	s4, 8(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_color_green.2498
	li	a0, 4
	lw	a1, 4(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	lw	a0, 48(sp)
	lw	a2, 44(sp)
	lw	a3, 40(sp)
	lw	a4, 36(sp)
	lw	a5, 32(sp)
	lw	a6, 28(sp)
	lw	a7, 24(sp)
	lw	s1, 20(sp)
	lw	s2, 16(sp)
	lw	s3, 12(sp)
	lw	s4, 8(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_color_blue.2500
	li	a0, 8
	lw	a1, 4(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 1
	lw	a2, 52(sp)
	bne	a2, a0, beq_else.11268
	li	a0, 0
	lw	a2, 0(sp)
	add	t6, a2, a0
	flw	fa0, 0(t6)
	lw	a0, 48(sp)
	lw	a3, 44(sp)
	lw	a4, 40(sp)
	lw	a5, 36(sp)
	lw	a6, 32(sp)
	lw	a7, 28(sp)
	lw	s1, 24(sp)
	lw	s2, 20(sp)
	lw	s3, 16(sp)
	lw	s4, 12(sp)
	lw	s5, 8(sp)
	fsw	fa0, 56(sp)
	mv	a2, a4
	mv	a1, a3
	mv	a4, a6
	mv	a3, a5
	mv	a6, s1
	mv	a5, a7
	mv	s1, s3
	mv	a7, s2
	mv	s3, s5
	mv	s2, s4
	call	o_param_x.2486
	flw	fa1, 56(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l.7425
	fmul.s	fa1, fa0, fa1
	fsw	fa0, 64(sp)
	fmv.s	fa0, fa1
	call	min_caml_floor
	fli	fa1, l.7426
	fmul.s	fa0, fa0, fa1
	flw	fa1, 64(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l.7417
	call	fless.2412
	li	a1, 8
	lw	a2, 0(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	lw	a1, 48(sp)
	lw	a2, 44(sp)
	lw	a3, 40(sp)
	lw	a4, 36(sp)
	lw	a5, 32(sp)
	lw	a6, 28(sp)
	lw	a7, 24(sp)
	lw	s1, 20(sp)
	lw	s2, 16(sp)
	lw	s3, 12(sp)
	lw	s4, 8(sp)
	sw	a0, 72(sp)
	fsw	fa0, 80(sp)
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_z.2490
	flw	fa1, 80(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l.7425
	fmul.s	fa1, fa0, fa1
	fsw	fa0, 88(sp)
	fmv.s	fa0, fa1
	call	min_caml_floor
	fli	fa1, l.7426
	fmul.s	fa0, fa0, fa1
	flw	fa1, 88(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l.7417
	call	fless.2412
	li	a1, 0
	lw	a2, 72(sp)
	bne	a2, a1, beq_else.11270
	li	a1, 0
	bne	a0, a1, beq_else.11272
	fli	fa0, l.7412
	b	beq_cont.11273
beq_else.11272:
	fli	fa0, l.7005
beq_cont.11273:
	b	beq_cont.11271
beq_else.11270:
	li	a1, 0
	bne	a0, a1, beq_else.11274
	fli	fa0, l.7005
	b	beq_cont.11275
beq_else.11274:
	fli	fa0, l.7412
beq_cont.11275:
beq_cont.11271:
	li	a0, 4
	lw	a1, 4(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	utexture.2873_ret
beq_else.11268:
	li	a0, 2
	bne	a2, a0, beq_else.11277
	li	a0, 4
	lw	a2, 0(sp)
	add	t6, a2, a0
	flw	fa0, 0(t6)
	fli	fa1, l.7421
	fmul.s	fa0, fa0, fa1
	call	min_caml_sin
	call	fsqr.2410
	fli	fa1, l.7412
	fmul.s	fa1, fa1, fa0
	li	a0, 0
	lw	a1, 4(sp)
	add	t6, a1, a0
	fsw	fa1, 0(t6)
	fli	fa1, l.7412
	fli	fa2, l.7008
	fsub.s	fa0, fa2, fa0
	fmul.s	fa0, fa1, fa0
	li	a0, 4
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	utexture.2873_ret
beq_else.11277:
	li	a0, 3
	bne	a2, a0, beq_else.11279
	li	a0, 0
	lw	a2, 0(sp)
	add	t6, a2, a0
	flw	fa0, 0(t6)
	lw	a0, 48(sp)
	lw	a3, 44(sp)
	lw	a4, 40(sp)
	lw	a5, 36(sp)
	lw	a6, 32(sp)
	lw	a7, 28(sp)
	lw	s1, 24(sp)
	lw	s2, 20(sp)
	lw	s3, 16(sp)
	lw	s4, 12(sp)
	lw	s5, 8(sp)
	fsw	fa0, 96(sp)
	mv	a2, a4
	mv	a1, a3
	mv	a4, a6
	mv	a3, a5
	mv	a6, s1
	mv	a5, a7
	mv	s1, s3
	mv	a7, s2
	mv	s3, s5
	mv	s2, s4
	call	o_param_x.2486
	flw	fa1, 96(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 8
	lw	a1, 0(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 48(sp)
	lw	a1, 44(sp)
	lw	a2, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	s1, 16(sp)
	lw	s2, 12(sp)
	lw	s3, 8(sp)
	fsw	fa0, 104(sp)
	fsw	fa1, 112(sp)
	call	o_param_z.2490
	flw	fa1, 112(sp)
	fsub.s	fa0, fa1, fa0
	flw	fa1, 104(sp)
	fsw	fa0, 120(sp)
	fmv.s	fa0, fa1
	call	fsqr.2410
	flw	fa1, 120(sp)
	fsw	fa0, 128(sp)
	fmv.s	fa0, fa1
	call	fsqr.2410
	flw	fa1, 128(sp)
	fadd.s	fa0, fa1, fa0
	fsqrt.s	fa0, fa0
	fli	fa1, l.7417
	fdiv.s	fa0, fa0, fa1
	fsw	fa0, 136(sp)
	call	min_caml_floor
	flw	fa1, 136(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l.7408
	fmul.s	fa0, fa0, fa1
	call	min_caml_cos
	call	fsqr.2410
	fli	fa1, l.7412
	fmul.s	fa1, fa0, fa1
	li	a0, 4
	lw	a1, 4(sp)
	add	t6, a1, a0
	fsw	fa1, 0(t6)
	fli	fa1, l.7008
	fsub.s	fa0, fa1, fa0
	fli	fa1, l.7412
	fmul.s	fa0, fa0, fa1
	li	a0, 8
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	utexture.2873_ret
beq_else.11279:
	li	a0, 4
	bne	a2, a0, beq_else.11281
	li	a0, 0
	lw	a2, 0(sp)
	add	t6, a2, a0
	flw	fa0, 0(t6)
	lw	a0, 48(sp)
	lw	a3, 44(sp)
	lw	a4, 40(sp)
	lw	a5, 36(sp)
	lw	a6, 32(sp)
	lw	a7, 28(sp)
	lw	s1, 24(sp)
	lw	s2, 20(sp)
	lw	s3, 16(sp)
	lw	s4, 12(sp)
	lw	s5, 8(sp)
	fsw	fa0, 144(sp)
	mv	a2, a4
	mv	a1, a3
	mv	a4, a6
	mv	a3, a5
	mv	a6, s1
	mv	a5, a7
	mv	s1, s3
	mv	a7, s2
	mv	s3, s5
	mv	s2, s4
	call	o_param_x.2486
	flw	fa1, 144(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 48(sp)
	lw	a1, 44(sp)
	lw	a2, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	s1, 16(sp)
	lw	s2, 12(sp)
	lw	s3, 8(sp)
	fsw	fa0, 152(sp)
	call	o_param_a.2478
	fsqrt.s	fa0, fa0
	flw	fa1, 152(sp)
	fmul.s	fa0, fa1, fa0
	li	a0, 8
	lw	a1, 0(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 48(sp)
	lw	a2, 44(sp)
	lw	a3, 40(sp)
	lw	a4, 36(sp)
	lw	a5, 32(sp)
	lw	a6, 28(sp)
	lw	a7, 24(sp)
	lw	s1, 20(sp)
	lw	s2, 16(sp)
	lw	s3, 12(sp)
	lw	s4, 8(sp)
	fsw	fa0, 160(sp)
	fsw	fa1, 168(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_z.2490
	flw	fa1, 168(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 48(sp)
	lw	a1, 44(sp)
	lw	a2, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	s1, 16(sp)
	lw	s2, 12(sp)
	lw	s3, 8(sp)
	fsw	fa0, 176(sp)
	call	o_param_c.2482
	fsqrt.s	fa0, fa0
	flw	fa1, 176(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 160(sp)
	fsw	fa0, 184(sp)
	fmv.s	fa0, fa1
	call	fsqr.2410
	flw	fa1, 184(sp)
	fsw	fa0, 192(sp)
	fmv.s	fa0, fa1
	call	fsqr.2410
	flw	fa1, 192(sp)
	fadd.s	fa0, fa1, fa0
	flw	fa1, 160(sp)
	fsw	fa0, 200(sp)
	fmv.s	fa0, fa1
	call	fabs.2415
	fli	fa1, l.7405
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11282
	flw	fa0, 160(sp)
	flw	fa1, 184(sp)
	fdiv.s	fa0, fa1, fa0
	call	fabs.2415
	call	min_caml_atan
	fli	fa1, l.7407
	fmul.s	fa0, fa0, fa1
	fli	fa1, l.7408
	fdiv.s	fa0, fa0, fa1
	b	beq_cont.11283
beq_else.11282:
	fli	fa0, l.7406
beq_cont.11283:
	fsw	fa0, 208(sp)
	call	min_caml_floor
	flw	fa1, 208(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 4
	lw	a1, 0(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	lw	a0, 48(sp)
	lw	a1, 44(sp)
	lw	a2, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	s1, 16(sp)
	lw	s2, 12(sp)
	lw	s3, 8(sp)
	fsw	fa0, 216(sp)
	fsw	fa1, 224(sp)
	call	o_param_y.2488
	flw	fa1, 224(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 48(sp)
	lw	a1, 44(sp)
	lw	a2, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	s1, 16(sp)
	lw	s2, 12(sp)
	lw	s3, 8(sp)
	fsw	fa0, 232(sp)
	call	o_param_b.2480
	fsqrt.s	fa0, fa0
	flw	fa1, 232(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 200(sp)
	fsw	fa0, 240(sp)
	fmv.s	fa0, fa1
	call	fabs.2415
	fli	fa1, l.7405
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11284
	flw	fa0, 200(sp)
	flw	fa1, 240(sp)
	fdiv.s	fa0, fa1, fa0
	call	fabs.2415
	call	min_caml_atan
	fli	fa1, l.7407
	fmul.s	fa0, fa0, fa1
	fli	fa1, l.7408
	fdiv.s	fa0, fa0, fa1
	b	beq_cont.11285
beq_else.11284:
	fli	fa0, l.7406
beq_cont.11285:
	fsw	fa0, 248(sp)
	call	min_caml_floor
	flw	fa1, 248(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l.7410
	fli	fa2, l.7411
	flw	fa3, 216(sp)
	fsub.s	fa2, fa2, fa3
	fsw	fa0, 256(sp)
	fsw	fa1, 264(sp)
	fmv.s	fa0, fa2
	call	fsqr.2410
	flw	fa1, 264(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l.7411
	flw	fa2, 256(sp)
	fsub.s	fa1, fa1, fa2
	fsw	fa0, 272(sp)
	fmv.s	fa0, fa1
	call	fsqr.2410
	flw	fa1, 272(sp)
	fsub.s	fa0, fa1, fa0
	fsw	fa0, 280(sp)
	call	fisneg.2404
	li	a1, 0
	bne	a0, a1, beq_else.11286
	flw	fa0, 280(sp)
	b	beq_cont.11287
beq_else.11286:
	fli	fa0, l.7005
beq_cont.11287:
	fli	fa1, l.7412
	fmul.s	fa0, fa1, fa0
	fli	fa1, l.7413
	fdiv.s	fa0, fa0, fa1
	li	a0, 8
	lw	a1, 4(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	utexture.2873_ret
beq_else.11281:
	b	utexture.2873_ret
utexture.2873_ret:
	lw	ra, 296(sp)
	lw	fp, 292(sp)
	addi	sp, sp, 300
	jr	ra
add_light.2877:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	fsw	fa2, 0(sp)
	fsw	fa1, 8(sp)
	fsw	fa0, 16(sp)
	sw	a1, 24(sp)
	sw	a0, 28(sp)
	call	fispos.2402
	li	a1, 0
	bne	a0, a1, beq_else.11290
	b	beq_cont.11291
beq_else.11290:
	flw	fa0, 16(sp)
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	call	vecaccum.2454
beq_cont.11291:
	flw	fa0, 8(sp)
	call	fispos.2402
	li	a1, 0
	bne	a0, a1, beq_else.11292
	b	add_light.2877_ret
beq_else.11292:
	flw	fa0, 8(sp)
	call	fsqr.2410
	call	fsqr.2410
	flw	fa1, 0(sp)
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 28(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fadd.s	fa1, fa1, fa0
	li	a0, 0
	add	t6, a1, a0
	fsw	fa1, 0(t6)
	li	a0, 4
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fadd.s	fa1, fa1, fa0
	li	a0, 4
	add	t6, a1, a0
	fsw	fa1, 0(t6)
	li	a0, 8
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fadd.s	fa0, fa1, fa0
	li	a0, 8
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	add_light.2877_ret
add_light.2877_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
trace_reflections.2883:
	addi	sp, sp, -140
	sw	ra, 136(sp)
	sw	fp, 132(sp)
	addi	fp, sp, 140
	li	s11, 0
	bgt	s11, a0, ble_else.11295
	slli	s11, a0, 2
	add	t6, s5, s11
	lw	s11, 0(t6)
	sw	s5, 0(sp)
	sw	a0, 4(sp)
	fsw	fa1, 8(sp)
	sw	s9, 16(sp)
	sw	s6, 20(sp)
	sw	a1, 24(sp)
	fsw	fa0, 32(sp)
	sw	s2, 40(sp)
	sw	s1, 44(sp)
	sw	a7, 48(sp)
	sw	a6, 52(sp)
	sw	s11, 56(sp)
	sw	s10, 60(sp)
	sw	s8, 64(sp)
	sw	s7, 68(sp)
	sw	s4, 72(sp)
	sw	s3, 76(sp)
	sw	a5, 80(sp)
	sw	a4, 84(sp)
	sw	a3, 88(sp)
	sw	a2, 92(sp)
	mv	a0, s11
	call	r_dvec.2535
	lw	a1, 92(sp)
	lw	a2, 88(sp)
	lw	a3, 84(sp)
	lw	a4, 80(sp)
	lw	a5, 76(sp)
	lw	a6, 72(sp)
	lw	a7, 68(sp)
	lw	s1, 64(sp)
	lw	s2, 60(sp)
	sw	a0, 96(sp)
	mv	s11, s2
	mv	s10, s1
	mv	s9, a7
	mv	s8, a6
	mv	s7, a5
	mv	s6, a4
	mv	s5, a3
	mv	s4, a2
	mv	s3, a1
	call	judge_intersection_fast.2845
	li	a1, 0
	bne	a0, a1, beq_else.11297
	b	beq_cont.11298
beq_else.11297:
	li	a0, 0
	lw	a1, 88(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	slli	a0, a0, 2
	li	a2, 0
	lw	a3, 80(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	add	a0, a0, a2
	lw	a2, 56(sp)
	sw	a0, 100(sp)
	mv	a0, a2
	call	r_surface_id.2533
	lw	a1, 100(sp)
	bne	a1, a0, beq_else.11299
	li	a0, 0
	li	a1, 0
	lw	a2, 72(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	s2, 92(sp)
	lw	a3, 84(sp)
	lw	a4, 52(sp)
	lw	a5, 48(sp)
	lw	a6, 44(sp)
	lw	a7, 76(sp)
	lw	s1, 68(sp)
	mv	s8, s1
	mv	s7, a7
	mv	s6, a6
	mv	s5, a5
	mv	s4, a4
	mv	s3, a3
	mv	a2, s2
	call	shadow_check_one_or_matrix.2755
	li	a1, 0
	bne	a0, a1, beq_else.11301
	lw	a0, 96(sp)
	call	d_vec.2529
	mv	a1, a0
	lw	a0, 40(sp)
	call	veciprod.2446
	lw	a0, 56(sp)
	fsw	fa0, 104(sp)
	call	r_bright.2537
	flw	fa1, 32(sp)
	fmul.s	fa2, fa0, fa1
	flw	fa3, 104(sp)
	fmul.s	fa2, fa2, fa3
	lw	a0, 96(sp)
	fsw	fa2, 112(sp)
	fsw	fa0, 120(sp)
	call	d_vec.2529
	mv	a1, a0
	lw	a0, 24(sp)
	call	veciprod.2446
	flw	fa1, 120(sp)
	fmul.s	fa1, fa1, fa0
	flw	fa0, 112(sp)
	flw	fa2, 8(sp)
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	mv	a3, a1
	mv	a2, a0
	call	add_light.2877
	b	beq_cont.11302
beq_else.11301:
beq_cont.11302:
	b	beq_cont.11300
beq_else.11299:
beq_cont.11300:
beq_cont.11298:
	lw	a0, 4(sp)
	addi	a0, a0, -1
	flw	fa0, 32(sp)
	flw	fa1, 8(sp)
	lw	a1, 24(sp)
	lw	a2, 92(sp)
	lw	a3, 88(sp)
	lw	a4, 84(sp)
	lw	a5, 80(sp)
	lw	a6, 52(sp)
	lw	a7, 48(sp)
	lw	s1, 44(sp)
	lw	s2, 40(sp)
	lw	s3, 76(sp)
	lw	s4, 72(sp)
	lw	s5, 0(sp)
	lw	s6, 20(sp)
	lw	s7, 68(sp)
	lw	s8, 64(sp)
	lw	s9, 16(sp)
	lw	s10, 60(sp)
	call	trace_reflections.2883
	b	trace_reflections.2883_ret
ble_else.11295:
	b	trace_reflections.2883_ret
trace_reflections.2883_ret:
	lw	ra, 136(sp)
	lw	fp, 132(sp)
	addi	sp, sp, 140
	jr	ra
trace_ray.2903:
	addi	sp, sp, -236
	sw	ra, 232(sp)
	sw	fp, 228(sp)
	addi	fp, sp, 236
	lw	s3, 76(t6)
	lw	s4, 72(t6)
	lw	s5, 68(t6)
	lw	s6, 64(t6)
	lw	s7, 60(t6)
	lw	s8, 56(t6)
	lw	s9, 52(t6)
	lw	s10, 48(t6)
	lw	s11, 44(t6)
	lw	t0, 40(t6)
	lw	t1, 36(t6)
	lw	t2, 32(t6)
	lw	t3, 28(t6)
	lw	t4, 24(t6)
	lw	t5, 20(t6)
	sw	s9, 0(sp)
	lw	s9, 16(t6)
	sw	t1, 4(sp)
	lw	t1, 12(t6)
	sw	s5, 8(sp)
	lw	s5, 8(t6)
	sw	t6, 12(sp)
	lw	t6, 4(t6)
	sw	t2, 16(sp)
	li	t2, 4
	bgt	a0, t2, ble_else.11304
	fsw	fa1, 24(sp)
	sw	t3, 32(sp)
	sw	s2, 36(sp)
	sw	s1, 40(sp)
	sw	a7, 44(sp)
	sw	a6, 48(sp)
	sw	a5, 52(sp)
	sw	a4, 56(sp)
	sw	a3, 60(sp)
	sw	a2, 64(sp)
	sw	s4, 68(sp)
	sw	t0, 72(sp)
	sw	s8, 76(sp)
	sw	s5, 80(sp)
	fsw	fa0, 88(sp)
	sw	t4, 96(sp)
	sw	a0, 100(sp)
	sw	s3, 104(sp)
	sw	s6, 108(sp)
	sw	s7, 112(sp)
	sw	s10, 116(sp)
	sw	s11, 120(sp)
	sw	t5, 124(sp)
	sw	s9, 128(sp)
	sw	t1, 132(sp)
	sw	t6, 136(sp)
	sw	a1, 140(sp)
	mv	a1, a3
	mv	a0, a2
	mv	a3, a5
	mv	a2, a4
	mv	a5, a7
	mv	a4, a6
	mv	a7, s2
	mv	a6, s1
	call	p_surface_ids.2514
	lw	a1, 140(sp)
	lw	a2, 136(sp)
	lw	a3, 132(sp)
	lw	a4, 128(sp)
	lw	a5, 124(sp)
	lw	a6, 120(sp)
	lw	a7, 116(sp)
	lw	s1, 112(sp)
	lw	s2, 108(sp)
	lw	s3, 104(sp)
	sw	a0, 144(sp)
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	call	judge_intersection.2799
	li	a1, 0
	bne	a0, a1, beq_else.11307
	li	a0, -1
	lw	a1, 100(sp)
	slli	a2, a1, 2
	lw	a3, 144(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	li	a0, 0
	bne	a1, a0, beq_else.11308
	b	trace_ray.2903_ret
beq_else.11308:
	lw	a0, 140(sp)
	lw	a1, 96(sp)
	call	veciprod.2446
	call	fneg.2408
	fsw	fa0, 152(sp)
	call	fispos.2402
	li	a1, 0
	bne	a0, a1, beq_else.11311
	b	trace_ray.2903_ret
beq_else.11311:
	flw	fa0, 152(sp)
	call	fsqr.2410
	flw	fa1, 152(sp)
	fmul.s	fa0, fa0, fa1
	flw	fa1, 88(sp)
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 80(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 76(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fadd.s	fa1, fa1, fa0
	li	a0, 0
	add	t6, a1, a0
	fsw	fa1, 0(t6)
	li	a0, 4
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fadd.s	fa1, fa1, fa0
	li	a0, 4
	add	t6, a1, a0
	fsw	fa1, 0(t6)
	li	a0, 8
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fadd.s	fa0, fa1, fa0
	li	a0, 8
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	trace_ray.2903_ret
beq_else.11307:
	li	a0, 0
	lw	a1, 132(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	slli	a2, a0, 2
	lw	a3, 120(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	sw	a0, 160(sp)
	sw	a2, 164(sp)
	mv	a0, a2
	call	o_reflectiontype.2472
	lw	a1, 164(sp)
	sw	a0, 168(sp)
	mv	a0, a1
	call	o_diffuse.2492
	flw	fa1, 88(sp)
	fmul.s	fa0, fa0, fa1
	lw	a0, 164(sp)
	lw	a1, 140(sp)
	lw	a2, 128(sp)
	lw	a3, 124(sp)
	lw	a4, 72(sp)
	fsw	fa0, 176(sp)
	call	get_nvector.2867
	lw	a0, 108(sp)
	lw	a1, 128(sp)
	call	veccpy.2440
	lw	a0, 164(sp)
	lw	a1, 128(sp)
	lw	a2, 68(sp)
	call	utexture.2873
	lw	a0, 160(sp)
	slli	a0, a0, 2
	li	a1, 0
	lw	a2, 124(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	add	a0, a0, a1
	lw	a1, 100(sp)
	slli	a3, a1, 2
	lw	a4, 144(sp)
	add	t6, a4, a3
	sw	a0, 0(t6)
	lw	a0, 64(sp)
	lw	a3, 60(sp)
	lw	a5, 56(sp)
	lw	a6, 52(sp)
	lw	a7, 48(sp)
	lw	s1, 44(sp)
	lw	s2, 40(sp)
	lw	s3, 36(sp)
	mv	a4, a7
	mv	a2, a5
	mv	a1, a3
	mv	a7, s3
	mv	a5, s1
	mv	a3, a6
	mv	a6, s2
	call	p_intersection_points.2512
	lw	a1, 100(sp)
	slli	a2, a1, 2
	add	t6, a0, a2
	lw	a0, 0(t6)
	lw	a2, 128(sp)
	mv	a1, a2
	call	veccpy.2440
	lw	a0, 64(sp)
	lw	a1, 60(sp)
	lw	a2, 56(sp)
	lw	a3, 52(sp)
	lw	a4, 48(sp)
	lw	a5, 44(sp)
	lw	a6, 40(sp)
	lw	a7, 36(sp)
	call	p_calc_diffuse.2516
	lw	a1, 164(sp)
	sw	a0, 184(sp)
	mv	a0, a1
	call	o_diffuse.2492
	fli	fa1, l.7411
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11315
	li	a0, 1
	lw	a1, 100(sp)
	slli	a2, a1, 2
	lw	a3, 184(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	lw	a0, 64(sp)
	lw	a2, 60(sp)
	lw	a3, 56(sp)
	lw	a4, 52(sp)
	lw	a5, 48(sp)
	lw	a6, 44(sp)
	lw	a7, 40(sp)
	lw	s1, 36(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	call	p_energy.2518
	lw	a1, 100(sp)
	slli	a2, a1, 2
	add	t6, a0, a2
	lw	a2, 0(t6)
	lw	a3, 68(sp)
	sw	a0, 188(sp)
	mv	a1, a3
	mv	a0, a2
	call	veccpy.2440
	lw	a0, 100(sp)
	slli	a1, a0, 2
	lw	a2, 188(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa0, l.7448
	flw	fa1, 176(sp)
	fmul.s	fa0, fa0, fa1
	mv	a0, a1
	call	vecscale.2461
	lw	a0, 64(sp)
	lw	a1, 60(sp)
	lw	a2, 56(sp)
	lw	a3, 52(sp)
	lw	a4, 48(sp)
	lw	a5, 44(sp)
	lw	a6, 40(sp)
	lw	a7, 36(sp)
	call	p_nvectors.2527
	lw	a1, 100(sp)
	slli	a2, a1, 2
	add	t6, a0, a2
	lw	a0, 0(t6)
	lw	a2, 72(sp)
	mv	a1, a2
	call	veccpy.2440
	b	beq_cont.11316
beq_else.11315:
	li	a0, 0
	lw	a1, 100(sp)
	slli	a2, a1, 2
	lw	a3, 184(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
beq_cont.11316:
	fli	fa0, l.7450
	lw	a0, 140(sp)
	lw	a1, 72(sp)
	fsw	fa0, 192(sp)
	call	veciprod.2446
	flw	fa1, 192(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 140(sp)
	lw	a1, 72(sp)
	call	vecaccum.2454
	lw	a0, 164(sp)
	call	o_hilight.2494
	flw	fa1, 88(sp)
	fmul.s	fa0, fa1, fa0
	li	a0, 0
	li	a1, 0
	lw	a2, 116(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a3, 136(sp)
	lw	a4, 128(sp)
	lw	a5, 96(sp)
	lw	a6, 32(sp)
	lw	a7, 120(sp)
	lw	s1, 112(sp)
	fsw	fa0, 200(sp)
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	call	shadow_check_one_or_matrix.2755
	li	a1, 0
	bne	a0, a1, beq_else.11317
	lw	a0, 72(sp)
	lw	a1, 96(sp)
	call	veciprod.2446
	call	fneg.2408
	flw	fa1, 176(sp)
	fmul.s	fa0, fa0, fa1
	lw	a0, 140(sp)
	lw	a1, 96(sp)
	fsw	fa0, 208(sp)
	call	veciprod.2446
	call	fneg.2408
	fmv.s	fa1, fa0
	flw	fa0, 208(sp)
	flw	fa2, 200(sp)
	lw	a0, 76(sp)
	lw	a1, 68(sp)
	call	add_light.2877
	b	beq_cont.11318
beq_else.11317:
beq_cont.11318:
	lw	a0, 128(sp)
	lw	a1, 16(sp)
	lw	a2, 120(sp)
	lw	a3, 8(sp)
	call	setup_startp.2706
	li	a0, 0
	lw	a1, 4(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	addi	a0, a0, -1
	flw	fa0, 176(sp)
	flw	fa1, 200(sp)
	lw	a1, 140(sp)
	lw	a2, 136(sp)
	lw	a3, 132(sp)
	lw	a4, 128(sp)
	lw	a5, 124(sp)
	lw	a6, 96(sp)
	lw	a7, 32(sp)
	lw	s1, 72(sp)
	lw	s2, 120(sp)
	lw	s3, 116(sp)
	lw	s4, 0(sp)
	lw	s5, 76(sp)
	lw	s6, 112(sp)
	lw	s7, 8(sp)
	lw	s8, 68(sp)
	lw	s9, 104(sp)
	call	trace_reflections.2883
	fli	fa0, l.7453
	flw	fa1, 88(sp)
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11319
	b	trace_ray.2903_ret
beq_else.11319:
	li	a0, 4
	lw	a1, 100(sp)
	bgt	a0, a1, ble_else.11321
	b	ble_cont.11322
ble_else.11321:
	addi	a0, a1, 1
	li	a2, -1
	slli	a0, a0, 2
	lw	a3, 144(sp)
	add	t6, a3, a0
	sw	a2, 0(t6)
ble_cont.11322:
	li	a0, 2
	lw	a2, 168(sp)
	bne	a2, a0, beq_else.11323
	fli	fa0, l.7008
	lw	a0, 164(sp)
	fsw	fa0, 216(sp)
	call	o_diffuse.2492
	flw	fa1, 216(sp)
	fsub.s	fa0, fa1, fa0
	flw	fa1, 88(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 100(sp)
	addi	a0, a0, 1
	li	a1, 0
	lw	a2, 104(sp)
	add	t6, a2, a1
	flw	fa1, 0(t6)
	flw	fa2, 24(sp)
	fadd.s	fa1, fa2, fa1
	lw	a1, 140(sp)
	lw	a2, 64(sp)
	lw	a3, 60(sp)
	lw	a4, 56(sp)
	lw	a5, 52(sp)
	lw	a6, 48(sp)
	lw	a7, 44(sp)
	lw	s1, 40(sp)
	lw	s2, 36(sp)
	lw	t6, 12(sp)
	lw	ra, 0(t6)
	jr	ra
	b	beq_cont.11324
beq_else.11323:
beq_cont.11324:
	b	trace_ray.2903_ret
ble_else.11304:
	b	trace_ray.2903_ret
trace_ray.2903_ret:
	lw	ra, 232(sp)
	lw	fp, 228(sp)
	addi	sp, sp, 236
	jr	ra
trace_diffuse_ray.2909:
	addi	sp, sp, -84
	sw	ra, 80(sp)
	sw	fp, 76(sp)
	addi	fp, sp, 84
	lw	a2, 32(t6)
	lw	a3, 28(t6)
	lw	a4, 24(t6)
	lw	a5, 20(t6)
	lw	a6, 16(t6)
	lw	a7, 12(t6)
	lw	s1, 8(t6)
	lw	s2, 4(t6)
	sw	a2, 0(sp)
	sw	s2, 4(sp)
	fsw	fa0, 8(sp)
	sw	a6, 16(sp)
	sw	a5, 20(sp)
	sw	a3, 24(sp)
	sw	a7, 28(sp)
	sw	a1, 32(sp)
	sw	a0, 36(sp)
	sw	a4, 40(sp)
	sw	s1, 44(sp)
	call	judge_intersection_fast.2845
	li	a1, 0
	bne	a0, a1, beq_else.11327
	b	trace_diffuse_ray.2909_ret
beq_else.11327:
	li	a0, 0
	lw	a1, 44(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	slli	a0, a0, 2
	lw	a1, 40(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	sw	a0, 48(sp)
	mv	a0, a1
	mv	a1, a2
	call	d_vec.2529
	mv	a1, a0
	lw	a0, 48(sp)
	call	get_nvector.2867
	lw	a0, 48(sp)
	lw	a1, 28(sp)
	call	utexture.2873
	li	a0, 0
	li	a1, 0
	lw	a2, 24(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	call	shadow_check_one_or_matrix.2755
	li	a1, 0
	bne	a0, a1, beq_else.11329
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	call	veciprod.2446
	call	fneg.2408
	fsw	fa0, 56(sp)
	call	fispos.2402
	li	a1, 0
	bne	a0, a1, beq_else.11331
	fli	fa0, l.7005
	b	beq_cont.11332
beq_else.11331:
	flw	fa0, 56(sp)
beq_cont.11332:
	flw	fa1, 8(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 48(sp)
	fsw	fa0, 64(sp)
	call	o_diffuse.2492
	flw	fa1, 64(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	lw	a1, 0(sp)
	call	vecaccum.2454
	b	trace_diffuse_ray.2909_ret
beq_else.11329:
	b	trace_diffuse_ray.2909_ret
trace_diffuse_ray.2909_ret:
	lw	ra, 80(sp)
	lw	fp, 76(sp)
	addi	sp, sp, 84
	jr	ra
iter_trace_diffuse_rays.2912:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a4, 4(t6)
	li	a5, 0
	bgt	a5, a3, ble_else.11334
	slli	a5, a3, 2
	add	t6, a0, a5
	lw	a5, 0(t6)
	sw	a2, 0(sp)
	sw	t6, 4(sp)
	sw	a4, 8(sp)
	sw	a0, 12(sp)
	sw	a3, 16(sp)
	sw	a1, 20(sp)
	mv	a0, a5
	call	d_vec.2529
	lw	a1, 20(sp)
	call	veciprod.2446
	fsw	fa0, 24(sp)
	call	fisneg.2404
	li	a1, 0
	bne	a0, a1, beq_else.11335
	lw	a0, 16(sp)
	slli	a1, a0, 2
	lw	a2, 12(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa0, l.7471
	flw	fa1, 24(sp)
	fdiv.s	fa0, fa1, fa0
	lw	t6, 8(sp)
	mv	a0, a1
	lw	ra, 0(t6)
	jr	ra
	b	beq_cont.11336
beq_else.11335:
	lw	a0, 16(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 12(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa0, l.7469
	flw	fa1, 24(sp)
	fdiv.s	fa0, fa1, fa0
	lw	t6, 8(sp)
	mv	a0, a1
	lw	ra, 0(t6)
	jr	ra
beq_cont.11336:
	lw	a0, 16(sp)
	addi	a3, a0, -2
	lw	a0, 12(sp)
	lw	a1, 20(sp)
	lw	a2, 0(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jr	ra
	b	iter_trace_diffuse_rays.2912_ret
ble_else.11334:
	b	iter_trace_diffuse_rays.2912_ret
iter_trace_diffuse_rays.2912_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
trace_diffuse_rays.2917:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	lw	a3, 4(t6)
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	sw	a3, 12(sp)
	mv	a0, a2
	call	setup_startp.2706
	li	a3, 118
	lw	a0, 8(sp)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	t6, 12(sp)
	lw	ra, 0(t6)
	jr	ra
	b	trace_diffuse_rays.2917_ret
trace_diffuse_rays.2917_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
trace_diffuse_ray_80percent.2921:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	fp, 24(sp)
	addi	fp, sp, 32
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	li	a5, 0
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	a3, 8(sp)
	sw	a4, 12(sp)
	sw	a0, 16(sp)
	bne	a0, a5, beq_else.11338
	b	beq_cont.11339
beq_else.11338:
	li	a5, 0
	add	t6, a4, a5
	lw	a5, 0(t6)
	mv	a0, a5
	mv	t6, a3
	lw	ra, 0(t6)
	jr	ra
beq_cont.11339:
	li	a0, 1
	lw	a1, 16(sp)
	bne	a1, a0, beq_else.11340
	b	beq_cont.11341
beq_else.11340:
	li	a0, 4
	lw	a2, 12(sp)
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a3, 4(sp)
	lw	a4, 0(sp)
	lw	t6, 8(sp)
	mv	a2, a4
	mv	a1, a3
	lw	ra, 0(t6)
	jr	ra
beq_cont.11341:
	li	a0, 2
	lw	a1, 16(sp)
	bne	a1, a0, beq_else.11342
	b	beq_cont.11343
beq_else.11342:
	li	a0, 8
	lw	a2, 12(sp)
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a3, 4(sp)
	lw	a4, 0(sp)
	lw	t6, 8(sp)
	mv	a2, a4
	mv	a1, a3
	lw	ra, 0(t6)
	jr	ra
beq_cont.11343:
	li	a0, 3
	lw	a1, 16(sp)
	bne	a1, a0, beq_else.11344
	b	beq_cont.11345
beq_else.11344:
	li	a0, 12
	lw	a2, 12(sp)
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a3, 4(sp)
	lw	a4, 0(sp)
	lw	t6, 8(sp)
	mv	a2, a4
	mv	a1, a3
	lw	ra, 0(t6)
	jr	ra
beq_cont.11345:
	li	a0, 4
	lw	a1, 16(sp)
	bne	a1, a0, beq_else.11346
	b	trace_diffuse_ray_80percent.2921_ret
beq_else.11346:
	li	a0, 16
	lw	a1, 12(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	t6, 8(sp)
	lw	ra, 0(t6)
	jr	ra
	b	trace_diffuse_ray_80percent.2921_ret
trace_diffuse_ray_80percent.2921_ret:
	lw	ra, 28(sp)
	lw	fp, 24(sp)
	addi	sp, sp, 32
	jr	ra
calc_diffuse_using_1point.2925:
	addi	sp, sp, -76
	sw	ra, 72(sp)
	sw	fp, 68(sp)
	addi	fp, sp, 76
	lw	s2, 12(t6)
	lw	s3, 8(t6)
	lw	s4, 4(t6)
	sw	s3, 0(sp)
	sw	s2, 4(sp)
	sw	s4, 8(sp)
	sw	s1, 12(sp)
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a5, 24(sp)
	sw	a4, 28(sp)
	sw	a3, 32(sp)
	sw	a2, 36(sp)
	sw	a1, 40(sp)
	sw	a0, 44(sp)
	call	p_received_ray_20percent.2520
	lw	a1, 44(sp)
	lw	a2, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	s1, 16(sp)
	sw	a0, 48(sp)
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	call	p_nvectors.2527
	lw	a1, 44(sp)
	lw	a2, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	s1, 16(sp)
	sw	a0, 52(sp)
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	call	p_intersection_points.2512
	lw	a1, 44(sp)
	lw	a2, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	s1, 16(sp)
	sw	a0, 56(sp)
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	call	p_energy.2518
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 48(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	lw	a3, 8(sp)
	sw	a0, 60(sp)
	mv	a1, a2
	mv	a0, a3
	call	veccpy.2440
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	lw	a2, 36(sp)
	lw	a3, 32(sp)
	lw	a4, 28(sp)
	lw	a5, 24(sp)
	lw	a6, 20(sp)
	lw	a7, 16(sp)
	call	p_group_id.2522
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 52(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	slli	a3, a1, 2
	lw	a4, 56(sp)
	add	t6, a4, a3
	lw	a3, 0(t6)
	lw	t6, 4(sp)
	mv	a1, a2
	mv	a2, a3
	lw	ra, 0(t6)
	jr	ra
	lw	a0, 12(sp)
	slli	a0, a0, 2
	lw	a1, 60(sp)
	add	t6, a1, a0
	lw	a1, 0(t6)
	lw	a0, 0(sp)
	lw	a2, 8(sp)
	call	vecaccumv.2464
	b	calc_diffuse_using_1point.2925_ret
calc_diffuse_using_1point.2925_ret:
	lw	ra, 72(sp)
	lw	fp, 68(sp)
	addi	sp, sp, 76
	jr	ra
calc_diffuse_using_5points.2928:
	addi	sp, sp, -56
	sw	ra, 52(sp)
	sw	fp, 48(sp)
	addi	fp, sp, 56
	lw	a5, 8(t6)
	lw	a6, 4(t6)
	slli	a7, a0, 2
	add	t6, a1, a7
	lw	a1, 0(t6)
	sw	a5, 0(sp)
	sw	a6, 4(sp)
	sw	a4, 8(sp)
	sw	a3, 12(sp)
	sw	a2, 16(sp)
	sw	a0, 20(sp)
	mv	a0, a1
	call	p_received_ray_20percent.2520
	lw	a1, 20(sp)
	addi	a2, a1, -1
	slli	a2, a2, 2
	lw	a3, 16(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	sw	a0, 24(sp)
	mv	a0, a2
	call	p_received_ray_20percent.2520
	lw	a1, 20(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	sw	a0, 28(sp)
	mv	a0, a2
	call	p_received_ray_20percent.2520
	lw	a1, 20(sp)
	addi	a2, a1, 1
	slli	a2, a2, 2
	lw	a3, 16(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	sw	a0, 32(sp)
	mv	a0, a2
	call	p_received_ray_20percent.2520
	lw	a1, 20(sp)
	slli	a2, a1, 2
	lw	a3, 12(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	sw	a0, 36(sp)
	mv	a0, a2
	call	p_received_ray_20percent.2520
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 24(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	lw	a3, 4(sp)
	sw	a0, 40(sp)
	mv	a1, a2
	mv	a0, a3
	call	veccpy.2440
	lw	a0, 8(sp)
	slli	a1, a0, 2
	lw	a2, 28(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 4(sp)
	mv	a0, a2
	call	vecadd.2458
	lw	a0, 8(sp)
	slli	a1, a0, 2
	lw	a2, 32(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 4(sp)
	mv	a0, a2
	call	vecadd.2458
	lw	a0, 8(sp)
	slli	a1, a0, 2
	lw	a2, 36(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 4(sp)
	mv	a0, a2
	call	vecadd.2458
	lw	a0, 8(sp)
	slli	a1, a0, 2
	lw	a2, 40(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 4(sp)
	mv	a0, a2
	call	vecadd.2458
	lw	a0, 20(sp)
	slli	a0, a0, 2
	lw	a1, 16(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	call	p_energy.2518
	lw	a1, 8(sp)
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a0, 0(sp)
	lw	a2, 4(sp)
	call	vecaccumv.2464
	b	calc_diffuse_using_5points.2928_ret
calc_diffuse_using_5points.2928_ret:
	lw	ra, 52(sp)
	lw	fp, 48(sp)
	addi	sp, sp, 56
	jr	ra
do_without_neighbors.2934:
	addi	sp, sp, -56
	sw	ra, 52(sp)
	sw	fp, 48(sp)
	addi	fp, sp, 56
	lw	s2, 4(t6)
	li	s3, 4
	bgt	s1, s3, ble_else.11348
	sw	t6, 0(sp)
	sw	s2, 4(sp)
	sw	a7, 8(sp)
	sw	a6, 12(sp)
	sw	a5, 16(sp)
	sw	a4, 20(sp)
	sw	a3, 24(sp)
	sw	a2, 28(sp)
	sw	a1, 32(sp)
	sw	a0, 36(sp)
	sw	s1, 40(sp)
	call	p_surface_ids.2514
	li	a1, 0
	lw	a2, 40(sp)
	slli	a3, a2, 2
	add	t6, a0, a3
	lw	a0, 0(t6)
	bgt	a1, a0, ble_else.11349
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 24(sp)
	lw	a5, 20(sp)
	lw	a6, 16(sp)
	lw	a7, 12(sp)
	lw	s1, 8(sp)
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	call	p_calc_diffuse.2516
	lw	s1, 40(sp)
	slli	a1, s1, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	li	a1, 0
	bne	a0, a1, beq_else.11350
	b	beq_cont.11351
beq_else.11350:
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	a3, 24(sp)
	lw	a4, 20(sp)
	lw	a5, 16(sp)
	lw	a6, 12(sp)
	lw	a7, 8(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jr	ra
beq_cont.11351:
	lw	a0, 40(sp)
	addi	s1, a0, 1
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	a3, 24(sp)
	lw	a4, 20(sp)
	lw	a5, 16(sp)
	lw	a6, 12(sp)
	lw	a7, 8(sp)
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jr	ra
	b	do_without_neighbors.2934_ret
ble_else.11349:
	b	do_without_neighbors.2934_ret
ble_else.11348:
	b	do_without_neighbors.2934_ret
do_without_neighbors.2934_ret:
	lw	ra, 52(sp)
	lw	fp, 48(sp)
	addi	sp, sp, 56
	jr	ra
neighbors_exist.2937:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a2, 4(t6)
	li	a3, 4
	add	t6, a2, a3
	lw	a3, 0(t6)
	addi	a4, a1, 1
	bgt	a3, a4, ble_else.11354
	li	a0, 0
	b	neighbors_exist.2937_ret
ble_else.11354:
	li	a3, 0
	bgt	a1, a3, ble_else.11355
	li	a0, 0
	b	neighbors_exist.2937_ret
ble_else.11355:
	li	a1, 0
	add	t6, a2, a1
	lw	a1, 0(t6)
	addi	a2, a0, 1
	bgt	a1, a2, ble_else.11356
	li	a0, 0
	b	neighbors_exist.2937_ret
ble_else.11356:
	li	a1, 0
	bgt	a0, a1, ble_else.11357
	li	a0, 0
	b	neighbors_exist.2937_ret
ble_else.11357:
	li	a0, 1
	b	neighbors_exist.2937_ret
neighbors_exist.2937_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
get_surface_id.2941:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	sw	s1, 0(sp)
	call	p_surface_ids.2514
	lw	a1, 0(sp)
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	b	get_surface_id.2941_ret
get_surface_id.2941_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
neighbors_are_available.2944:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	slli	a5, a0, 2
	add	t6, a2, a5
	lw	a5, 0(t6)
	sw	a2, 0(sp)
	sw	a3, 4(sp)
	sw	a4, 8(sp)
	sw	a1, 12(sp)
	sw	a0, 16(sp)
	mv	a1, a4
	mv	a0, a5
	call	get_surface_id.2941
	lw	a1, 16(sp)
	slli	a2, a1, 2
	lw	a3, 12(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	lw	a3, 8(sp)
	sw	a0, 20(sp)
	mv	a1, a3
	mv	a0, a2
	call	get_surface_id.2941
	lw	a1, 20(sp)
	bne	a0, a1, beq_else.11358
	lw	a0, 16(sp)
	slli	a2, a0, 2
	lw	a3, 4(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	lw	a3, 8(sp)
	mv	a1, a3
	mv	a0, a2
	call	get_surface_id.2941
	lw	a1, 20(sp)
	bne	a0, a1, beq_else.11359
	lw	a0, 16(sp)
	addi	a2, a0, -1
	slli	a2, a2, 2
	lw	a3, 0(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	lw	a4, 8(sp)
	mv	a1, a4
	mv	a0, a2
	call	get_surface_id.2941
	lw	a1, 20(sp)
	bne	a0, a1, beq_else.11360
	lw	a0, 16(sp)
	addi	a0, a0, 1
	slli	a0, a0, 2
	lw	a2, 0(sp)
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a2, 8(sp)
	mv	a1, a2
	call	get_surface_id.2941
	lw	a1, 20(sp)
	bne	a0, a1, beq_else.11361
	li	a0, 1
	b	neighbors_are_available.2944_ret
beq_else.11361:
	li	a0, 0
	b	neighbors_are_available.2944_ret
beq_else.11360:
	li	a0, 0
	b	neighbors_are_available.2944_ret
beq_else.11359:
	li	a0, 0
	b	neighbors_are_available.2944_ret
beq_else.11358:
	li	a0, 0
	b	neighbors_are_available.2944_ret
neighbors_are_available.2944_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
try_exploit_neighbors.2950:
	addi	sp, sp, -56
	sw	ra, 52(sp)
	sw	fp, 48(sp)
	addi	fp, sp, 56
	lw	a6, 8(t6)
	lw	a7, 4(t6)
	slli	s1, a0, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	li	s2, 4
	bgt	a5, s2, ble_else.11362
	li	s2, 0
	sw	a1, 0(sp)
	sw	t6, 4(sp)
	sw	a7, 8(sp)
	sw	s1, 12(sp)
	sw	a6, 16(sp)
	sw	a5, 20(sp)
	sw	a4, 24(sp)
	sw	a3, 28(sp)
	sw	a2, 32(sp)
	sw	a0, 36(sp)
	sw	s2, 40(sp)
	mv	a1, a5
	mv	a0, s1
	call	get_surface_id.2941
	lw	a1, 40(sp)
	bgt	a1, a0, ble_else.11363
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	a3, 24(sp)
	lw	a4, 20(sp)
	call	neighbors_are_available.2944
	li	a1, 0
	bne	a0, a1, beq_else.11364
	lw	a0, 36(sp)
	slli	a0, a0, 2
	lw	a1, 28(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 20(sp)
	lw	t6, 16(sp)
	lw	ra, 0(t6)
	jr	ra
	b	try_exploit_neighbors.2950_ret
beq_else.11364:
	lw	a0, 12(sp)
	call	p_calc_diffuse.2516
	lw	a4, 20(sp)
	slli	a1, a4, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	li	a1, 0
	bne	a0, a1, beq_else.11365
	b	beq_cont.11366
beq_else.11365:
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	a3, 24(sp)
	lw	t6, 8(sp)
	lw	ra, 0(t6)
	jr	ra
beq_cont.11366:
	lw	a0, 20(sp)
	addi	a5, a0, 1
	lw	a0, 36(sp)
	lw	a1, 0(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 24(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jr	ra
	b	try_exploit_neighbors.2950_ret
ble_else.11363:
	b	try_exploit_neighbors.2950_ret
ble_else.11362:
	b	try_exploit_neighbors.2950_ret
try_exploit_neighbors.2950_ret:
	lw	ra, 52(sp)
	lw	fp, 48(sp)
	addi	sp, sp, 56
	jr	ra
write_ppm_header.2957:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	lw	a0, 4(t6)
	li	a1, 80
	sw	a0, 0(sp)
	mv	a0, a1
	call	min_caml_print_char
	li	a0, 51
	call	min_caml_print_char
	li	a0, 10
	call	min_caml_print_char
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	li	a0, 4
	lw	a1, 0(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	li	a0, 255
	call	min_caml_print_int
	li	a0, 10
	call	min_caml_print_char
	b	write_ppm_header.2957_ret
write_ppm_header.2957_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
write_rgb_element.2959:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, ble_else.11369
	li	a1, 0
	bgt	a1, a0, ble_else.11371
	b	ble_cont.11372
ble_else.11371:
	li	a0, 0
ble_cont.11372:
	b	ble_cont.11370
ble_else.11369:
	li	a0, 255
ble_cont.11370:
	call	min_caml_print_int
	b	write_rgb_element.2959_ret
write_rgb_element.2959_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
write_rgb.2961:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	lw	a0, 4(t6)
	li	a1, 0
	add	t6, a0, a1
	flw	fa0, 0(t6)
	sw	a0, 0(sp)
	call	write_rgb_element.2959
	li	a0, 32
	call	min_caml_print_char
	li	a0, 4
	lw	a1, 0(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	call	write_rgb_element.2959
	li	a0, 32
	call	min_caml_print_char
	li	a0, 8
	lw	a1, 0(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	call	write_rgb_element.2959
	li	a0, 10
	call	min_caml_print_char
	b	write_rgb.2961_ret
write_rgb.2961_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
pretrace_diffuse_rays.2963:
	addi	sp, sp, -72
	sw	ra, 68(sp)
	sw	fp, 64(sp)
	addi	fp, sp, 72
	lw	s2, 12(t6)
	lw	s3, 8(t6)
	lw	s4, 4(t6)
	li	s5, 4
	bgt	s1, s5, ble_else.11373
	sw	t6, 0(sp)
	sw	s2, 4(sp)
	sw	s3, 8(sp)
	sw	s4, 12(sp)
	sw	s1, 16(sp)
	sw	a7, 20(sp)
	sw	a6, 24(sp)
	sw	a5, 28(sp)
	sw	a4, 32(sp)
	sw	a3, 36(sp)
	sw	a2, 40(sp)
	sw	a1, 44(sp)
	sw	a0, 48(sp)
	call	get_surface_id.2941
	li	a1, 0
	bgt	a1, a0, ble_else.11374
	lw	a0, 48(sp)
	lw	a1, 44(sp)
	lw	a2, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	call	p_calc_diffuse.2516
	lw	a1, 16(sp)
	slli	a2, a1, 2
	add	t6, a0, a2
	lw	a0, 0(t6)
	li	a2, 0
	bne	a0, a2, beq_else.11375
	b	beq_cont.11376
beq_else.11375:
	lw	a0, 48(sp)
	lw	a2, 44(sp)
	lw	a3, 40(sp)
	lw	a4, 36(sp)
	lw	a5, 32(sp)
	lw	a6, 28(sp)
	lw	a7, 24(sp)
	lw	s1, 20(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	call	p_group_id.2522
	lw	a1, 12(sp)
	sw	a0, 52(sp)
	mv	a0, a1
	call	vecbzero.2438
	lw	a0, 48(sp)
	lw	a1, 44(sp)
	lw	a2, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	call	p_nvectors.2527
	lw	a1, 48(sp)
	lw	a2, 44(sp)
	lw	a3, 40(sp)
	lw	a4, 36(sp)
	lw	a5, 32(sp)
	lw	a6, 28(sp)
	lw	a7, 24(sp)
	lw	s1, 20(sp)
	sw	a0, 56(sp)
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	call	p_intersection_points.2512
	lw	a1, 52(sp)
	slli	a1, a1, 2
	lw	a2, 8(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 16(sp)
	slli	a3, a2, 2
	lw	a4, 56(sp)
	add	t6, a4, a3
	lw	a3, 0(t6)
	slli	a4, a2, 2
	add	t6, a0, a4
	lw	a0, 0(t6)
	lw	t6, 4(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a3
	lw	ra, 0(t6)
	jr	ra
	lw	a0, 48(sp)
	lw	a1, 44(sp)
	lw	a2, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	call	p_received_ray_20percent.2520
	lw	a1, 16(sp)
	slli	a2, a1, 2
	add	t6, a0, a2
	lw	a0, 0(t6)
	lw	a2, 12(sp)
	mv	a1, a2
	call	veccpy.2440
beq_cont.11376:
	lw	a0, 16(sp)
	addi	s1, a0, 1
	lw	a0, 48(sp)
	lw	a1, 44(sp)
	lw	a2, 40(sp)
	lw	a3, 36(sp)
	lw	a4, 32(sp)
	lw	a5, 28(sp)
	lw	a6, 24(sp)
	lw	a7, 20(sp)
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jr	ra
	b	pretrace_diffuse_rays.2963_ret
ble_else.11374:
	b	pretrace_diffuse_rays.2963_ret
ble_else.11373:
	b	pretrace_diffuse_rays.2963_ret
pretrace_diffuse_rays.2963_ret:
	lw	ra, 68(sp)
	lw	fp, 64(sp)
	addi	sp, sp, 72
	jr	ra
pretrace_pixels.2966:
	addi	sp, sp, -104
	sw	ra, 100(sp)
	sw	fp, 96(sp)
	addi	fp, sp, 104
	lw	a3, 36(t6)
	lw	a4, 32(t6)
	lw	a5, 28(t6)
	lw	a6, 24(t6)
	lw	a7, 20(t6)
	lw	s1, 16(t6)
	lw	s2, 12(t6)
	lw	s3, 8(t6)
	lw	s4, 4(t6)
	li	s5, 0
	bgt	s5, a1, ble_else.11379
	li	s5, 0
	add	t6, a7, s5
	flw	fa3, 0(t6)
	li	a7, 0
	add	t6, s4, a7
	lw	a7, 0(t6)
	sub	a7, a1, a7
	sw	t6, 0(sp)
	sw	s3, 4(sp)
	sw	a2, 8(sp)
	sw	a4, 12(sp)
	sw	a0, 16(sp)
	sw	a1, 20(sp)
	sw	a3, 24(sp)
	sw	a5, 28(sp)
	sw	s1, 32(sp)
	fsw	fa2, 40(sp)
	fsw	fa1, 48(sp)
	sw	s2, 56(sp)
	fsw	fa0, 64(sp)
	sw	a6, 72(sp)
	fsw	fa3, 80(sp)
	mv	a0, a7
	call	min_caml_float_of_int
	flw	fa1, 80(sp)
	fmul.s	fa0, fa1, fa0
	li	a0, 0
	lw	a1, 72(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa1, fa0, fa1
	flw	fa2, 64(sp)
	fadd.s	fa1, fa1, fa2
	li	a0, 0
	lw	a2, 56(sp)
	add	t6, a2, a0
	fsw	fa1, 0(t6)
	li	a0, 4
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa1, fa0, fa1
	flw	fa3, 48(sp)
	fadd.s	fa1, fa1, fa3
	li	a0, 4
	add	t6, a2, a0
	fsw	fa1, 0(t6)
	li	a0, 8
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	flw	fa1, 40(sp)
	fadd.s	fa0, fa0, fa1
	li	a0, 8
	add	t6, a2, a0
	fsw	fa0, 0(t6)
	li	a1, 0
	mv	a0, a2
	call	vecunit_sgn.2443
	lw	a0, 32(sp)
	call	vecbzero.2438
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	call	veccpy.2440
	li	a0, 0
	fli	fa0, l.7008
	lw	a1, 20(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	fli	fa1, l.7005
	lw	a4, 56(sp)
	lw	t6, 12(sp)
	mv	a1, a4
	lw	ra, 0(t6)
	jr	ra
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	mv	a0, a1
	call	p_rgb.2510
	lw	a1, 32(sp)
	call	veccpy.2440
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a3, 8(sp)
	mv	a0, a1
	mv	a1, a3
	call	p_set_group_id.2524
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, 0
	lw	t6, 4(sp)
	mv	a0, a1
	mv	a1, a3
	lw	ra, 0(t6)
	jr	ra
	lw	a0, 20(sp)
	addi	a0, a0, -1
	li	a1, 1
	lw	a2, 8(sp)
	sw	a0, 88(sp)
	mv	a0, a2
	call	add_mod5.2427
	mv	a2, a0
	flw	fa0, 64(sp)
	flw	fa1, 48(sp)
	flw	fa2, 40(sp)
	lw	a0, 16(sp)
	lw	a1, 88(sp)
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jr	ra
	b	pretrace_pixels.2966_ret
ble_else.11379:
	b	pretrace_pixels.2966_ret
pretrace_pixels.2966_ret:
	lw	ra, 100(sp)
	lw	fp, 96(sp)
	addi	sp, sp, 104
	jr	ra
pretrace_line.2973:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a3, 24(t6)
	lw	a4, 20(t6)
	lw	a5, 16(t6)
	lw	a6, 12(t6)
	lw	a7, 8(t6)
	lw	s1, 4(t6)
	li	s2, 0
	add	t6, a5, s2
	flw	fa0, 0(t6)
	li	a5, 4
	add	t6, s1, a5
	lw	a5, 0(t6)
	sub	a1, a1, a5
	sw	a2, 0(sp)
	sw	a0, 4(sp)
	sw	a6, 8(sp)
	sw	a7, 12(sp)
	sw	a3, 16(sp)
	sw	a4, 20(sp)
	fsw	fa0, 24(sp)
	mv	a0, a1
	call	min_caml_float_of_int
	flw	fa1, 24(sp)
	fmul.s	fa0, fa1, fa0
	li	a0, 0
	lw	a1, 20(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa1, fa0, fa1
	li	a0, 0
	lw	a2, 16(sp)
	add	t6, a2, a0
	flw	fa2, 0(t6)
	fadd.s	fa1, fa1, fa2
	li	a0, 4
	add	t6, a1, a0
	flw	fa2, 0(t6)
	fmul.s	fa2, fa0, fa2
	li	a0, 4
	add	t6, a2, a0
	flw	fa3, 0(t6)
	fadd.s	fa2, fa2, fa3
	li	a0, 8
	add	t6, a1, a0
	flw	fa3, 0(t6)
	fmul.s	fa0, fa0, fa3
	li	a0, 8
	add	t6, a2, a0
	flw	fa3, 0(t6)
	fadd.s	fa0, fa0, fa3
	li	a0, 0
	lw	a1, 12(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	addi	a1, a0, -1
	lw	a0, 4(sp)
	lw	a2, 0(sp)
	lw	t6, 8(sp)
	fmv.s	ft11, fa2
	fmv.s	fa2, fa0
	fmv.s	fa0, fa1
	fmv.s	fa1, ft11
	lw	ra, 0(t6)
	jr	ra
	b	pretrace_line.2973_ret
pretrace_line.2973_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
scan_pixel.2977:
	addi	sp, sp, -56
	sw	ra, 52(sp)
	sw	fp, 48(sp)
	addi	fp, sp, 56
	lw	a5, 24(t6)
	lw	a6, 20(t6)
	lw	a7, 16(t6)
	lw	s1, 12(t6)
	lw	s2, 8(t6)
	lw	s3, 4(t6)
	li	s4, 0
	add	t6, s2, s4
	lw	s2, 0(t6)
	bgt	s2, a0, ble_else.11384
	b	scan_pixel.2977_ret
ble_else.11384:
	slli	s2, a0, 2
	add	t6, a3, s2
	lw	s2, 0(t6)
	sw	t6, 0(sp)
	sw	a5, 4(sp)
	sw	a2, 8(sp)
	sw	a6, 12(sp)
	sw	s3, 16(sp)
	sw	a3, 20(sp)
	sw	a4, 24(sp)
	sw	a1, 28(sp)
	sw	a0, 32(sp)
	sw	s1, 36(sp)
	sw	a7, 40(sp)
	mv	a0, s2
	call	p_rgb.2510
	mv	a1, a0
	lw	a0, 40(sp)
	call	veccpy.2440
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	lw	t6, 36(sp)
	lw	ra, 0(t6)
	jr	ra
	li	a1, 0
	bne	a0, a1, beq_else.11386
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 20(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, 0
	lw	t6, 16(sp)
	mv	a0, a1
	mv	a1, a3
	lw	ra, 0(t6)
	jr	ra
	b	beq_cont.11387
beq_else.11386:
	li	a5, 0
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 8(sp)
	lw	a3, 20(sp)
	lw	a4, 24(sp)
	lw	t6, 12(sp)
	lw	ra, 0(t6)
	jr	ra
beq_cont.11387:
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jr	ra
	lw	a0, 32(sp)
	addi	a0, a0, 1
	lw	a1, 28(sp)
	lw	a2, 8(sp)
	lw	a3, 20(sp)
	lw	a4, 24(sp)
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jr	ra
	b	scan_pixel.2977_ret
scan_pixel.2977_ret:
	lw	ra, 52(sp)
	lw	fp, 48(sp)
	addi	sp, sp, 56
	jr	ra
scan_line.2983:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a5, 12(t6)
	lw	a6, 8(t6)
	lw	a7, 4(t6)
	li	s1, 4
	add	t6, a7, s1
	lw	s1, 0(t6)
	bgt	s1, a0, ble_else.11388
	b	scan_line.2983_ret
ble_else.11388:
	li	s1, 4
	add	t6, a7, s1
	lw	a7, 0(t6)
	addi	a7, a7, -1
	sw	t6, 0(sp)
	sw	a4, 4(sp)
	sw	a3, 8(sp)
	sw	a2, 12(sp)
	sw	a1, 16(sp)
	sw	a0, 20(sp)
	sw	a5, 24(sp)
	bgt	a7, a0, ble_else.11390
	b	ble_cont.11391
ble_else.11390:
	addi	a7, a0, 1
	mv	a2, a4
	mv	a1, a7
	mv	a0, a3
	mv	t6, a6
	lw	ra, 0(t6)
	jr	ra
ble_cont.11391:
	li	a0, 0
	lw	a1, 20(sp)
	lw	a2, 16(sp)
	lw	a3, 12(sp)
	lw	a4, 8(sp)
	lw	t6, 24(sp)
	lw	ra, 0(t6)
	jr	ra
	lw	a0, 20(sp)
	addi	a0, a0, 1
	li	a1, 2
	lw	a2, 4(sp)
	sw	a0, 28(sp)
	mv	a0, a2
	call	add_mod5.2427
	mv	a4, a0
	lw	a0, 28(sp)
	lw	a1, 12(sp)
	lw	a2, 8(sp)
	lw	a3, 16(sp)
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jr	ra
	b	scan_line.2983_ret
scan_line.2983_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
create_float5x3array.2989:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	li	a0, 3
	fli	fa0, l.7005
	call	min_caml_create_array
	mv	a1, a0
	li	a0, 5
	call	min_caml_create_array
	li	a1, 3
	fli	fa0, l.7005
	sw	a0, 0(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 4
	lw	a2, 0(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	li	a0, 3
	fli	fa0, l.7005
	call	min_caml_create_array
	li	a1, 8
	lw	a2, 0(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	li	a0, 3
	fli	fa0, l.7005
	call	min_caml_create_array
	li	a1, 12
	lw	a2, 0(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	li	a0, 3
	fli	fa0, l.7005
	call	min_caml_create_array
	li	a1, 16
	lw	a2, 0(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	mv	a0, a2
	b	create_float5x3array.2989_ret
create_float5x3array.2989_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
create_pixel.2991:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	sw	fp, 32(sp)
	addi	fp, sp, 40
	li	a0, 3
	fli	fa0, l.7005
	call	min_caml_create_array
	sw	a0, 0(sp)
	call	create_float5x3array.2989
	li	a1, 5
	li	a2, 0
	sw	a0, 4(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 5
	li	a2, 0
	sw	a0, 8(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	sw	a0, 12(sp)
	call	create_float5x3array.2989
	sw	a0, 16(sp)
	call	create_float5x3array.2989
	li	a1, 1
	li	a2, 0
	sw	a0, 20(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	sw	a0, 24(sp)
	call	create_float5x3array.2989
	mv	a1, gp
	addi	gp, gp, 32
	sw	a0, 28(a1)
	lw	a0, 24(sp)
	sw	a0, 24(a1)
	lw	a0, 20(sp)
	sw	a0, 20(a1)
	lw	a0, 16(sp)
	sw	a0, 16(a1)
	lw	a0, 12(sp)
	sw	a0, 12(a1)
	lw	a0, 8(sp)
	sw	a0, 8(a1)
	lw	a0, 4(sp)
	sw	a0, 4(a1)
	lw	a0, 0(sp)
	sw	a0, 0(a1)
	mv	a0, a1
	b	create_pixel.2991_ret
create_pixel.2991_ret:
	lw	ra, 36(sp)
	lw	fp, 32(sp)
	addi	sp, sp, 40
	jr	ra
init_line_elements.2993:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	li	a2, 0
	bgt	a2, a1, ble_else.11393
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	create_pixel.2991
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 0(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements.2993
	b	init_line_elements.2993_ret
ble_else.11393:
	b	init_line_elements.2993_ret
init_line_elements.2993_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
create_pixelline.2996:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	lw	a0, 4(t6)
	li	a1, 0
	add	t6, a0, a1
	lw	a1, 0(t6)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	create_pixel.2991
	mv	a1, a0
	lw	a0, 4(sp)
	call	min_caml_create_array
	li	a1, 0
	lw	a2, 0(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	addi	a1, a1, -2
	call	init_line_elements.2993
	b	create_pixelline.2996_ret
create_pixelline.2996_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
tan.2998:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	fsw	fa0, 0(sp)
	call	min_caml_sin
	flw	fa1, 0(sp)
	fsw	fa0, 8(sp)
	fmv.s	fa0, fa1
	call	min_caml_cos
	flw	fa1, 8(sp)
	fdiv.s	fa0, fa1, fa0
	b	tan.2998_ret
tan.2998_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
adjust_position.3000:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	fmul.s	fa0, fa0, fa0
	fli	fa2, l.7453
	fadd.s	fa0, fa0, fa2
	fsqrt.s	fa0, fa0
	fli	fa2, l.7008
	fdiv.s	fa2, fa2, fa0
	fsw	fa0, 0(sp)
	fsw	fa1, 8(sp)
	fmv.s	fa0, fa2
	call	min_caml_atan
	flw	fa1, 8(sp)
	fmul.s	fa0, fa0, fa1
	call	tan.2998
	flw	fa1, 0(sp)
	fmul.s	fa0, fa0, fa1
	b	adjust_position.3000_ret
adjust_position.3000_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
calc_dirvec.3003:
	addi	sp, sp, -192
	sw	ra, 188(sp)
	sw	fp, 184(sp)
	addi	fp, sp, 192
	lw	a3, 4(t6)
	li	a4, 5
	bgt	a4, a0, ble_else.11394
	sw	a2, 0(sp)
	sw	a3, 4(sp)
	sw	a1, 8(sp)
	fsw	fa0, 16(sp)
	fsw	fa1, 24(sp)
	call	fsqr.2410
	flw	fa1, 24(sp)
	fsw	fa0, 32(sp)
	fmv.s	fa0, fa1
	call	fsqr.2410
	flw	fa1, 32(sp)
	fadd.s	fa0, fa1, fa0
	fli	fa1, l.7008
	fadd.s	fa0, fa0, fa1
	fsqrt.s	fa0, fa0
	flw	fa1, 16(sp)
	fdiv.s	fa1, fa1, fa0
	flw	fa2, 24(sp)
	fdiv.s	fa2, fa2, fa0
	fli	fa3, l.7008
	fdiv.s	fa0, fa3, fa0
	lw	a0, 8(sp)
	slli	a0, a0, 2
	lw	a1, 4(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 0(sp)
	slli	a2, a1, 2
	add	t6, a0, a2
	lw	a2, 0(t6)
	sw	a0, 40(sp)
	fsw	fa0, 48(sp)
	fsw	fa2, 56(sp)
	fsw	fa1, 64(sp)
	mv	a0, a2
	call	d_vec.2529
	flw	fa0, 64(sp)
	flw	fa1, 56(sp)
	flw	fa2, 48(sp)
	call	vecset.2430
	lw	a0, 0(sp)
	addi	a1, a0, 40
	slli	a1, a1, 2
	lw	a2, 40(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	mv	a0, a1
	call	d_vec.2529
	flw	fa0, 56(sp)
	sw	a0, 72(sp)
	call	fneg.2408
	fmv.s	fa2, fa0
	flw	fa0, 64(sp)
	flw	fa1, 48(sp)
	lw	a0, 72(sp)
	call	vecset.2430
	lw	a0, 0(sp)
	addi	a1, a0, 80
	slli	a1, a1, 2
	lw	a2, 40(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	mv	a0, a1
	call	d_vec.2529
	flw	fa0, 64(sp)
	sw	a0, 76(sp)
	call	fneg.2408
	flw	fa1, 56(sp)
	fsw	fa0, 80(sp)
	fmv.s	fa0, fa1
	call	fneg.2408
	fmv.s	fa2, fa0
	flw	fa0, 48(sp)
	flw	fa1, 80(sp)
	lw	a0, 76(sp)
	call	vecset.2430
	lw	a0, 0(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 40(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	mv	a0, a1
	call	d_vec.2529
	flw	fa0, 64(sp)
	sw	a0, 88(sp)
	call	fneg.2408
	flw	fa1, 56(sp)
	fsw	fa0, 96(sp)
	fmv.s	fa0, fa1
	call	fneg.2408
	flw	fa1, 48(sp)
	fsw	fa0, 104(sp)
	fmv.s	fa0, fa1
	call	fneg.2408
	fmv.s	fa2, fa0
	flw	fa0, 96(sp)
	flw	fa1, 104(sp)
	lw	a0, 88(sp)
	call	vecset.2430
	lw	a0, 0(sp)
	addi	a1, a0, 41
	slli	a1, a1, 2
	lw	a2, 40(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	mv	a0, a1
	call	d_vec.2529
	flw	fa0, 64(sp)
	sw	a0, 112(sp)
	call	fneg.2408
	flw	fa1, 48(sp)
	fsw	fa0, 120(sp)
	fmv.s	fa0, fa1
	call	fneg.2408
	fmv.s	fa1, fa0
	flw	fa0, 120(sp)
	flw	fa2, 56(sp)
	lw	a0, 112(sp)
	call	vecset.2430
	lw	a0, 0(sp)
	addi	a0, a0, 81
	slli	a0, a0, 2
	lw	a1, 40(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	call	d_vec.2529
	flw	fa0, 48(sp)
	sw	a0, 128(sp)
	call	fneg.2408
	flw	fa1, 64(sp)
	flw	fa2, 56(sp)
	lw	a0, 128(sp)
	call	vecset.2430
	b	calc_dirvec.3003_ret
ble_else.11394:
	fsw	fa2, 136(sp)
	sw	a2, 0(sp)
	sw	a1, 8(sp)
	sw	t6, 144(sp)
	fsw	fa3, 152(sp)
	sw	a0, 160(sp)
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	call	adjust_position.3000
	lw	a0, 160(sp)
	addi	a0, a0, 1
	flw	fa1, 152(sp)
	fsw	fa0, 168(sp)
	sw	a0, 176(sp)
	call	adjust_position.3000
	fmv.s	fa1, fa0
	flw	fa0, 168(sp)
	flw	fa2, 136(sp)
	flw	fa3, 152(sp)
	lw	a0, 176(sp)
	lw	a1, 8(sp)
	lw	a2, 0(sp)
	lw	t6, 144(sp)
	lw	ra, 0(t6)
	jr	ra
	b	calc_dirvec.3003_ret
calc_dirvec.3003_ret:
	lw	ra, 188(sp)
	lw	fp, 184(sp)
	addi	sp, sp, 192
	jr	ra
calc_dirvecs.3011:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a3, 4(t6)
	li	a4, 0
	bgt	a4, a0, ble_else.11402
	sw	t6, 0(sp)
	sw	a0, 4(sp)
	fsw	fa0, 8(sp)
	sw	a2, 16(sp)
	sw	a1, 20(sp)
	sw	a3, 24(sp)
	call	min_caml_float_of_int
	fli	fa1, l.7565
	fmul.s	fa0, fa0, fa1
	fli	fa1, l.7566
	fsub.s	fa2, fa0, fa1
	li	a0, 0
	fli	fa0, l.7005
	fli	fa1, l.7005
	flw	fa3, 8(sp)
	lw	a1, 20(sp)
	lw	a2, 16(sp)
	lw	t6, 24(sp)
	lw	ra, 0(t6)
	jr	ra
	lw	a0, 4(sp)
	call	min_caml_float_of_int
	fli	fa1, l.7565
	fmul.s	fa0, fa0, fa1
	fli	fa1, l.7453
	fadd.s	fa2, fa0, fa1
	li	a0, 0
	fli	fa0, l.7005
	fli	fa1, l.7005
	lw	a1, 16(sp)
	addi	a2, a1, 2
	flw	fa3, 8(sp)
	lw	a3, 20(sp)
	lw	t6, 24(sp)
	mv	a1, a3
	lw	ra, 0(t6)
	jr	ra
	lw	a0, 4(sp)
	addi	a0, a0, -1
	li	a1, 1
	lw	a2, 20(sp)
	sw	a0, 28(sp)
	mv	a0, a2
	call	add_mod5.2427
	mv	a1, a0
	flw	fa0, 8(sp)
	lw	a0, 28(sp)
	lw	a2, 16(sp)
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jr	ra
	b	calc_dirvecs.3011_ret
ble_else.11402:
	b	calc_dirvecs.3011_ret
calc_dirvecs.3011_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
calc_dirvec_rows.3016:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	lw	a3, 4(t6)
	li	a4, 0
	bgt	a4, a0, ble_else.11404
	sw	t6, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	sw	a1, 12(sp)
	sw	a3, 16(sp)
	call	min_caml_float_of_int
	fli	fa1, l.7565
	fmul.s	fa0, fa0, fa1
	fli	fa1, l.7566
	fsub.s	fa0, fa0, fa1
	li	a0, 4
	lw	a1, 12(sp)
	lw	a2, 8(sp)
	lw	t6, 16(sp)
	lw	ra, 0(t6)
	jr	ra
	lw	a0, 4(sp)
	addi	a0, a0, -1
	li	a1, 2
	lw	a2, 12(sp)
	sw	a0, 20(sp)
	mv	a0, a2
	call	add_mod5.2427
	mv	a1, a0
	lw	a0, 8(sp)
	addi	a2, a0, 4
	lw	a0, 20(sp)
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jr	ra
	b	calc_dirvec_rows.3016_ret
ble_else.11404:
	b	calc_dirvec_rows.3016_ret
calc_dirvec_rows.3016_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
create_dirvec.3020:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	lw	a0, 4(t6)
	li	a1, 3
	fli	fa0, l.7005
	sw	a0, 0(sp)
	mv	a0, a1
	call	min_caml_create_array
	mv	a1, a0
	li	a0, 0
	lw	a2, 0(sp)
	add	t6, a2, a0
	lw	a0, 0(t6)
	sw	a1, 4(sp)
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 4(sp)
	sw	a0, 0(a1)
	mv	a0, a1
	b	create_dirvec.3020_ret
create_dirvec.3020_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
create_dirvec_elements.3022:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a2, 4(t6)
	li	a3, 0
	bgt	a3, a1, ble_else.11406
	sw	t6, 0(sp)
	sw	a0, 4(sp)
	sw	a1, 8(sp)
	mv	t6, a2
	lw	ra, 0(t6)
	jr	ra
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 4(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	lw	t6, 0(sp)
	mv	a0, a3
	lw	ra, 0(t6)
	jr	ra
	b	create_dirvec_elements.3022_ret
ble_else.11406:
	b	create_dirvec_elements.3022_ret
create_dirvec_elements.3022_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
create_dirvecs.3025:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	fp, 24(sp)
	addi	fp, sp, 32
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	li	a4, 0
	bgt	a4, a0, ble_else.11408
	li	a4, 120
	sw	t6, 0(sp)
	sw	a2, 4(sp)
	sw	a1, 8(sp)
	sw	a0, 12(sp)
	sw	a4, 16(sp)
	mv	t6, a3
	lw	ra, 0(t6)
	jr	ra
	mv	a1, a0
	lw	a0, 16(sp)
	call	min_caml_create_array
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	slli	a0, a1, 2
	add	t6, a3, a0
	lw	a0, 0(t6)
	li	a2, 118
	lw	t6, 4(sp)
	mv	a1, a2
	lw	ra, 0(t6)
	jr	ra
	lw	a0, 12(sp)
	addi	a0, a0, -1
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jr	ra
	b	create_dirvecs.3025_ret
ble_else.11408:
	b	create_dirvecs.3025_ret
create_dirvecs.3025_ret:
	lw	ra, 28(sp)
	lw	fp, 24(sp)
	addi	sp, sp, 32
	jr	ra
init_dirvec_constants.3027:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	li	a2, 0
	bgt	a2, a1, ble_else.11410
	slli	a2, a1, 2
	add	t6, a0, a2
	lw	a2, 0(t6)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	mv	a0, a2
	call	setup_dirvec_constants.2698
	lw	a0, 4(sp)
	addi	a1, a0, -1
	lw	a0, 0(sp)
	call	init_dirvec_constants.3027
	b	init_dirvec_constants.3027_ret
ble_else.11410:
	b	init_dirvec_constants.3027_ret
init_dirvec_constants.3027_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
init_vecset_constants.3030:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	lw	a1, 4(t6)
	li	a2, 0
	bgt	a2, a0, ble_else.11412
	slli	a2, a0, 2
	add	t6, a1, a2
	lw	a1, 0(t6)
	li	a2, 119
	sw	t6, 0(sp)
	sw	a0, 4(sp)
	mv	a0, a1
	mv	a1, a2
	call	init_dirvec_constants.3027
	lw	a0, 4(sp)
	addi	a0, a0, -1
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jr	ra
	b	init_vecset_constants.3030_ret
ble_else.11412:
	b	init_vecset_constants.3030_ret
init_vecset_constants.3030_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
init_dirvecs.3032:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	lw	a0, 12(t6)
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	li	a3, 4
	sw	a0, 0(sp)
	sw	a2, 4(sp)
	mv	a0, a3
	mv	t6, a1
	lw	ra, 0(t6)
	jr	ra
	li	a0, 9
	li	a1, 0
	li	a2, 0
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jr	ra
	li	a0, 4
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jr	ra
	b	init_dirvecs.3032_ret
init_dirvecs.3032_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
add_reflection.3034:
	addi	sp, sp, -64
	sw	ra, 60(sp)
	sw	fp, 56(sp)
	addi	fp, sp, 64
	lw	a2, 8(t6)
	lw	t6, 4(t6)
	sw	a2, 0(sp)
	sw	a0, 4(sp)
	sw	a1, 8(sp)
	fsw	fa0, 16(sp)
	fsw	fa3, 24(sp)
	fsw	fa2, 32(sp)
	fsw	fa1, 40(sp)
	lw	ra, 0(t6)
	jr	ra
	sw	a0, 48(sp)
	call	d_vec.2529
	flw	fa0, 40(sp)
	flw	fa1, 32(sp)
	flw	fa2, 24(sp)
	call	vecset.2430
	lw	a0, 48(sp)
	call	setup_dirvec_constants.2698
	mv	a0, gp
	addi	gp, gp, 16
	flw	fa0, 16(sp)
	fsw	fa0, 8(a0)
	lw	a1, 48(sp)
	sw	a1, 4(a0)
	lw	a1, 8(sp)
	sw	a1, 0(a0)
	lw	a1, 4(sp)
	slli	a1, a1, 2
	lw	a2, 0(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	b	add_reflection.3034_ret
add_reflection.3034_ret:
	lw	ra, 60(sp)
	lw	fp, 56(sp)
	addi	sp, sp, 64
	jr	ra
setup_rect_reflection.3041:
	addi	sp, sp, -76
	sw	ra, 72(sp)
	sw	fp, 68(sp)
	addi	fp, sp, 76
	lw	s5, 12(t6)
	lw	s6, 8(t6)
	lw	s7, 4(t6)
	slli	a0, a0, 2
	li	s8, 0
	add	t6, s5, s8
	lw	s8, 0(t6)
	fli	fa0, l.7008
	sw	s5, 0(sp)
	sw	s8, 4(sp)
	sw	s7, 8(sp)
	sw	a0, 12(sp)
	sw	s6, 16(sp)
	fsw	fa0, 24(sp)
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_diffuse.2492
	flw	fa1, 24(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 0
	lw	a1, 16(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fsw	fa0, 32(sp)
	fmv.s	fa0, fa1
	call	fneg.2408
	li	a0, 4
	lw	a1, 16(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fsw	fa0, 40(sp)
	fmv.s	fa0, fa1
	call	fneg.2408
	li	a0, 8
	lw	a1, 16(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fsw	fa0, 48(sp)
	fmv.s	fa0, fa1
	call	fneg.2408
	fmv.s	fa3, fa0
	lw	a0, 12(sp)
	addi	a1, a0, 1
	li	a2, 0
	lw	a3, 16(sp)
	add	t6, a3, a2
	flw	fa1, 0(t6)
	flw	fa0, 32(sp)
	flw	fa2, 48(sp)
	lw	a2, 4(sp)
	lw	t6, 8(sp)
	fsw	fa3, 56(sp)
	mv	a0, a2
	lw	ra, 0(t6)
	jr	ra
	lw	a0, 4(sp)
	addi	a1, a0, 1
	lw	a2, 12(sp)
	addi	a3, a2, 2
	li	a4, 4
	lw	a5, 16(sp)
	add	t6, a5, a4
	flw	fa2, 0(t6)
	flw	fa0, 32(sp)
	flw	fa1, 40(sp)
	flw	fa3, 56(sp)
	lw	t6, 8(sp)
	mv	a0, a1
	mv	a1, a3
	lw	ra, 0(t6)
	jr	ra
	lw	a0, 4(sp)
	addi	a1, a0, 2
	lw	a2, 12(sp)
	addi	a2, a2, 3
	li	a3, 8
	lw	a4, 16(sp)
	add	t6, a4, a3
	flw	fa3, 0(t6)
	flw	fa0, 32(sp)
	flw	fa1, 40(sp)
	flw	fa2, 48(sp)
	lw	t6, 8(sp)
	mv	a0, a1
	mv	a1, a2
	lw	ra, 0(t6)
	jr	ra
	lw	a0, 4(sp)
	addi	a0, a0, 3
	li	a1, 0
	lw	a2, 0(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	b	setup_rect_reflection.3041_ret
setup_rect_reflection.3041_ret:
	lw	ra, 72(sp)
	lw	fp, 68(sp)
	addi	sp, sp, 76
	jr	ra
setup_surface_reflection.3044:
	addi	sp, sp, -140
	sw	ra, 136(sp)
	sw	fp, 132(sp)
	addi	fp, sp, 140
	lw	s5, 12(t6)
	lw	s6, 8(t6)
	lw	s7, 4(t6)
	slli	a0, a0, 2
	addi	a0, a0, 1
	li	s8, 0
	add	t6, s5, s8
	lw	s8, 0(t6)
	fli	fa0, l.7008
	sw	s5, 0(sp)
	sw	a0, 4(sp)
	sw	s8, 8(sp)
	sw	s7, 12(sp)
	sw	s6, 16(sp)
	sw	s4, 20(sp)
	sw	s3, 24(sp)
	sw	s2, 28(sp)
	sw	s1, 32(sp)
	sw	a7, 36(sp)
	sw	a6, 40(sp)
	sw	a5, 44(sp)
	sw	a4, 48(sp)
	sw	a3, 52(sp)
	sw	a2, 56(sp)
	sw	a1, 60(sp)
	fsw	fa0, 64(sp)
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_diffuse.2492
	flw	fa1, 64(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 60(sp)
	lw	a1, 56(sp)
	lw	a2, 52(sp)
	lw	a3, 48(sp)
	lw	a4, 44(sp)
	lw	a5, 40(sp)
	lw	a6, 36(sp)
	lw	a7, 32(sp)
	lw	s1, 28(sp)
	lw	s2, 24(sp)
	lw	s3, 20(sp)
	fsw	fa0, 72(sp)
	call	o_param_abc.2484
	mv	a1, a0
	lw	a0, 16(sp)
	call	veciprod.2446
	fli	fa1, l.7007
	lw	a0, 60(sp)
	lw	a1, 56(sp)
	lw	a2, 52(sp)
	lw	a3, 48(sp)
	lw	a4, 44(sp)
	lw	a5, 40(sp)
	lw	a6, 36(sp)
	lw	a7, 32(sp)
	lw	s1, 28(sp)
	lw	s2, 24(sp)
	lw	s3, 20(sp)
	fsw	fa0, 80(sp)
	fsw	fa1, 88(sp)
	call	o_param_a.2478
	flw	fa1, 88(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 80(sp)
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 16(sp)
	add	t6, a1, a0
	flw	fa2, 0(t6)
	fsub.s	fa0, fa0, fa2
	fli	fa2, l.7007
	lw	a0, 60(sp)
	lw	a2, 56(sp)
	lw	a3, 52(sp)
	lw	a4, 48(sp)
	lw	a5, 44(sp)
	lw	a6, 40(sp)
	lw	a7, 36(sp)
	lw	s1, 32(sp)
	lw	s2, 28(sp)
	lw	s3, 24(sp)
	lw	s4, 20(sp)
	fsw	fa0, 96(sp)
	fsw	fa2, 104(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_b.2480
	flw	fa1, 104(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 80(sp)
	fmul.s	fa0, fa0, fa1
	li	a0, 4
	lw	a1, 16(sp)
	add	t6, a1, a0
	flw	fa2, 0(t6)
	fsub.s	fa0, fa0, fa2
	fli	fa2, l.7007
	lw	a0, 60(sp)
	lw	a2, 56(sp)
	lw	a3, 52(sp)
	lw	a4, 48(sp)
	lw	a5, 44(sp)
	lw	a6, 40(sp)
	lw	a7, 36(sp)
	lw	s1, 32(sp)
	lw	s2, 28(sp)
	lw	s3, 24(sp)
	lw	s4, 20(sp)
	fsw	fa0, 112(sp)
	fsw	fa2, 120(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	mv	a7, s1
	mv	s1, s2
	mv	s2, s3
	mv	s3, s4
	call	o_param_c.2482
	flw	fa1, 120(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 80(sp)
	fmul.s	fa0, fa0, fa1
	li	a0, 8
	lw	a1, 16(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fsub.s	fa3, fa0, fa1
	flw	fa0, 72(sp)
	flw	fa1, 96(sp)
	flw	fa2, 112(sp)
	lw	a0, 8(sp)
	lw	a1, 4(sp)
	lw	t6, 12(sp)
	lw	ra, 0(t6)
	jr	ra
	lw	a0, 8(sp)
	addi	a0, a0, 1
	li	a1, 0
	lw	a2, 0(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	b	setup_surface_reflection.3044_ret
setup_surface_reflection.3044_ret:
	lw	ra, 136(sp)
	lw	fp, 132(sp)
	addi	sp, sp, 140
	jr	ra
setup_reflections.3047:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	li	a4, 0
	bgt	a4, a0, ble_else.11419
	slli	a4, a0, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	sw	a3, 12(sp)
	mv	a0, a3
	call	o_reflectiontype.2472
	li	a1, 2
	bne	a0, a1, beq_else.11420
	lw	a0, 12(sp)
	call	o_diffuse.2492
	fli	fa1, l.7008
	call	fless.2412
	li	a1, 0
	bne	a0, a1, beq_else.11421
	b	setup_reflections.3047_ret
beq_else.11421:
	lw	a0, 12(sp)
	call	o_form.2470
	li	a1, 1
	bne	a0, a1, beq_else.11423
	lw	a0, 4(sp)
	lw	a1, 12(sp)
	lw	t6, 8(sp)
	lw	ra, 0(t6)
	jr	ra
	b	setup_reflections.3047_ret
beq_else.11423:
	li	a1, 2
	bne	a0, a1, beq_else.11424
	lw	a0, 4(sp)
	lw	a1, 12(sp)
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jr	ra
	b	setup_reflections.3047_ret
beq_else.11424:
	b	setup_reflections.3047_ret
beq_else.11420:
	b	setup_reflections.3047_ret
ble_else.11419:
	b	setup_reflections.3047_ret
setup_reflections.3047_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
rt.3049:
	addi	sp, sp, -72
	sw	ra, 68(sp)
	sw	fp, 64(sp)
	addi	fp, sp, 72
	lw	a2, 48(t6)
	lw	a3, 44(t6)
	lw	a4, 40(t6)
	lw	a5, 36(t6)
	lw	a6, 32(t6)
	lw	a7, 28(t6)
	lw	s1, 24(t6)
	lw	s2, 20(t6)
	lw	s3, 16(t6)
	lw	s4, 12(t6)
	lw	s5, 8(t6)
	lw	s6, 4(t6)
	li	s7, 0
	add	t6, s4, s7
	sw	a0, 0(t6)
	li	s7, 4
	add	t6, s4, s7
	sw	a1, 0(t6)
	srai	s4, a0, 1
	li	s7, 0
	add	t6, s5, s7
	sw	s4, 0(t6)
	srai	a1, a1, 1
	li	s4, 4
	add	t6, s5, s4
	sw	a1, 0(t6)
	fli	fa0, l.7599
	sw	a5, 0(sp)
	sw	a6, 4(sp)
	sw	a3, 8(sp)
	sw	a7, 12(sp)
	sw	s2, 16(sp)
	sw	s1, 20(sp)
	sw	s3, 24(sp)
	sw	a2, 28(sp)
	sw	s6, 32(sp)
	sw	a4, 36(sp)
	fsw	fa0, 40(sp)
	call	min_caml_float_of_int
	flw	fa1, 40(sp)
	fdiv.s	fa0, fa1, fa0
	li	a0, 0
	lw	a1, 36(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	lw	t6, 32(sp)
	lw	ra, 0(t6)
	jr	ra
	lw	t6, 32(sp)
	sw	a0, 48(sp)
	lw	ra, 0(t6)
	jr	ra
	lw	t6, 32(sp)
	sw	a0, 52(sp)
	lw	ra, 0(t6)
	jr	ra
	sw	a0, 56(sp)
	call	read_parameter.2573
	lw	t6, 28(sp)
	lw	ra, 0(t6)
	jr	ra
	lw	t6, 24(sp)
	lw	ra, 0(t6)
	jr	ra
	lw	a0, 20(sp)
	call	d_vec.2529
	lw	a1, 16(sp)
	call	veccpy.2440
	lw	a0, 20(sp)
	call	setup_dirvec_constants.2698
	li	a0, 0
	lw	a1, 12(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	addi	a0, a0, -1
	lw	t6, 8(sp)
	lw	ra, 0(t6)
	jr	ra
	li	a1, 0
	li	a2, 0
	lw	a0, 52(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jr	ra
	li	a0, 0
	li	a4, 2
	lw	a1, 48(sp)
	lw	a2, 52(sp)
	lw	a3, 56(sp)
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jr	ra
	b	rt.3049_ret
rt.3049_ret:
	lw	ra, 68(sp)
	lw	fp, 64(sp)
	addi	sp, sp, 72
	jr	ra
end:
	j	end
	.data
l.7599:	# 128.000000
	.word	1124073472
l.7566:	# 0.900000
	.word	1063675494
l.7565:	# 0.200000
	.word	1045220557
l.7471:	# 150.000000
	.word	1125515264
l.7469:	# -150.000000
	.word	-1021968384
l.7453:	# 0.100000
	.word	1036831949
l.7450:	# -2.000000
	.word	-1073741824
l.7448:	# 0.003906
	.word	998244352
l.7426:	# 20.000000
	.word	1101004800
l.7425:	# 0.050000
	.word	1028443341
l.7421:	# 0.250000
	.word	1048576000
l.7417:	# 10.000000
	.word	1092616192
l.7413:	# 0.300000
	.word	1050253722
l.7412:	# 255.000000
	.word	1132396544
l.7411:	# 0.500000
	.word	1056964608
l.7410:	# 0.150000
	.word	1041865114
l.7408:	# 3.141593
	.word	1078530011
l.7407:	# 30.000000
	.word	1106247680
l.7406:	# 15.000000
	.word	1097859072
l.7405:	# 0.000100
	.word	953267991
l.7362:	# 100000000.000000
	.word	1287568416
l.7358:	# 1000000000.000000
	.word	1315859240
l.7338:	# -0.100000
	.word	-1110651699
l.7325:	# 0.010000
	.word	1008981770
l.7324:	# -0.200000
	.word	-1102263091
l.7100:	# -200.000000
	.word	-1018691584
l.7098:	# 200.000000
	.word	1128792064
l.7094:	# 0.017453
	.word	1016003125
l.7008:	# 1.000000
	.word	1065353216
l.7007:	# 2.000000
	.word	1073741824
l.7006:	# -1.000000
	.word	-1082130432
l.7005:	# 0.000000
	.word	0
