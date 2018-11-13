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
	fli	fa0, l.9871
	lw	a1, 4(sp)
	sw	a0, 8(sp)
	fsw	fa0, 16(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 60
	mv	a2, gp
	addi	gp, gp, 44
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
	lw	a1, 32(sp)
	sw	a0, 36(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 40(sp)
	mv	a0, a1
	call	min_caml_create_array
	fli	fa0, l.10334
	lw	a1, 0(sp)
	sw	a0, 44(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 50
	li	a2, -1
	lw	a3, 0(sp)
	sw	a0, 48(sp)
	sw	a1, 52(sp)
	mv	a1, a2
	mv	a0, a3
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 52(sp)
	call	min_caml_create_array
	li	a1, 0
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a2, 0(sp)
	sw	a0, 56(sp)
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 0(sp)
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 0(sp)
	sw	a0, 60(sp)
	mv	a0, a1
	call	min_caml_create_array
	lw	a1, 0(sp)
	lw	a2, 4(sp)
	sw	a0, 64(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	fli	fa0, l.10256
	lw	a1, 0(sp)
	sw	a0, 68(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 72(sp)
	mv	a0, a1
	call	min_caml_create_array
	lw	a1, 0(sp)
	lw	a2, 4(sp)
	sw	a0, 76(sp)
	mv	a0, a1
	mv	a1, a2
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
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 92(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 2
	lw	a2, 4(sp)
	sw	a0, 96(sp)
	sw	a1, 100(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	lw	a1, 100(sp)
	lw	a2, 4(sp)
	sw	a0, 104(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 0(sp)
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
	lw	a1, 32(sp)
	sw	a0, 132(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 4(sp)
	sw	a0, 136(sp)
	mv	a0, a1
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 4(sp)
	sw	a1, 140(sp)
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 140(sp)
	sw	a0, 0(a1)
	lw	a0, 4(sp)
	call	min_caml_create_array
	mv	a1, a0
	li	a0, 5
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 4(sp)
	sw	a0, 144(sp)
	mv	a0, a1
	call	min_caml_create_array
	flw	fa0, 16(sp)
	lw	a1, 32(sp)
	sw	a0, 148(sp)
	mv	a0, a1
	call	min_caml_create_array
	lw	a1, 24(sp)
	lw	a2, 148(sp)
	sw	a0, 152(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 152(sp)
	sw	a0, 0(a1)
	flw	fa0, 16(sp)
	lw	a2, 4(sp)
	sw	a1, 156(sp)
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 4(sp)
	sw	a1, 160(sp)
	call	min_caml_create_array
	li	a1, 180
	mv	a2, gp
	addi	gp, gp, 16
	flw	fa0, 16(sp)
	fsw	fa0, 12(a2)
	sw	a0, 8(a2)
	lw	a0, 160(sp)
	sw	a0, 4(a2)
	lw	a0, 4(sp)
	sw	a0, 0(a2)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	lw	a1, 0(sp)
	lw	a2, 4(sp)
	sw	a0, 164(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 24
	la	a2, read_screen_settings.2536
	sw	a2, 0(a1)
	lw	a2, 40(sp)
	sw	a2, 20(a1)
	lw	a3, 132(sp)
	sw	a3, 16(a1)
	lw	a4, 128(sp)
	sw	a4, 12(a1)
	lw	a5, 124(sp)
	sw	a5, 8(a1)
	lw	a6, 36(sp)
	sw	a6, 4(a1)
	mv	a6, gp
	addi	gp, gp, 12
	la	a7, read_light.2538
	sw	a7, 0(a6)
	lw	a7, 44(sp)
	sw	a7, 8(a6)
	lw	s1, 48(sp)
	sw	s1, 4(a6)
	mv	s2, gp
	addi	gp, gp, 8
	la	s3, read_nth_object.2543
	sw	s3, 0(s2)
	lw	s3, 28(sp)
	sw	s3, 4(s2)
	mv	s4, gp
	addi	gp, gp, 12
	la	s5, read_object.2545
	sw	s5, 0(s4)
	sw	s2, 8(s4)
	lw	s2, 8(sp)
	sw	s2, 4(s4)
	mv	s5, gp
	addi	gp, gp, 8
	la	s6, read_and_network.2553
	sw	s6, 0(s5)
	lw	s6, 56(sp)
	sw	s6, 4(s5)
	mv	s7, gp
	addi	gp, gp, 24
	la	s8, read_parameter.2555
	sw	s8, 0(s7)
	sw	a1, 20(s7)
	sw	s4, 16(s7)
	sw	a6, 12(s7)
	sw	s5, 8(s7)
	lw	a1, 60(sp)
	sw	a1, 4(s7)
	mv	a6, gp
	addi	gp, gp, 8
	la	s4, solver_rect_surface.2557
	sw	s4, 0(a6)
	lw	s4, 64(sp)
	sw	s4, 4(a6)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, solver_rect.2566
	sw	s8, 0(s5)
	sw	a6, 4(s5)
	mv	a6, gp
	addi	gp, gp, 8
	la	s8, solver_surface.2572
	sw	s8, 0(a6)
	sw	s4, 4(a6)
	mv	s8, gp
	addi	gp, gp, 8
	la	s9, solver_second.2591
	sw	s9, 0(s8)
	sw	s4, 4(s8)
	mv	s9, gp
	addi	gp, gp, 20
	la	s10, solver.2597
	sw	s10, 0(s9)
	sw	a6, 16(s9)
	sw	s8, 12(s9)
	sw	s5, 8(s9)
	sw	s3, 4(s9)
	mv	a6, gp
	addi	gp, gp, 8
	la	s5, solver_rect_fast.2601
	sw	s5, 0(a6)
	sw	s4, 4(a6)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, solver_surface_fast.2608
	sw	s8, 0(s5)
	sw	s4, 4(s5)
	mv	s8, gp
	addi	gp, gp, 8
	la	s10, solver_second_fast.2614
	sw	s10, 0(s8)
	sw	s4, 4(s8)
	mv	s10, gp
	addi	gp, gp, 20
	la	s11, solver_fast.2620
	sw	s11, 0(s10)
	sw	s5, 16(s10)
	sw	s8, 12(s10)
	sw	a6, 8(s10)
	sw	s3, 4(s10)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, solver_surface_fast2.2624
	sw	s8, 0(s5)
	sw	s4, 4(s5)
	mv	s8, gp
	addi	gp, gp, 8
	la	s11, solver_second_fast2.2631
	sw	s11, 0(s8)
	sw	s4, 4(s8)
	mv	s11, gp
	addi	gp, gp, 20
	la	t0, solver_fast2.2638
	sw	t0, 0(s11)
	sw	s5, 16(s11)
	sw	s8, 12(s11)
	sw	a6, 8(s11)
	sw	s3, 4(s11)
	mv	a6, gp
	addi	gp, gp, 8
	la	s5, iter_setup_dirvec_constants.2650
	sw	s5, 0(a6)
	sw	s3, 4(a6)
	mv	s5, gp
	addi	gp, gp, 12
	la	s8, setup_dirvec_constants.2653
	sw	s8, 0(s5)
	sw	s2, 8(s5)
	sw	a6, 4(s5)
	mv	a6, gp
	addi	gp, gp, 8
	la	s8, setup_startp_constants.2655
	sw	s8, 0(a6)
	sw	s3, 4(a6)
	mv	s8, gp
	addi	gp, gp, 16
	la	t0, setup_startp.2658
	sw	t0, 0(s8)
	lw	t0, 120(sp)
	sw	t0, 12(s8)
	sw	a6, 8(s8)
	sw	s2, 4(s8)
	mv	a6, gp
	addi	gp, gp, 8
	la	t1, check_all_inside.2680
	sw	t1, 0(a6)
	sw	s3, 4(a6)
	mv	t1, gp
	addi	gp, gp, 32
	la	t2, shadow_check_and_group.2686
	sw	t2, 0(t1)
	sw	s10, 28(t1)
	sw	s4, 24(t1)
	sw	s3, 20(t1)
	lw	t2, 156(sp)
	sw	t2, 16(t1)
	sw	a7, 12(t1)
	lw	t3, 76(sp)
	sw	t3, 8(t1)
	sw	a6, 4(t1)
	mv	t4, gp
	addi	gp, gp, 12
	la	t5, shadow_check_one_or_group.2689
	sw	t5, 0(t4)
	sw	t1, 8(t4)
	sw	s6, 4(t4)
	mv	t1, gp
	addi	gp, gp, 24
	la	t5, shadow_check_one_or_matrix.2692
	sw	t5, 0(t1)
	sw	s10, 20(t1)
	sw	s4, 16(t1)
	sw	t4, 12(t1)
	sw	t2, 8(t1)
	sw	t3, 4(t1)
	mv	s10, gp
	addi	gp, gp, 40
	la	t4, solve_each_element.2695
	sw	t4, 0(s10)
	lw	t4, 72(sp)
	sw	t4, 36(s10)
	lw	t5, 116(sp)
	sw	t5, 32(s10)
	sw	s4, 28(s10)
	sw	s9, 24(s10)
	sw	s3, 20(s10)
	lw	t6, 68(sp)
	sw	t6, 16(s10)
	sw	t3, 12(s10)
	lw	t2, 80(sp)
	sw	t2, 8(s10)
	sw	a6, 4(s10)
	sw	s7, 168(sp)
	mv	s7, gp
	addi	gp, gp, 12
	sw	s5, 172(sp)
	la	s5, solve_one_or_network.2699
	sw	s5, 0(s7)
	sw	s10, 8(s7)
	sw	s6, 4(s7)
	mv	s5, gp
	addi	gp, gp, 24
	la	s10, trace_or_matrix.2703
	sw	s10, 0(s5)
	sw	t4, 20(s5)
	sw	t5, 16(s5)
	sw	s4, 12(s5)
	sw	s9, 8(s5)
	sw	s7, 4(s5)
	mv	s7, gp
	addi	gp, gp, 16
	la	s9, judge_intersection.2707
	sw	s9, 0(s7)
	sw	s5, 12(s7)
	sw	t4, 8(s7)
	sw	a1, 4(s7)
	mv	s5, gp
	addi	gp, gp, 40
	la	s9, solve_each_element_fast.2709
	sw	s9, 0(s5)
	sw	t4, 36(s5)
	sw	t0, 32(s5)
	sw	s11, 28(s5)
	sw	s4, 24(s5)
	sw	s3, 20(s5)
	sw	t6, 16(s5)
	sw	t3, 12(s5)
	sw	t2, 8(s5)
	sw	a6, 4(s5)
	mv	a6, gp
	addi	gp, gp, 12
	la	s9, solve_one_or_network_fast.2713
	sw	s9, 0(a6)
	sw	s5, 8(a6)
	sw	s6, 4(a6)
	mv	s5, gp
	addi	gp, gp, 20
	la	s6, trace_or_matrix_fast.2717
	sw	s6, 0(s5)
	sw	t4, 16(s5)
	sw	s11, 12(s5)
	sw	s4, 8(s5)
	sw	a6, 4(s5)
	mv	a6, gp
	addi	gp, gp, 16
	la	s4, judge_intersection_fast.2721
	sw	s4, 0(a6)
	sw	s5, 12(a6)
	sw	t4, 8(a6)
	sw	a1, 4(a6)
	mv	s4, gp
	addi	gp, gp, 12
	la	s5, get_nvector_rect.2723
	sw	s5, 0(s4)
	lw	s5, 84(sp)
	sw	s5, 8(s4)
	sw	t6, 4(s4)
	mv	s6, gp
	addi	gp, gp, 8
	la	s9, get_nvector_plane.2725
	sw	s9, 0(s6)
	sw	s5, 4(s6)
	mv	s9, gp
	addi	gp, gp, 12
	la	s10, get_nvector_second.2727
	sw	s10, 0(s9)
	sw	s5, 8(s9)
	sw	t3, 4(s9)
	mv	s10, gp
	addi	gp, gp, 16
	la	s11, get_nvector.2729
	sw	s11, 0(s10)
	sw	s9, 12(s10)
	sw	s4, 8(s10)
	sw	s6, 4(s10)
	mv	s4, gp
	addi	gp, gp, 8
	la	s6, utexture.2732
	sw	s6, 0(s4)
	lw	s6, 88(sp)
	sw	s6, 4(s4)
	mv	s9, gp
	addi	gp, gp, 12
	la	s11, add_light.2735
	sw	s11, 0(s9)
	sw	s6, 8(s9)
	lw	s11, 96(sp)
	sw	s11, 4(s9)
	mv	t0, gp
	addi	gp, gp, 36
	la	s2, trace_reflections.2739
	sw	s2, 0(t0)
	sw	t1, 32(t0)
	lw	s2, 164(sp)
	sw	s2, 28(t0)
	sw	a1, 24(t0)
	sw	s5, 20(t0)
	sw	a6, 16(t0)
	sw	t6, 12(t0)
	sw	t2, 8(t0)
	sw	s9, 4(t0)
	mv	s2, gp
	addi	gp, gp, 84
	la	a4, trace_ray.2744
	sw	a4, 0(s2)
	sw	s4, 80(s2)
	sw	t0, 76(s2)
	sw	t4, 72(s2)
	sw	s6, 68(s2)
	sw	t5, 64(s2)
	sw	t1, 60(s2)
	sw	s8, 56(s2)
	sw	s11, 52(s2)
	sw	a1, 48(s2)
	sw	s3, 44(s2)
	sw	s5, 40(s2)
	sw	a0, 36(s2)
	sw	a7, 32(s2)
	sw	s7, 28(s2)
	sw	t6, 24(s2)
	sw	t3, 20(s2)
	sw	t2, 16(s2)
	sw	s10, 12(s2)
	sw	s1, 8(s2)
	sw	s9, 4(s2)
	mv	a4, gp
	addi	gp, gp, 52
	la	s1, trace_diffuse_ray.2750
	sw	s1, 0(a4)
	sw	s4, 48(a4)
	sw	s6, 44(a4)
	sw	t1, 40(a4)
	sw	a1, 36(a4)
	sw	s3, 32(a4)
	sw	s5, 28(a4)
	sw	a7, 24(a4)
	sw	a6, 20(a4)
	sw	t3, 16(a4)
	sw	t2, 12(a4)
	sw	s10, 8(a4)
	lw	a1, 92(sp)
	sw	a1, 4(a4)
	mv	a6, gp
	addi	gp, gp, 8
	la	s1, iter_trace_diffuse_rays.2753
	sw	s1, 0(a6)
	sw	a4, 4(a6)
	mv	a4, gp
	addi	gp, gp, 16
	la	s1, trace_diffuse_ray_80percent.2762
	sw	s1, 0(a4)
	sw	s8, 12(a4)
	sw	a6, 8(a4)
	lw	s1, 144(sp)
	sw	s1, 4(a4)
	mv	s4, gp
	addi	gp, gp, 16
	la	s5, calc_diffuse_using_1point.2766
	sw	s5, 0(s4)
	sw	a4, 12(s4)
	sw	s11, 8(s4)
	sw	a1, 4(s4)
	mv	a4, gp
	addi	gp, gp, 12
	la	s5, calc_diffuse_using_5points.2769
	sw	s5, 0(a4)
	sw	s11, 8(a4)
	sw	a1, 4(a4)
	mv	s5, gp
	addi	gp, gp, 8
	la	s6, do_without_neighbors.2775
	sw	s6, 0(s5)
	sw	s4, 4(s5)
	mv	s4, gp
	addi	gp, gp, 8
	la	s6, neighbors_exist.2778
	sw	s6, 0(s4)
	lw	s6, 104(sp)
	sw	s6, 4(s4)
	mv	s7, gp
	addi	gp, gp, 12
	la	s9, try_exploit_neighbors.2791
	sw	s9, 0(s7)
	sw	s5, 8(s7)
	sw	a4, 4(s7)
	mv	a4, gp
	addi	gp, gp, 8
	la	s9, write_ppm_header.2798
	sw	s9, 0(a4)
	sw	s6, 4(a4)
	mv	s9, gp
	addi	gp, gp, 8
	la	s10, write_rgb.2802
	sw	s10, 0(s9)
	sw	s11, 4(s9)
	mv	s10, gp
	addi	gp, gp, 20
	la	t0, pretrace_diffuse_rays.2804
	sw	t0, 0(s10)
	sw	s8, 16(s10)
	sw	a6, 12(s10)
	sw	s1, 8(s10)
	sw	a1, 4(s10)
	mv	a1, gp
	addi	gp, gp, 40
	la	a6, pretrace_pixels.2807
	sw	a6, 0(a1)
	sw	a2, 36(a1)
	sw	s2, 32(a1)
	sw	t5, 28(a1)
	sw	a5, 24(a1)
	lw	a2, 112(sp)
	sw	a2, 20(a1)
	sw	s11, 16(a1)
	lw	a5, 136(sp)
	sw	a5, 12(a1)
	sw	s10, 8(a1)
	lw	a5, 108(sp)
	sw	a5, 4(a1)
	mv	a6, gp
	addi	gp, gp, 28
	la	s2, pretrace_line.2814
	sw	s2, 0(a6)
	sw	a3, 24(a6)
	lw	a3, 128(sp)
	sw	a3, 20(a6)
	sw	a2, 16(a6)
	sw	a1, 12(a6)
	sw	s6, 8(a6)
	sw	a5, 4(a6)
	mv	a1, gp
	addi	gp, gp, 28
	la	a3, scan_pixel.2818
	sw	a3, 0(a1)
	sw	s9, 24(a1)
	sw	s7, 20(a1)
	sw	s11, 16(a1)
	sw	s4, 12(a1)
	sw	s6, 8(a1)
	sw	s5, 4(a1)
	mv	a3, gp
	addi	gp, gp, 16
	la	s2, scan_line.2824
	sw	s2, 0(a3)
	sw	a1, 12(a3)
	sw	a6, 8(a3)
	sw	s6, 4(a3)
	mv	a1, gp
	addi	gp, gp, 8
	la	s2, create_pixelline.2837
	sw	s2, 0(a1)
	sw	s6, 4(a1)
	mv	s2, gp
	addi	gp, gp, 8
	la	s4, calc_dirvec.2844
	sw	s4, 0(s2)
	sw	s1, 4(s2)
	mv	s4, gp
	addi	gp, gp, 8
	la	s5, calc_dirvecs.2852
	sw	s5, 0(s4)
	sw	s2, 4(s4)
	mv	s2, gp
	addi	gp, gp, 8
	la	s5, calc_dirvec_rows.2857
	sw	s5, 0(s2)
	sw	s4, 4(s2)
	mv	s4, gp
	addi	gp, gp, 8
	la	s5, create_dirvec.2861
	sw	s5, 0(s4)
	lw	s5, 8(sp)
	sw	s5, 4(s4)
	mv	s7, gp
	addi	gp, gp, 8
	la	s8, create_dirvec_elements.2863
	sw	s8, 0(s7)
	sw	s4, 4(s7)
	mv	s8, gp
	addi	gp, gp, 16
	la	s9, create_dirvecs.2866
	sw	s9, 0(s8)
	sw	s1, 12(s8)
	sw	s7, 8(s8)
	sw	s4, 4(s8)
	mv	s7, gp
	addi	gp, gp, 8
	la	s9, init_dirvec_constants.2868
	sw	s9, 0(s7)
	lw	s9, 172(sp)
	sw	s9, 4(s7)
	mv	s10, gp
	addi	gp, gp, 12
	la	s11, init_vecset_constants.2871
	sw	s11, 0(s10)
	sw	s7, 8(s10)
	sw	s1, 4(s10)
	mv	s1, gp
	addi	gp, gp, 16
	la	s7, init_dirvecs.2873
	sw	s7, 0(s1)
	sw	s10, 12(s1)
	sw	s8, 8(s1)
	sw	s2, 4(s1)
	mv	s2, gp
	addi	gp, gp, 16
	la	s7, add_reflection.2875
	sw	s7, 0(s2)
	sw	s9, 12(s2)
	lw	s7, 164(sp)
	sw	s7, 8(s2)
	sw	s4, 4(s2)
	mv	s4, gp
	addi	gp, gp, 16
	la	s7, setup_rect_reflection.2882
	sw	s7, 0(s4)
	sw	a0, 12(s4)
	sw	a7, 8(s4)
	sw	s2, 4(s4)
	mv	s7, gp
	addi	gp, gp, 16
	la	s8, setup_surface_reflection.2885
	sw	s8, 0(s7)
	sw	a0, 12(s7)
	sw	a7, 8(s7)
	sw	s2, 4(s7)
	mv	a0, gp
	addi	gp, gp, 16
	la	s2, setup_reflections.2888
	sw	s2, 0(a0)
	sw	s7, 12(a0)
	sw	s4, 8(a0)
	sw	s3, 4(a0)
	mv	t6, gp
	addi	gp, gp, 64
	la	s2, rt.2890
	sw	s2, 0(t6)
	sw	a4, 60(t6)
	lw	a4, 152(sp)
	sw	a4, 56(t6)
	sw	a0, 52(t6)
	sw	s9, 48(t6)
	sw	a2, 44(t6)
	sw	a3, 40(t6)
	lw	a0, 168(sp)
	sw	a0, 36(t6)
	sw	a6, 32(t6)
	sw	s5, 28(t6)
	lw	a0, 156(sp)
	sw	a0, 24(t6)
	sw	a7, 20(t6)
	sw	s1, 16(t6)
	sw	s6, 12(t6)
	sw	a5, 8(t6)
	sw	a1, 4(t6)
	li	a0, 512
	mv	a1, a0
	lw	ra, 0(t6)
	jalr	ra, ra, 0
#	main program ends
	lw	ra, 4(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 8
	j	end
xor.2414:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a2, 0
	bne	a0, a2, beq_else.12033
	mv	a0, a1
	b	xor.2414_ret
beq_else.12033:
	li	a0, 0
	bne	a1, a0, beq_else.12034
	li	a0, 1
	b	xor.2414_ret
beq_else.12034:
	li	a0, 0
	b	xor.2414_ret
xor.2414_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
sgn.2417:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fli	fa1, l.9871
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12035
	li	a0, 1
	b	bne_cont.12036
bne_else.12035:
	li	a0, 0
bne_cont.12036:
	li	a1, 0
	bne	a0, a1, beq_else.12037
	fli	fa1, l.9871
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12038
	li	a0, 0
	b	bne_cont.12039
bne_else.12038:
	li	a0, 1
bne_cont.12039:
	li	a1, 0
	bne	a0, a1, beq_else.12040
	fli	fa0, l.9873
	b	sgn.2417_ret
beq_else.12040:
	fli	fa0, l.9872
	b	sgn.2417_ret
beq_else.12037:
	fli	fa0, l.9871
	b	sgn.2417_ret
sgn.2417_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
add_mod5.2422:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	add	a0, a0, a1
	li	a1, 5
	bgt	a1, a0, ble_else.12041
	addi	a0, a0, -5
	b	add_mod5.2422_ret
ble_else.12041:
	b	add_mod5.2422_ret
add_mod5.2422_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecset.2425:
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
	b	vecset.2425_ret
vecset.2425_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecfill.2430:
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
	b	vecfill.2430_ret
vecfill.2430_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
veccpy.2435:
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
	b	veccpy.2435_ret
veccpy.2435_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecunit_sgn.2438:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	a2, 0
	add	t6, a0, a2
	flw	fa0, 0(t6)
	fmul.s	fa0, fa0, fa0
	li	a2, 4
	add	t6, a0, a2
	flw	fa1, 0(t6)
	fmul.s	fa1, fa1, fa1
	fadd.s	fa0, fa0, fa1
	li	a2, 8
	add	t6, a0, a2
	flw	fa1, 0(t6)
	fmul.s	fa1, fa1, fa1
	fadd.s	fa0, fa0, fa1
	fsqrt.s	fa0, fa0
	fli	fa1, l.9871
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12045
	li	a2, 1
	b	bne_cont.12046
bne_else.12045:
	li	a2, 0
bne_cont.12046:
	li	a3, 0
	bne	a2, a3, beq_else.12047
	li	a2, 0
	bne	a1, a2, beq_else.12049
	fli	fa1, l.9872
	fdiv.s	fa0, fa1, fa0
	b	beq_cont.12050
beq_else.12049:
	fli	fa1, l.9873
	fdiv.s	fa0, fa1, fa0
beq_cont.12050:
	b	beq_cont.12048
beq_else.12047:
	fli	fa0, l.9872
beq_cont.12048:
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
	b	vecunit_sgn.2438_ret
vecunit_sgn.2438_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
veciprod.2441:
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
	b	veciprod.2441_ret
veciprod.2441_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
veciprod2.2444:
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
	b	veciprod2.2444_ret
veciprod2.2444_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecaccum.2449:
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
	b	vecaccum.2449_ret
vecaccum.2449_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecadd.2453:
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
	b	vecadd.2453_ret
vecadd.2453_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecscale.2456:
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
	b	vecscale.2456_ret
vecscale.2456_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecaccumv.2459:
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
	b	vecaccumv.2459_ret
vecaccumv.2459_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
read_screen_settings.2536:
	addi	sp, sp, -76
	sw	ra, 72(sp)
	sw	fp, 68(sp)
	addi	fp, sp, 76
	lw	a0, 20(t6)
	lw	a1, 16(t6)
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a0, 0(sp)
	sw	a2, 4(sp)
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	sw	a4, 16(sp)
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
	fli	fa1, l.9943
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 24(sp)
	call	min_caml_cos
	flw	fa1, 24(sp)
	fsw	fa0, 32(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	fsw	fa0, 40(sp)
	call	min_caml_read_float
	fli	fa1, l.9943
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 48(sp)
	call	min_caml_cos
	flw	fa1, 48(sp)
	fsw	fa0, 56(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	flw	fa1, 32(sp)
	fmul.s	fa2, fa1, fa0
	fli	fa3, l.9944
	fmul.s	fa2, fa2, fa3
	li	a0, 0
	lw	a1, 12(sp)
	add	t6, a1, a0
	fsw	fa2, 0(t6)
	fli	fa2, l.9946
	flw	fa3, 40(sp)
	fmul.s	fa2, fa3, fa2
	li	a0, 4
	add	t6, a1, a0
	fsw	fa2, 0(t6)
	flw	fa2, 56(sp)
	fmul.s	fa4, fa1, fa2
	fli	fa5, l.9944
	fmul.s	fa4, fa4, fa5
	li	a0, 8
	add	t6, a1, a0
	fsw	fa4, 0(t6)
	li	a0, 0
	lw	a2, 8(sp)
	add	t6, a2, a0
	fsw	fa2, 0(t6)
	fli	fa4, l.9871
	li	a0, 4
	add	t6, a2, a0
	fsw	fa4, 0(t6)
	fneg.s	fa4, fa0
	li	a0, 8
	add	t6, a2, a0
	fsw	fa4, 0(t6)
	fneg.s	fa4, fa3
	fmul.s	fa0, fa4, fa0
	li	a0, 0
	lw	a2, 4(sp)
	add	t6, a2, a0
	fsw	fa0, 0(t6)
	fneg.s	fa0, fa1
	li	a0, 4
	add	t6, a2, a0
	fsw	fa0, 0(t6)
	fneg.s	fa0, fa3
	fmul.s	fa0, fa0, fa2
	li	a0, 8
	add	t6, a2, a0
	fsw	fa0, 0(t6)
	li	a0, 0
	lw	a2, 16(sp)
	add	t6, a2, a0
	flw	fa0, 0(t6)
	li	a0, 0
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	li	a0, 0
	lw	a3, 0(sp)
	add	t6, a3, a0
	fsw	fa0, 0(t6)
	li	a0, 4
	add	t6, a2, a0
	flw	fa0, 0(t6)
	li	a0, 4
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	li	a0, 4
	add	t6, a3, a0
	fsw	fa0, 0(t6)
	li	a0, 8
	add	t6, a2, a0
	flw	fa0, 0(t6)
	li	a0, 8
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	li	a0, 8
	add	t6, a3, a0
	fsw	fa0, 0(t6)
	b	read_screen_settings.2536_ret
read_screen_settings.2536_ret:
	lw	ra, 72(sp)
	lw	fp, 68(sp)
	addi	sp, sp, 76
	jr	ra
read_light.2538:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a0, 8(t6)
	lw	a1, 4(t6)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	call	min_caml_read_int
	call	min_caml_read_float
	fli	fa1, l.9943
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 8(sp)
	call	min_caml_sin
	fneg.s	fa0, fa0
	li	a0, 4
	lw	a1, 4(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	fli	fa1, l.9943
	fmul.s	fa0, fa0, fa1
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
	b	read_light.2538_ret
read_light.2538_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
rotate_quadratic_matrix.2540:
	addi	sp, sp, -60
	sw	ra, 56(sp)
	sw	fp, 52(sp)
	addi	fp, sp, 60
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
	fneg.s	fa1, fa4
	fmul.s	fa4, fa5, fa2
	fmul.s	fa2, fa7, fa2
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	flw	fa5, 0(t6)
	li	a0, 4
	add	t6, a1, a0
	flw	fa7, 0(t6)
	li	a0, 8
	add	t6, a1, a0
	flw	fs4, 0(t6)
	fmul.s	fs5, fa3, fa3
	fmul.s	fs5, fa5, fs5
	fmul.s	fs6, fs2, fs2
	fmul.s	fs6, fa7, fs6
	fadd.s	fs5, fs5, fs6
	fmul.s	fs6, fa1, fa1
	fmul.s	fs6, fs4, fs6
	fadd.s	fs5, fs5, fs6
	li	a0, 0
	add	t6, a1, a0
	fsw	fs5, 0(t6)
	fmul.s	fs5, fa6, fa6
	fmul.s	fs5, fa5, fs5
	fmul.s	fs6, fs3, fs3
	fmul.s	fs6, fa7, fs6
	fadd.s	fs5, fs5, fs6
	fmul.s	fs6, fa4, fa4
	fmul.s	fs6, fs4, fs6
	fadd.s	fs5, fs5, fs6
	li	a0, 4
	add	t6, a1, a0
	fsw	fs5, 0(t6)
	fmul.s	fs5, fs1, fs1
	fmul.s	fs5, fa5, fs5
	fmul.s	fs6, fa0, fa0
	fmul.s	fs6, fa7, fs6
	fadd.s	fs5, fs5, fs6
	fmul.s	fs6, fa2, fa2
	fmul.s	fs6, fs4, fs6
	fadd.s	fs5, fs5, fs6
	li	a0, 8
	add	t6, a1, a0
	fsw	fs5, 0(t6)
	fli	fs5, l.9980
	fmul.s	fs6, fa5, fa6
	fmul.s	fs6, fs6, fs1
	fmul.s	fs7, fa7, fs3
	fmul.s	fs7, fs7, fa0
	fadd.s	fs6, fs6, fs7
	fmul.s	fs7, fs4, fa4
	fmul.s	fs7, fs7, fa2
	fadd.s	fs6, fs6, fs7
	fmul.s	fs5, fs5, fs6
	li	a0, 0
	lw	a1, 4(sp)
	add	t6, a1, a0
	fsw	fs5, 0(t6)
	fli	fs5, l.9980
	fmul.s	fs6, fa5, fa3
	fmul.s	fs1, fs6, fs1
	fmul.s	fs6, fa7, fs2
	fmul.s	fa0, fs6, fa0
	fadd.s	fa0, fs1, fa0
	fmul.s	fs1, fs4, fa1
	fmul.s	fa2, fs1, fa2
	fadd.s	fa0, fa0, fa2
	fmul.s	fa0, fs5, fa0
	li	a0, 4
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	fli	fa0, l.9980
	fmul.s	fa2, fa5, fa3
	fmul.s	fa2, fa2, fa6
	fmul.s	fa3, fa7, fs2
	fmul.s	fa3, fa3, fs3
	fadd.s	fa2, fa2, fa3
	fmul.s	fa1, fs4, fa1
	fmul.s	fa1, fa1, fa4
	fadd.s	fa1, fa2, fa1
	fmul.s	fa0, fa0, fa1
	li	a0, 8
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	rotate_quadratic_matrix.2540_ret
rotate_quadratic_matrix.2540_ret:
	lw	ra, 56(sp)
	lw	fp, 52(sp)
	addi	sp, sp, 60
	jr	ra
read_nth_object.2543:
	addi	sp, sp, -92
	sw	ra, 88(sp)
	sw	fp, 84(sp)
	addi	fp, sp, 92
	lw	a1, 4(t6)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, beq_else.12060
	li	a0, 0
	b	read_nth_object.2543_ret
beq_else.12060:
	sw	a0, 8(sp)
	call	min_caml_read_int
	sw	a0, 12(sp)
	call	min_caml_read_int
	sw	a0, 16(sp)
	call	min_caml_read_int
	li	a1, 3
	fli	fa0, l.9871
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
	fli	fa0, l.9871
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
	fli	fa1, l.9871
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12061
	li	a0, 0
	b	bne_cont.12062
bne_else.12061:
	li	a0, 1
bne_cont.12062:
	li	a1, 2
	fli	fa0, l.9871
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
	fli	fa0, l.9871
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
	fli	fa0, l.9871
	call	min_caml_create_array
	li	a1, 0
	lw	a2, 20(sp)
	sw	a0, 44(sp)
	bne	a2, a1, beq_else.12063
	b	beq_cont.12064
beq_else.12063:
	call	min_caml_read_float
	fli	fa1, l.9943
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 44(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	fli	fa1, l.9943
	fmul.s	fa0, fa0, fa1
	li	a0, 4
	lw	a1, 44(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	call	min_caml_read_float
	fli	fa1, l.9943
	fmul.s	fa0, fa0, fa1
	li	a0, 8
	lw	a1, 44(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
beq_cont.12064:
	li	a0, 2
	lw	a1, 12(sp)
	bne	a1, a0, beq_else.12065
	li	a0, 1
	b	beq_cont.12066
beq_else.12065:
	lw	a0, 32(sp)
beq_cont.12066:
	li	a2, 4
	fli	fa0, l.9871
	sw	a0, 48(sp)
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 44
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
	bne	a4, a1, beq_else.12067
	li	a1, 0
	add	t6, a2, a1
	flw	fa0, 0(t6)
	fli	fa1, l.9871
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12069
	li	a1, 1
	b	bne_cont.12070
bne_else.12069:
	li	a1, 0
bne_cont.12070:
	li	a4, 0
	bne	a1, a4, beq_else.12071
	fsw	fa0, 56(sp)
	call	sgn.2417
	flw	fa1, 56(sp)
	fmul.s	fa1, fa1, fa1
	fdiv.s	fa0, fa0, fa1
	b	beq_cont.12072
beq_else.12071:
	fli	fa0, l.9871
beq_cont.12072:
	li	a0, 0
	lw	a1, 24(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 4
	add	t6, a1, a0
	flw	fa0, 0(t6)
	fli	fa1, l.9871
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12074
	li	a0, 1
	b	bne_cont.12075
bne_else.12074:
	li	a0, 0
bne_cont.12075:
	li	a2, 0
	bne	a0, a2, beq_else.12076
	fsw	fa0, 64(sp)
	call	sgn.2417
	flw	fa1, 64(sp)
	fmul.s	fa1, fa1, fa1
	fdiv.s	fa0, fa0, fa1
	b	beq_cont.12077
beq_else.12076:
	fli	fa0, l.9871
beq_cont.12077:
	li	a0, 4
	lw	a1, 24(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 8
	add	t6, a1, a0
	flw	fa0, 0(t6)
	fli	fa1, l.9871
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12078
	li	a0, 1
	b	bne_cont.12079
bne_else.12078:
	li	a0, 0
bne_cont.12079:
	li	a2, 0
	bne	a0, a2, beq_else.12080
	fsw	fa0, 72(sp)
	call	sgn.2417
	flw	fa1, 72(sp)
	fmul.s	fa1, fa1, fa1
	fdiv.s	fa0, fa0, fa1
	b	beq_cont.12081
beq_else.12080:
	fli	fa0, l.9871
beq_cont.12081:
	li	a0, 8
	lw	a1, 24(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.12068
beq_else.12067:
	li	a1, 2
	bne	a4, a1, beq_else.12082
	li	a1, 0
	lw	a4, 32(sp)
	bne	a4, a1, beq_else.12084
	li	a1, 1
	b	beq_cont.12085
beq_else.12084:
	li	a1, 0
beq_cont.12085:
	mv	a0, a2
	call	vecunit_sgn.2438
	b	beq_cont.12083
beq_else.12082:
beq_cont.12083:
beq_cont.12068:
	li	a0, 0
	lw	a1, 20(sp)
	bne	a1, a0, beq_else.12086
	b	beq_cont.12087
beq_else.12086:
	lw	a0, 24(sp)
	lw	a1, 44(sp)
	call	rotate_quadratic_matrix.2540
beq_cont.12087:
	li	a0, 1
	b	read_nth_object.2543_ret
read_nth_object.2543_ret:
	lw	ra, 88(sp)
	lw	fp, 84(sp)
	addi	sp, sp, 92
	jr	ra
read_object.2545:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	li	a3, 60
	bgt	a3, a0, ble_else.12088
	b	read_object.2545_ret
ble_else.12088:
	sw	t6, 0(sp)
	sw	a2, 4(sp)
	sw	a0, 8(sp)
	mv	t6, a1
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12090
	li	a0, 0
	lw	a1, 4(sp)
	lw	a2, 8(sp)
	add	t6, a1, a0
	sw	a2, 0(t6)
	b	read_object.2545_ret
beq_else.12090:
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	read_object.2545_ret
read_object.2545_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
read_net_item.2549:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	sw	a0, 0(sp)
	call	min_caml_read_int
	li	a1, -1
	bne	a0, a1, beq_else.12092
	lw	a0, 0(sp)
	addi	a0, a0, 1
	li	a1, -1
	call	min_caml_create_array
	b	read_net_item.2549_ret
beq_else.12092:
	lw	a1, 0(sp)
	addi	a2, a1, 1
	sw	a0, 4(sp)
	mv	a0, a2
	call	read_net_item.2549
	lw	a1, 0(sp)
	slli	a1, a1, 2
	lw	a2, 4(sp)
	add	t6, a0, a1
	sw	a2, 0(t6)
	b	read_net_item.2549_ret
read_net_item.2549_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
read_or_network.2551:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	li	a1, 0
	sw	a0, 0(sp)
	mv	a0, a1
	call	read_net_item.2549
	mv	a1, a0
	li	a0, 0
	add	t6, a1, a0
	lw	a0, 0(t6)
	li	a2, -1
	bne	a0, a2, beq_else.12093
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_or_network.2551_ret
beq_else.12093:
	lw	a0, 0(sp)
	addi	a2, a0, 1
	sw	a1, 4(sp)
	mv	a0, a2
	call	read_or_network.2551
	lw	a1, 0(sp)
	slli	a1, a1, 2
	lw	a2, 4(sp)
	add	t6, a0, a1
	sw	a2, 0(t6)
	b	read_or_network.2551_ret
read_or_network.2551_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
read_and_network.2553:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a1, 4(t6)
	li	a2, 0
	sw	t6, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	read_net_item.2549
	li	a1, 0
	add	t6, a0, a1
	lw	a1, 0(t6)
	li	a2, -1
	bne	a1, a2, beq_else.12094
	b	read_and_network.2553_ret
beq_else.12094:
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 4(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, 1
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	read_and_network.2553_ret
read_and_network.2553_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
read_parameter.2555:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	lw	a0, 20(t6)
	lw	a1, 16(t6)
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	sw	a4, 0(sp)
	sw	a3, 4(sp)
	sw	a1, 8(sp)
	sw	a2, 12(sp)
	mv	t6, a0
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	t6, 12(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a0, 0
	lw	t6, 8(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a0, 0
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a0, 0
	call	read_or_network.2551
	li	a1, 0
	lw	a2, 0(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	b	read_parameter.2555_ret
read_parameter.2555_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
solver_rect_surface.2557:
	addi	sp, sp, -68
	sw	ra, 64(sp)
	sw	fp, 60(sp)
	addi	fp, sp, 68
	lw	a0, 4(t6)
	slli	a1, s5, 2
	add	t6, s4, a1
	flw	fa3, 0(t6)
	fli	fa4, l.9871
	feq.s	t6, fa3, fa4
	beq	t6, zero, bne_else.12097
	li	a1, 1
	b	bne_cont.12098
bne_else.12097:
	li	a1, 0
bne_cont.12098:
	li	a2, 0
	bne	a1, a2, beq_else.12099
	slli	a1, s5, 2
	add	t6, s4, a1
	flw	fa3, 0(t6)
	fli	fa4, l.9871
	fle.s	t6, fa4, fa3
	beq	t6, zero, bne_else.12100
	li	a1, 0
	b	bne_cont.12101
bne_else.12100:
	li	a1, 1
bne_cont.12101:
	sw	a0, 0(sp)
	fsw	fa2, 8(sp)
	sw	s7, 16(sp)
	fsw	fa1, 24(sp)
	sw	s6, 32(sp)
	sw	s4, 36(sp)
	fsw	fa0, 40(sp)
	sw	a4, 48(sp)
	sw	s5, 52(sp)
	mv	a0, a6
	call	xor.2414
	lw	a1, 52(sp)
	slli	a2, a1, 2
	lw	a3, 48(sp)
	add	t6, a3, a2
	flw	fa0, 0(t6)
	li	a2, 0
	bne	a0, a2, beq_else.12104
	fneg.s	fa0, fa0
	b	beq_cont.12105
beq_else.12104:
beq_cont.12105:
	flw	fa1, 40(sp)
	fsub.s	fa0, fa0, fa1
	slli	a0, a1, 2
	lw	a1, 36(sp)
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
	fabs.s	fa1, fa1
	slli	a0, a0, 2
	add	t6, a3, a0
	flw	fa2, 0(t6)
	fle.s	t6, fa2, fa1
	beq	t6, zero, bne_else.12106
	li	a0, 0
	b	bne_cont.12107
bne_else.12106:
	li	a0, 1
bne_cont.12107:
	li	a2, 0
	bne	a0, a2, beq_else.12108
	li	a0, 0
	b	solver_rect_surface.2557_ret
beq_else.12108:
	lw	a0, 16(sp)
	slli	a2, a0, 2
	add	t6, a1, a2
	flw	fa1, 0(t6)
	fmul.s	fa1, fa0, fa1
	flw	fa2, 8(sp)
	fadd.s	fa1, fa1, fa2
	fabs.s	fa1, fa1
	slli	a0, a0, 2
	add	t6, a3, a0
	flw	fa2, 0(t6)
	fle.s	t6, fa2, fa1
	beq	t6, zero, bne_else.12109
	li	a0, 0
	b	bne_cont.12110
bne_else.12109:
	li	a0, 1
bne_cont.12110:
	li	a1, 0
	bne	a0, a1, beq_else.12111
	li	a0, 0
	b	solver_rect_surface.2557_ret
beq_else.12111:
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 1
	b	solver_rect_surface.2557_ret
beq_else.12099:
	li	a0, 0
	b	solver_rect_surface.2557_ret
solver_rect_surface.2557_ret:
	lw	ra, 64(sp)
	lw	fp, 60(sp)
	addi	sp, sp, 68
	jr	ra
solver_rect.2566:
	addi	sp, sp, -88
	sw	ra, 84(sp)
	sw	fp, 80(sp)
	addi	fp, sp, 88
	lw	t6, 4(t6)
	li	s5, 0
	li	s6, 1
	li	s7, 2
	fsw	fa0, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa1, 16(sp)
	sw	s4, 24(sp)
	sw	s3, 28(sp)
	sw	s2, 32(sp)
	sw	s1, 36(sp)
	sw	a7, 40(sp)
	sw	a6, 44(sp)
	sw	a5, 48(sp)
	sw	a4, 52(sp)
	sw	a3, 56(sp)
	sw	a2, 60(sp)
	sw	a1, 64(sp)
	sw	a0, 68(sp)
	sw	t6, 72(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12112
	li	s5, 1
	li	s6, 2
	li	s7, 0
	flw	fa0, 16(sp)
	flw	fa1, 8(sp)
	flw	fa2, 0(sp)
	lw	a0, 68(sp)
	lw	a1, 64(sp)
	lw	a2, 60(sp)
	lw	a3, 56(sp)
	lw	a4, 52(sp)
	lw	a5, 48(sp)
	lw	a6, 44(sp)
	lw	a7, 40(sp)
	lw	s1, 36(sp)
	lw	s2, 32(sp)
	lw	s3, 28(sp)
	lw	s4, 24(sp)
	lw	t6, 72(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12113
	li	s5, 2
	li	s6, 0
	li	s7, 1
	flw	fa0, 8(sp)
	flw	fa1, 0(sp)
	flw	fa2, 16(sp)
	lw	a0, 68(sp)
	lw	a1, 64(sp)
	lw	a2, 60(sp)
	lw	a3, 56(sp)
	lw	a4, 52(sp)
	lw	a5, 48(sp)
	lw	a6, 44(sp)
	lw	a7, 40(sp)
	lw	s1, 36(sp)
	lw	s2, 32(sp)
	lw	s3, 28(sp)
	lw	s4, 24(sp)
	lw	t6, 72(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12114
	li	a0, 0
	b	solver_rect.2566_ret
beq_else.12114:
	li	a0, 3
	b	solver_rect.2566_ret
beq_else.12113:
	li	a0, 2
	b	solver_rect.2566_ret
beq_else.12112:
	li	a0, 1
	b	solver_rect.2566_ret
solver_rect.2566_ret:
	lw	ra, 84(sp)
	lw	fp, 80(sp)
	addi	sp, sp, 88
	jr	ra
solver_surface.2572:
	addi	sp, sp, -60
	sw	ra, 56(sp)
	sw	fp, 52(sp)
	addi	fp, sp, 60
	lw	a0, 4(t6)
	sw	a0, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa1, 16(sp)
	fsw	fa0, 24(sp)
	sw	a4, 32(sp)
	mv	a1, a4
	mv	a0, s4
	call	veciprod.2441
	fli	fa1, l.9871
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12116
	li	a0, 0
	b	bne_cont.12117
bne_else.12116:
	li	a0, 1
bne_cont.12117:
	li	a1, 0
	bne	a0, a1, beq_else.12118
	li	a0, 0
	b	solver_surface.2572_ret
beq_else.12118:
	flw	fa1, 24(sp)
	flw	fa2, 16(sp)
	flw	fa3, 8(sp)
	lw	a0, 32(sp)
	fsw	fa0, 40(sp)
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	call	veciprod2.2444
	fneg.s	fa0, fa0
	flw	fa1, 40(sp)
	fdiv.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 1
	b	solver_surface.2572_ret
solver_surface.2572_ret:
	lw	ra, 56(sp)
	lw	fp, 52(sp)
	addi	sp, sp, 60
	jr	ra
quadratic.2578:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fmul.s	fa3, fa0, fa0
	li	a0, 0
	add	t6, a4, a0
	flw	fa4, 0(t6)
	fmul.s	fa3, fa3, fa4
	fmul.s	fa4, fa1, fa1
	li	a0, 4
	add	t6, a4, a0
	flw	fa5, 0(t6)
	fmul.s	fa4, fa4, fa5
	fadd.s	fa3, fa3, fa4
	fmul.s	fa4, fa2, fa2
	li	a0, 8
	add	t6, a4, a0
	flw	fa5, 0(t6)
	fmul.s	fa4, fa4, fa5
	fadd.s	fa3, fa3, fa4
	li	a0, 0
	bne	a3, a0, beq_else.12120
	fmv.s	fa0, fa3
	b	quadratic.2578_ret
beq_else.12120:
	fmul.s	fa4, fa1, fa2
	li	a0, 0
	add	t6, s2, a0
	flw	fa5, 0(t6)
	fmul.s	fa4, fa4, fa5
	fadd.s	fa3, fa3, fa4
	fmul.s	fa2, fa2, fa0
	li	a0, 4
	add	t6, s2, a0
	flw	fa4, 0(t6)
	fmul.s	fa2, fa2, fa4
	fadd.s	fa2, fa3, fa2
	fmul.s	fa0, fa0, fa1
	li	a0, 8
	add	t6, s2, a0
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	fadd.s	fa0, fa2, fa0
	b	quadratic.2578_ret
quadratic.2578_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
bilinear.2583:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fmul.s	fa6, fa0, fa3
	li	a0, 0
	add	t6, a4, a0
	flw	fa7, 0(t6)
	fmul.s	fa6, fa6, fa7
	fmul.s	fa7, fa1, fa4
	li	a0, 4
	add	t6, a4, a0
	flw	fs1, 0(t6)
	fmul.s	fa7, fa7, fs1
	fadd.s	fa6, fa6, fa7
	fmul.s	fa7, fa2, fa5
	li	a0, 8
	add	t6, a4, a0
	flw	fs1, 0(t6)
	fmul.s	fa7, fa7, fs1
	fadd.s	fa6, fa6, fa7
	li	a0, 0
	bne	a3, a0, beq_else.12121
	fmv.s	fa0, fa6
	b	bilinear.2583_ret
beq_else.12121:
	fmul.s	fa7, fa2, fa4
	fmul.s	fs1, fa1, fa5
	fadd.s	fa7, fa7, fs1
	li	a0, 0
	add	t6, s2, a0
	flw	fs1, 0(t6)
	fmul.s	fa7, fa7, fs1
	fmul.s	fa5, fa0, fa5
	fmul.s	fa2, fa2, fa3
	fadd.s	fa2, fa5, fa2
	li	a0, 4
	add	t6, s2, a0
	flw	fa5, 0(t6)
	fmul.s	fa2, fa2, fa5
	fadd.s	fa2, fa7, fa2
	fmul.s	fa0, fa0, fa4
	fmul.s	fa1, fa1, fa3
	fadd.s	fa0, fa0, fa1
	li	a0, 8
	add	t6, s2, a0
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	fadd.s	fa0, fa2, fa0
	fli	fa1, l.9980
	fdiv.s	fa0, fa0, fa1
	fadd.s	fa0, fa6, fa0
	b	bilinear.2583_ret
bilinear.2583_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_second.2591:
	addi	sp, sp, -108
	sw	ra, 104(sp)
	sw	fp, 100(sp)
	addi	fp, sp, 108
	lw	s5, 4(t6)
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
	call	quadratic.2578
	fli	fa1, l.9871
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12123
	li	a0, 1
	b	bne_cont.12124
bne_else.12123:
	li	a0, 0
bne_cont.12124:
	li	a1, 0
	bne	a0, a1, beq_else.12125
	li	a0, 0
	lw	a1, 76(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	li	a0, 4
	add	t6, a1, a0
	flw	fa2, 0(t6)
	li	a0, 8
	add	t6, a1, a0
	flw	fa3, 0(t6)
	flw	fa4, 24(sp)
	flw	fa5, 16(sp)
	flw	fa6, 8(sp)
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
	fsw	fa0, 80(sp)
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	fmv.s	fa3, fa4
	fmv.s	fa4, fa5
	fmv.s	fa5, fa6
	call	bilinear.2583
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
	call	quadratic.2578
	li	a0, 3
	lw	a1, 68(sp)
	bne	a1, a0, beq_else.12126
	fli	fa1, l.9872
	fsub.s	fa0, fa0, fa1
	b	beq_cont.12127
beq_else.12126:
beq_cont.12127:
	flw	fa1, 88(sp)
	fmul.s	fa2, fa1, fa1
	flw	fa3, 80(sp)
	fmul.s	fa0, fa3, fa0
	fsub.s	fa0, fa2, fa0
	fli	fa2, l.9871
	fle.s	t6, fa0, fa2
	beq	t6, zero, bne_else.12128
	li	a0, 0
	b	bne_cont.12129
bne_else.12128:
	li	a0, 1
bne_cont.12129:
	li	a1, 0
	bne	a0, a1, beq_else.12130
	li	a0, 0
	b	solver_second.2591_ret
beq_else.12130:
	fsqrt.s	fa0, fa0
	li	a0, 0
	lw	a1, 48(sp)
	bne	a1, a0, beq_else.12131
	fneg.s	fa0, fa0
	b	beq_cont.12132
beq_else.12131:
beq_cont.12132:
	fsub.s	fa0, fa0, fa1
	fdiv.s	fa0, fa0, fa3
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	li	a0, 1
	b	solver_second.2591_ret
beq_else.12125:
	li	a0, 0
	b	solver_second.2591_ret
solver_second.2591_ret:
	lw	ra, 104(sp)
	lw	fp, 100(sp)
	addi	sp, sp, 108
	jr	ra
solver.2597:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a3, 16(t6)
	lw	a4, 12(t6)
	lw	a5, 8(t6)
	lw	a6, 4(t6)
	slli	a0, a0, 2
	add	t6, a6, a0
	lw	a0, 0(t6)
	li	a6, 0
	add	t6, a2, a6
	flw	fa0, 0(t6)
	lw	a6, 20(a0)
	li	a7, 0
	add	t6, a6, a7
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	li	a6, 4
	add	t6, a2, a6
	flw	fa1, 0(t6)
	lw	a6, 20(a0)
	li	a7, 4
	add	t6, a6, a7
	flw	fa2, 0(t6)
	fsub.s	fa1, fa1, fa2
	li	a6, 8
	add	t6, a2, a6
	flw	fa2, 0(t6)
	lw	a2, 20(a0)
	li	a6, 8
	add	t6, a2, a6
	flw	fa3, 0(t6)
	fsub.s	fa2, fa2, fa3
	lw	a2, 4(a0)
	li	a6, 1
	bne	a2, a6, beq_else.12133
	mv	t6, a5
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	solver.2597_ret
beq_else.12133:
	li	a5, 2
	bne	a2, a5, beq_else.12134
	mv	t6, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	solver.2597_ret
beq_else.12134:
	mv	t6, a4
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	solver.2597_ret
solver.2597_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_rect_fast.2601:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 4(t6)
	li	a1, 0
	add	t6, s5, a1
	flw	fa3, 0(t6)
	fsub.s	fa3, fa3, fa0
	li	a1, 4
	add	t6, s5, a1
	flw	fa4, 0(t6)
	fmul.s	fa3, fa3, fa4
	li	a1, 4
	add	t6, s4, a1
	flw	fa4, 0(t6)
	fmul.s	fa4, fa3, fa4
	fadd.s	fa4, fa4, fa1
	fabs.s	fa4, fa4
	li	a1, 4
	add	t6, a4, a1
	flw	fa5, 0(t6)
	fle.s	t6, fa5, fa4
	beq	t6, zero, bne_else.12135
	li	a1, 0
	b	bne_cont.12136
bne_else.12135:
	li	a1, 1
bne_cont.12136:
	li	a2, 0
	bne	a1, a2, beq_else.12137
	li	a1, 0
	b	beq_cont.12138
beq_else.12137:
	li	a1, 8
	add	t6, s4, a1
	flw	fa4, 0(t6)
	fmul.s	fa4, fa3, fa4
	fadd.s	fa4, fa4, fa2
	fabs.s	fa4, fa4
	li	a1, 8
	add	t6, a4, a1
	flw	fa5, 0(t6)
	fle.s	t6, fa5, fa4
	beq	t6, zero, bne_else.12139
	li	a1, 0
	b	bne_cont.12140
bne_else.12139:
	li	a1, 1
bne_cont.12140:
	li	a2, 0
	bne	a1, a2, beq_else.12141
	li	a1, 0
	b	beq_cont.12142
beq_else.12141:
	li	a1, 4
	add	t6, s5, a1
	flw	fa4, 0(t6)
	fli	fa5, l.9871
	feq.s	t6, fa4, fa5
	beq	t6, zero, bne_else.12143
	li	a1, 1
	b	bne_cont.12144
bne_else.12143:
	li	a1, 0
bne_cont.12144:
	li	a2, 0
	bne	a1, a2, beq_else.12145
	li	a1, 1
	b	beq_cont.12146
beq_else.12145:
	li	a1, 0
beq_cont.12146:
beq_cont.12142:
beq_cont.12138:
	li	a2, 0
	bne	a1, a2, beq_else.12147
	li	a1, 8
	add	t6, s5, a1
	flw	fa3, 0(t6)
	fsub.s	fa3, fa3, fa1
	li	a1, 12
	add	t6, s5, a1
	flw	fa4, 0(t6)
	fmul.s	fa3, fa3, fa4
	li	a1, 0
	add	t6, s4, a1
	flw	fa4, 0(t6)
	fmul.s	fa4, fa3, fa4
	fadd.s	fa4, fa4, fa0
	fabs.s	fa4, fa4
	li	a1, 0
	add	t6, a4, a1
	flw	fa5, 0(t6)
	fle.s	t6, fa5, fa4
	beq	t6, zero, bne_else.12148
	li	a1, 0
	b	bne_cont.12149
bne_else.12148:
	li	a1, 1
bne_cont.12149:
	li	a2, 0
	bne	a1, a2, beq_else.12150
	li	a1, 0
	b	beq_cont.12151
beq_else.12150:
	li	a1, 8
	add	t6, s4, a1
	flw	fa4, 0(t6)
	fmul.s	fa4, fa3, fa4
	fadd.s	fa4, fa4, fa2
	fabs.s	fa4, fa4
	li	a1, 8
	add	t6, a4, a1
	flw	fa5, 0(t6)
	fle.s	t6, fa5, fa4
	beq	t6, zero, bne_else.12152
	li	a1, 0
	b	bne_cont.12153
bne_else.12152:
	li	a1, 1
bne_cont.12153:
	li	a2, 0
	bne	a1, a2, beq_else.12154
	li	a1, 0
	b	beq_cont.12155
beq_else.12154:
	li	a1, 12
	add	t6, s5, a1
	flw	fa4, 0(t6)
	fli	fa5, l.9871
	feq.s	t6, fa4, fa5
	beq	t6, zero, bne_else.12156
	li	a1, 1
	b	bne_cont.12157
bne_else.12156:
	li	a1, 0
bne_cont.12157:
	li	a2, 0
	bne	a1, a2, beq_else.12158
	li	a1, 1
	b	beq_cont.12159
beq_else.12158:
	li	a1, 0
beq_cont.12159:
beq_cont.12155:
beq_cont.12151:
	li	a2, 0
	bne	a1, a2, beq_else.12160
	li	a1, 16
	add	t6, s5, a1
	flw	fa3, 0(t6)
	fsub.s	fa2, fa3, fa2
	li	a1, 20
	add	t6, s5, a1
	flw	fa3, 0(t6)
	fmul.s	fa2, fa2, fa3
	li	a1, 0
	add	t6, s4, a1
	flw	fa3, 0(t6)
	fmul.s	fa3, fa2, fa3
	fadd.s	fa0, fa3, fa0
	fabs.s	fa0, fa0
	li	a1, 0
	add	t6, a4, a1
	flw	fa3, 0(t6)
	fle.s	t6, fa3, fa0
	beq	t6, zero, bne_else.12161
	li	a1, 0
	b	bne_cont.12162
bne_else.12161:
	li	a1, 1
bne_cont.12162:
	li	a2, 0
	bne	a1, a2, beq_else.12163
	li	a1, 0
	b	beq_cont.12164
beq_else.12163:
	li	a1, 4
	add	t6, s4, a1
	flw	fa0, 0(t6)
	fmul.s	fa0, fa2, fa0
	fadd.s	fa0, fa0, fa1
	fabs.s	fa0, fa0
	li	a1, 4
	add	t6, a4, a1
	flw	fa1, 0(t6)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12165
	li	a1, 0
	b	bne_cont.12166
bne_else.12165:
	li	a1, 1
bne_cont.12166:
	li	a2, 0
	bne	a1, a2, beq_else.12167
	li	a1, 0
	b	beq_cont.12168
beq_else.12167:
	li	a1, 20
	add	t6, s5, a1
	flw	fa0, 0(t6)
	fli	fa1, l.9871
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12169
	li	a1, 1
	b	bne_cont.12170
bne_else.12169:
	li	a1, 0
bne_cont.12170:
	li	a2, 0
	bne	a1, a2, beq_else.12171
	li	a1, 1
	b	beq_cont.12172
beq_else.12171:
	li	a1, 0
beq_cont.12172:
beq_cont.12168:
beq_cont.12164:
	li	a2, 0
	bne	a1, a2, beq_else.12173
	li	a0, 0
	b	solver_rect_fast.2601_ret
beq_else.12173:
	li	a1, 0
	add	t6, a0, a1
	fsw	fa2, 0(t6)
	li	a0, 3
	b	solver_rect_fast.2601_ret
beq_else.12160:
	li	a1, 0
	add	t6, a0, a1
	fsw	fa3, 0(t6)
	li	a0, 2
	b	solver_rect_fast.2601_ret
beq_else.12147:
	li	a1, 0
	add	t6, a0, a1
	fsw	fa3, 0(t6)
	li	a0, 1
	b	solver_rect_fast.2601_ret
solver_rect_fast.2601_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_surface_fast.2608:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 4(t6)
	li	a1, 0
	add	t6, s4, a1
	flw	fa3, 0(t6)
	fli	fa4, l.9871
	fle.s	t6, fa4, fa3
	beq	t6, zero, bne_else.12174
	li	a1, 0
	b	bne_cont.12175
bne_else.12174:
	li	a1, 1
bne_cont.12175:
	li	a2, 0
	bne	a1, a2, beq_else.12176
	li	a0, 0
	b	solver_surface_fast.2608_ret
beq_else.12176:
	li	a1, 4
	add	t6, s4, a1
	flw	fa3, 0(t6)
	fmul.s	fa0, fa3, fa0
	li	a1, 8
	add	t6, s4, a1
	flw	fa3, 0(t6)
	fmul.s	fa1, fa3, fa1
	fadd.s	fa0, fa0, fa1
	li	a1, 12
	add	t6, s4, a1
	flw	fa1, 0(t6)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	li	a1, 0
	add	t6, a0, a1
	fsw	fa0, 0(t6)
	li	a0, 1
	b	solver_surface_fast.2608_ret
solver_surface_fast.2608_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_second_fast.2614:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	lw	s5, 4(t6)
	li	s6, 0
	add	t6, s4, s6
	flw	fa3, 0(t6)
	fli	fa4, l.9871
	feq.s	t6, fa3, fa4
	beq	t6, zero, bne_else.12177
	li	s6, 1
	b	bne_cont.12178
bne_else.12177:
	li	s6, 0
bne_cont.12178:
	li	s7, 0
	bne	s6, s7, beq_else.12179
	li	s6, 4
	add	t6, s4, s6
	flw	fa4, 0(t6)
	fmul.s	fa4, fa4, fa0
	li	s6, 8
	add	t6, s4, s6
	flw	fa5, 0(t6)
	fmul.s	fa5, fa5, fa1
	fadd.s	fa4, fa4, fa5
	li	s6, 12
	add	t6, s4, s6
	flw	fa5, 0(t6)
	fmul.s	fa5, fa5, fa2
	fadd.s	fa4, fa4, fa5
	sw	s5, 0(sp)
	sw	s4, 4(sp)
	sw	a6, 8(sp)
	fsw	fa3, 16(sp)
	fsw	fa4, 24(sp)
	sw	a1, 32(sp)
	call	quadratic.2578
	li	a0, 3
	lw	a1, 32(sp)
	bne	a1, a0, beq_else.12181
	fli	fa1, l.9872
	fsub.s	fa0, fa0, fa1
	b	beq_cont.12182
beq_else.12181:
beq_cont.12182:
	flw	fa1, 24(sp)
	fmul.s	fa2, fa1, fa1
	flw	fa3, 16(sp)
	fmul.s	fa0, fa3, fa0
	fsub.s	fa0, fa2, fa0
	fli	fa2, l.9871
	fle.s	t6, fa0, fa2
	beq	t6, zero, bne_else.12183
	li	a0, 0
	b	bne_cont.12184
bne_else.12183:
	li	a0, 1
bne_cont.12184:
	li	a1, 0
	bne	a0, a1, beq_else.12185
	li	a0, 0
	b	solver_second_fast.2614_ret
beq_else.12185:
	li	a0, 0
	lw	a1, 8(sp)
	bne	a1, a0, beq_else.12186
	fsqrt.s	fa0, fa0
	fsub.s	fa0, fa1, fa0
	li	a0, 16
	lw	a1, 4(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.12187
beq_else.12186:
	fsqrt.s	fa0, fa0
	fadd.s	fa0, fa1, fa0
	li	a0, 16
	lw	a1, 4(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
beq_cont.12187:
	li	a0, 1
	b	solver_second_fast.2614_ret
beq_else.12179:
	li	a0, 0
	b	solver_second_fast.2614_ret
solver_second_fast.2614_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
solver_fast.2620:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a4, 16(t6)
	lw	a5, 12(t6)
	lw	a6, 8(t6)
	lw	a7, 4(t6)
	slli	s1, a0, 2
	add	t6, a7, s1
	lw	a7, 0(t6)
	li	s1, 0
	add	t6, a3, s1
	flw	fa0, 0(t6)
	lw	s1, 20(a7)
	li	s2, 0
	add	t6, s1, s2
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	li	s1, 4
	add	t6, a3, s1
	flw	fa1, 0(t6)
	lw	s1, 20(a7)
	li	s2, 4
	add	t6, s1, s2
	flw	fa2, 0(t6)
	fsub.s	fa1, fa1, fa2
	li	s1, 8
	add	t6, a3, s1
	flw	fa2, 0(t6)
	lw	a3, 20(a7)
	li	s1, 8
	add	t6, a3, s1
	flw	fa3, 0(t6)
	fsub.s	fa2, fa2, fa3
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a2, 0(t6)
	lw	a0, 4(a7)
	li	a3, 1
	bne	a0, a3, beq_else.12188
	mv	a0, a7
	mv	t6, a6
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	solver_fast.2620_ret
beq_else.12188:
	li	a1, 2
	bne	a0, a1, beq_else.12189
	mv	a1, a2
	mv	a0, a7
	mv	t6, a4
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	solver_fast.2620_ret
beq_else.12189:
	mv	a1, a2
	mv	a0, a7
	mv	t6, a5
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	solver_fast.2620_ret
solver_fast.2620_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_surface_fast2.2624:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 4(t6)
	li	a1, 0
	add	t6, s4, a1
	flw	fa0, 0(t6)
	fli	fa1, l.9871
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12190
	li	a1, 0
	b	bne_cont.12191
bne_else.12190:
	li	a1, 1
bne_cont.12191:
	li	a2, 0
	bne	a1, a2, beq_else.12192
	li	a0, 0
	b	solver_surface_fast2.2624_ret
beq_else.12192:
	li	a1, 0
	add	t6, s4, a1
	flw	fa0, 0(t6)
	li	a1, 12
	add	t6, s5, a1
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	li	a1, 0
	add	t6, a0, a1
	fsw	fa0, 0(t6)
	li	a0, 1
	b	solver_surface_fast2.2624_ret
solver_surface_fast2.2624_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_second_fast2.2631:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 4(t6)
	li	a1, 0
	add	t6, s4, a1
	flw	fa3, 0(t6)
	fli	fa4, l.9871
	feq.s	t6, fa3, fa4
	beq	t6, zero, bne_else.12193
	li	a1, 1
	b	bne_cont.12194
bne_else.12193:
	li	a1, 0
bne_cont.12194:
	li	a2, 0
	bne	a1, a2, beq_else.12195
	li	a1, 4
	add	t6, s4, a1
	flw	fa4, 0(t6)
	fmul.s	fa0, fa4, fa0
	li	a1, 8
	add	t6, s4, a1
	flw	fa4, 0(t6)
	fmul.s	fa1, fa4, fa1
	fadd.s	fa0, fa0, fa1
	li	a1, 12
	add	t6, s4, a1
	flw	fa1, 0(t6)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	li	a1, 12
	add	t6, s5, a1
	flw	fa1, 0(t6)
	fmul.s	fa2, fa0, fa0
	fmul.s	fa1, fa3, fa1
	fsub.s	fa1, fa2, fa1
	fli	fa2, l.9871
	fle.s	t6, fa1, fa2
	beq	t6, zero, bne_else.12196
	li	a1, 0
	b	bne_cont.12197
bne_else.12196:
	li	a1, 1
bne_cont.12197:
	li	a2, 0
	bne	a1, a2, beq_else.12198
	li	a0, 0
	b	solver_second_fast2.2631_ret
beq_else.12198:
	li	a1, 0
	bne	a6, a1, beq_else.12199
	fsqrt.s	fa1, fa1
	fsub.s	fa0, fa0, fa1
	li	a1, 16
	add	t6, s4, a1
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	li	a1, 0
	add	t6, a0, a1
	fsw	fa0, 0(t6)
	b	beq_cont.12200
beq_else.12199:
	fsqrt.s	fa1, fa1
	fadd.s	fa0, fa0, fa1
	li	a1, 16
	add	t6, s4, a1
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	li	a1, 0
	add	t6, a0, a1
	fsw	fa0, 0(t6)
beq_cont.12200:
	li	a0, 1
	b	solver_second_fast2.2631_ret
beq_else.12195:
	li	a0, 0
	b	solver_second_fast2.2631_ret
solver_second_fast2.2631_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_fast2.2638:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a3, 16(t6)
	lw	a4, 12(t6)
	lw	a5, 8(t6)
	lw	a6, 4(t6)
	slli	a7, a0, 2
	add	t6, a6, a7
	lw	a6, 0(t6)
	lw	a7, 40(a6)
	li	s1, 0
	add	t6, a7, s1
	flw	fa0, 0(t6)
	li	s1, 4
	add	t6, a7, s1
	flw	fa1, 0(t6)
	li	s1, 8
	add	t6, a7, s1
	flw	fa2, 0(t6)
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a2, 0(t6)
	lw	a0, 4(a6)
	li	s1, 1
	bne	a0, s1, beq_else.12201
	mv	a0, a6
	mv	t6, a5
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	solver_fast2.2638_ret
beq_else.12201:
	li	a1, 2
	bne	a0, a1, beq_else.12202
	mv	a1, a2
	mv	a0, a6
	mv	t6, a3
	mv	a2, a7
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	solver_fast2.2638_ret
beq_else.12202:
	mv	a1, a2
	mv	a0, a6
	mv	t6, a4
	mv	a2, a7
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	solver_fast2.2638_ret
solver_fast2.2638_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
setup_rect_table.2641:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	li	a1, 6
	fli	fa0, l.9871
	sw	a5, 0(sp)
	sw	a7, 4(sp)
	sw	a0, 8(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 0
	lw	a2, 8(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	fli	fa1, l.9871
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12203
	li	a1, 1
	b	bne_cont.12204
bne_else.12203:
	li	a1, 0
bne_cont.12204:
	li	a3, 0
	sw	a0, 12(sp)
	bne	a1, a3, beq_else.12205
	li	a1, 0
	add	t6, a2, a1
	flw	fa0, 0(t6)
	fli	fa1, l.9871
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12207
	li	a1, 0
	b	bne_cont.12208
bne_else.12207:
	li	a1, 1
bne_cont.12208:
	lw	a3, 4(sp)
	mv	a0, a3
	call	xor.2414
	li	a1, 0
	lw	a2, 0(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	li	a1, 0
	bne	a0, a1, beq_else.12209
	fneg.s	fa0, fa0
	b	beq_cont.12210
beq_else.12209:
beq_cont.12210:
	li	a0, 0
	lw	a1, 12(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	fli	fa0, l.9872
	li	a0, 0
	lw	a3, 8(sp)
	add	t6, a3, a0
	flw	fa1, 0(t6)
	fdiv.s	fa0, fa0, fa1
	li	a0, 4
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.12206
beq_else.12205:
	fli	fa0, l.9871
	li	a1, 4
	add	t6, a0, a1
	fsw	fa0, 0(t6)
beq_cont.12206:
	li	a0, 4
	lw	a1, 8(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	fli	fa1, l.9871
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12211
	li	a0, 1
	b	bne_cont.12212
bne_else.12211:
	li	a0, 0
bne_cont.12212:
	li	a2, 0
	bne	a0, a2, beq_else.12213
	li	a0, 4
	add	t6, a1, a0
	flw	fa0, 0(t6)
	fli	fa1, l.9871
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12215
	li	a0, 0
	b	bne_cont.12216
bne_else.12215:
	li	a0, 1
bne_cont.12216:
	lw	a2, 4(sp)
	mv	a1, a0
	mv	a0, a2
	call	xor.2414
	li	a1, 4
	lw	a2, 0(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	li	a1, 0
	bne	a0, a1, beq_else.12217
	fneg.s	fa0, fa0
	b	beq_cont.12218
beq_else.12217:
beq_cont.12218:
	li	a0, 8
	lw	a1, 12(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	fli	fa0, l.9872
	li	a0, 4
	lw	a3, 8(sp)
	add	t6, a3, a0
	flw	fa1, 0(t6)
	fdiv.s	fa0, fa0, fa1
	li	a0, 12
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.12214
beq_else.12213:
	fli	fa0, l.9871
	li	a0, 12
	lw	a2, 12(sp)
	add	t6, a2, a0
	fsw	fa0, 0(t6)
beq_cont.12214:
	li	a0, 8
	lw	a1, 8(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	fli	fa1, l.9871
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12219
	li	a0, 1
	b	bne_cont.12220
bne_else.12219:
	li	a0, 0
bne_cont.12220:
	li	a2, 0
	bne	a0, a2, beq_else.12221
	li	a0, 8
	add	t6, a1, a0
	flw	fa0, 0(t6)
	fli	fa1, l.9871
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12223
	li	a0, 0
	b	bne_cont.12224
bne_else.12223:
	li	a0, 1
bne_cont.12224:
	lw	a2, 4(sp)
	mv	a1, a0
	mv	a0, a2
	call	xor.2414
	li	a1, 8
	lw	a2, 0(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	li	a1, 0
	bne	a0, a1, beq_else.12225
	fneg.s	fa0, fa0
	b	beq_cont.12226
beq_else.12225:
beq_cont.12226:
	li	a0, 16
	lw	a1, 12(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	fli	fa0, l.9872
	li	a0, 8
	lw	a2, 8(sp)
	add	t6, a2, a0
	flw	fa1, 0(t6)
	fdiv.s	fa0, fa0, fa1
	li	a0, 20
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.12222
beq_else.12221:
	fli	fa0, l.9871
	li	a0, 20
	lw	a1, 12(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
beq_cont.12222:
	mv	a0, a1
	b	setup_rect_table.2641_ret
setup_rect_table.2641_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
setup_surface_table.2644:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	li	a1, 4
	fli	fa0, l.9871
	sw	a5, 0(sp)
	sw	a0, 4(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 0
	lw	a2, 4(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	li	a1, 0
	lw	a3, 0(sp)
	add	t6, a3, a1
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	li	a1, 4
	add	t6, a2, a1
	flw	fa1, 0(t6)
	li	a1, 4
	add	t6, a3, a1
	flw	fa2, 0(t6)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	li	a1, 8
	add	t6, a2, a1
	flw	fa1, 0(t6)
	li	a1, 8
	add	t6, a3, a1
	flw	fa2, 0(t6)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	fli	fa1, l.9871
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12227
	li	a1, 0
	b	bne_cont.12228
bne_else.12227:
	li	a1, 1
bne_cont.12228:
	li	a2, 0
	bne	a1, a2, beq_else.12229
	fli	fa0, l.9871
	li	a1, 0
	add	t6, a0, a1
	fsw	fa0, 0(t6)
	b	beq_cont.12230
beq_else.12229:
	fli	fa1, l.9873
	fdiv.s	fa1, fa1, fa0
	li	a1, 0
	add	t6, a0, a1
	fsw	fa1, 0(t6)
	li	a1, 0
	add	t6, a3, a1
	flw	fa1, 0(t6)
	fdiv.s	fa1, fa1, fa0
	fneg.s	fa1, fa1
	li	a1, 4
	add	t6, a0, a1
	fsw	fa1, 0(t6)
	li	a1, 4
	add	t6, a3, a1
	flw	fa1, 0(t6)
	fdiv.s	fa1, fa1, fa0
	fneg.s	fa1, fa1
	li	a1, 8
	add	t6, a0, a1
	fsw	fa1, 0(t6)
	li	a1, 8
	add	t6, a3, a1
	flw	fa1, 0(t6)
	fdiv.s	fa0, fa1, fa0
	fneg.s	fa0, fa0
	li	a1, 12
	add	t6, a0, a1
	fsw	fa0, 0(t6)
beq_cont.12230:
	b	setup_surface_table.2644_ret
setup_surface_table.2644_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
setup_second_table.2647:
	addi	sp, sp, -64
	sw	ra, 60(sp)
	sw	fp, 56(sp)
	addi	fp, sp, 64
	li	s5, 5
	fli	fa0, l.9871
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
	call	quadratic.2578
	li	a0, 0
	lw	a1, 44(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	li	a0, 0
	lw	a2, 24(sp)
	add	t6, a2, a0
	flw	fa2, 0(t6)
	fmul.s	fa1, fa1, fa2
	fneg.s	fa1, fa1
	li	a0, 4
	add	t6, a1, a0
	flw	fa2, 0(t6)
	li	a0, 4
	add	t6, a2, a0
	flw	fa3, 0(t6)
	fmul.s	fa2, fa2, fa3
	fneg.s	fa2, fa2
	li	a0, 8
	add	t6, a1, a0
	flw	fa3, 0(t6)
	li	a0, 8
	add	t6, a2, a0
	flw	fa4, 0(t6)
	fmul.s	fa3, fa3, fa4
	fneg.s	fa3, fa3
	li	a0, 0
	lw	a2, 48(sp)
	add	t6, a2, a0
	fsw	fa0, 0(t6)
	li	a0, 0
	lw	a3, 28(sp)
	bne	a3, a0, beq_else.12231
	li	a0, 4
	add	t6, a2, a0
	fsw	fa1, 0(t6)
	li	a0, 8
	add	t6, a2, a0
	fsw	fa2, 0(t6)
	li	a0, 12
	add	t6, a2, a0
	fsw	fa3, 0(t6)
	b	beq_cont.12232
beq_else.12231:
	li	a0, 8
	add	t6, a1, a0
	flw	fa4, 0(t6)
	li	a0, 4
	lw	a3, 4(sp)
	add	t6, a3, a0
	flw	fa5, 0(t6)
	fmul.s	fa4, fa4, fa5
	li	a0, 4
	add	t6, a1, a0
	flw	fa5, 0(t6)
	li	a0, 8
	add	t6, a3, a0
	flw	fa6, 0(t6)
	fmul.s	fa5, fa5, fa6
	fadd.s	fa4, fa4, fa5
	fli	fa5, l.9980
	fdiv.s	fa4, fa4, fa5
	fsub.s	fa1, fa1, fa4
	li	a0, 4
	add	t6, a2, a0
	fsw	fa1, 0(t6)
	li	a0, 8
	add	t6, a1, a0
	flw	fa1, 0(t6)
	li	a0, 0
	add	t6, a3, a0
	flw	fa4, 0(t6)
	fmul.s	fa1, fa1, fa4
	li	a0, 0
	add	t6, a1, a0
	flw	fa4, 0(t6)
	li	a0, 8
	add	t6, a3, a0
	flw	fa5, 0(t6)
	fmul.s	fa4, fa4, fa5
	fadd.s	fa1, fa1, fa4
	fli	fa4, l.9980
	fdiv.s	fa1, fa1, fa4
	fsub.s	fa1, fa2, fa1
	li	a0, 8
	add	t6, a2, a0
	fsw	fa1, 0(t6)
	li	a0, 4
	add	t6, a1, a0
	flw	fa1, 0(t6)
	li	a0, 0
	add	t6, a3, a0
	flw	fa2, 0(t6)
	fmul.s	fa1, fa1, fa2
	li	a0, 0
	add	t6, a1, a0
	flw	fa2, 0(t6)
	li	a0, 4
	add	t6, a3, a0
	flw	fa4, 0(t6)
	fmul.s	fa2, fa2, fa4
	fadd.s	fa1, fa1, fa2
	fli	fa2, l.9980
	fdiv.s	fa1, fa1, fa2
	fsub.s	fa1, fa3, fa1
	li	a0, 12
	add	t6, a2, a0
	fsw	fa1, 0(t6)
beq_cont.12232:
	fli	fa1, l.9871
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12233
	li	a0, 1
	b	bne_cont.12234
bne_else.12233:
	li	a0, 0
bne_cont.12234:
	li	a1, 0
	bne	a0, a1, beq_else.12235
	fli	fa1, l.9872
	fdiv.s	fa0, fa1, fa0
	li	a0, 16
	add	t6, a2, a0
	fsw	fa0, 0(t6)
	b	beq_cont.12236
beq_else.12235:
beq_cont.12236:
	mv	a0, a2
	b	setup_second_table.2647_ret
setup_second_table.2647_ret:
	lw	ra, 60(sp)
	lw	fp, 56(sp)
	addi	sp, sp, 64
	jr	ra
iter_setup_dirvec_constants.2650:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	lw	a3, 4(t6)
	li	a4, 0
	bgt	a4, a2, ble_else.12237
	slli	a4, a2, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	lw	a4, 4(a3)
	li	a5, 1
	sw	a0, 0(sp)
	sw	t6, 4(sp)
	bne	a4, a5, beq_else.12238
	sw	a1, 8(sp)
	sw	a2, 12(sp)
	mv	a1, a3
	call	setup_rect_table.2641
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont.12239
beq_else.12238:
	li	a5, 2
	bne	a4, a5, beq_else.12240
	sw	a1, 8(sp)
	sw	a2, 12(sp)
	mv	a1, a3
	call	setup_surface_table.2644
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont.12241
beq_else.12240:
	sw	a1, 8(sp)
	sw	a2, 12(sp)
	mv	a1, a3
	call	setup_second_table.2647
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
beq_cont.12241:
beq_cont.12239:
	addi	a2, a1, -1
	lw	a0, 0(sp)
	lw	t6, 4(sp)
	mv	a1, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	iter_setup_dirvec_constants.2650_ret
ble_else.12237:
	b	iter_setup_dirvec_constants.2650_ret
iter_setup_dirvec_constants.2650_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
setup_dirvec_constants.2653:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a2, 8(t6)
	lw	t6, 4(t6)
	li	a3, 0
	add	t6, a2, a3
	lw	a2, 0(t6)
	addi	a2, a2, -1
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	setup_dirvec_constants.2653_ret
setup_dirvec_constants.2653_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
setup_startp_constants.2655:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	fp, 24(sp)
	addi	fp, sp, 32
	lw	a2, 4(t6)
	li	a3, 0
	bgt	a3, a1, ble_else.12243
	slli	a3, a1, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	lw	a3, 40(a2)
	lw	a4, 4(a2)
	li	a5, 0
	add	t6, a0, a5
	flw	fa0, 0(t6)
	lw	a5, 20(a2)
	li	a6, 0
	add	t6, a5, a6
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	li	a5, 0
	add	t6, a3, a5
	fsw	fa0, 0(t6)
	li	a5, 4
	add	t6, a0, a5
	flw	fa0, 0(t6)
	lw	a5, 20(a2)
	li	a6, 4
	add	t6, a5, a6
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	li	a5, 4
	add	t6, a3, a5
	fsw	fa0, 0(t6)
	li	a5, 8
	add	t6, a0, a5
	flw	fa0, 0(t6)
	lw	a5, 20(a2)
	li	a6, 8
	add	t6, a5, a6
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	li	a5, 8
	add	t6, a3, a5
	fsw	fa0, 0(t6)
	li	a5, 2
	sw	a0, 0(sp)
	sw	t6, 4(sp)
	sw	a1, 8(sp)
	bne	a4, a5, beq_else.12244
	lw	a2, 16(a2)
	li	a4, 0
	add	t6, a3, a4
	flw	fa0, 0(t6)
	li	a4, 4
	add	t6, a3, a4
	flw	fa1, 0(t6)
	li	a4, 8
	add	t6, a3, a4
	flw	fa2, 0(t6)
	sw	a3, 12(sp)
	mv	a0, a2
	call	veciprod2.2444
	li	a0, 12
	lw	a1, 12(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	beq_cont.12245
beq_else.12244:
	li	a5, 2
	bgt	a4, a5, ble_else.12246
	b	ble_cont.12247
ble_else.12246:
	li	a5, 0
	add	t6, a3, a5
	flw	fa0, 0(t6)
	li	a5, 4
	add	t6, a3, a5
	flw	fa1, 0(t6)
	li	a5, 8
	add	t6, a3, a5
	flw	fa2, 0(t6)
	sw	a3, 12(sp)
	sw	a4, 16(sp)
	mv	a0, a2
	call	quadratic.2578
	li	a0, 3
	lw	a1, 16(sp)
	bne	a1, a0, beq_else.12248
	fli	fa1, l.9872
	fsub.s	fa0, fa0, fa1
	b	beq_cont.12249
beq_else.12248:
beq_cont.12249:
	li	a0, 12
	lw	a1, 12(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
ble_cont.12247:
beq_cont.12245:
	lw	a0, 8(sp)
	addi	a1, a0, -1
	lw	a0, 0(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	setup_startp_constants.2655_ret
ble_else.12243:
	b	setup_startp_constants.2655_ret
setup_startp_constants.2655_ret:
	lw	ra, 28(sp)
	lw	fp, 24(sp)
	addi	sp, sp, 32
	jr	ra
setup_startp.2658:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	sw	a0, 0(sp)
	sw	a2, 4(sp)
	sw	a3, 8(sp)
	mv	t5, a1
	mv	a1, a0
	mv	a0, t5
	call	veccpy.2435
	li	a0, 0
	lw	a1, 8(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	addi	a1, a0, -1
	lw	a0, 0(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	setup_startp.2658_ret
setup_startp.2658_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
is_rect_outside.2660:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fabs.s	fa0, fa0
	li	a0, 0
	add	t6, a4, a0
	flw	fa3, 0(t6)
	fle.s	t6, fa3, fa0
	beq	t6, zero, bne_else.12251
	li	a0, 0
	b	bne_cont.12252
bne_else.12251:
	li	a0, 1
bne_cont.12252:
	li	a1, 0
	bne	a0, a1, beq_else.12253
	li	a0, 0
	b	beq_cont.12254
beq_else.12253:
	fabs.s	fa0, fa1
	li	a0, 4
	add	t6, a4, a0
	flw	fa1, 0(t6)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12255
	li	a0, 0
	b	bne_cont.12256
bne_else.12255:
	li	a0, 1
bne_cont.12256:
	li	a1, 0
	bne	a0, a1, beq_else.12257
	li	a0, 0
	b	beq_cont.12258
beq_else.12257:
	fabs.s	fa0, fa2
	li	a0, 8
	add	t6, a4, a0
	flw	fa1, 0(t6)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12259
	li	a0, 0
	b	bne_cont.12260
bne_else.12259:
	li	a0, 1
bne_cont.12260:
beq_cont.12258:
beq_cont.12254:
	li	a1, 0
	bne	a0, a1, beq_else.12261
	li	a0, 0
	bne	a6, a0, beq_else.12262
	li	a0, 1
	b	is_rect_outside.2660_ret
beq_else.12262:
	li	a0, 0
	b	is_rect_outside.2660_ret
beq_else.12261:
	mv	a0, a6
	b	is_rect_outside.2660_ret
is_rect_outside.2660_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
is_plane_outside.2665:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	sw	a6, 0(sp)
	mv	a0, a4
	call	veciprod2.2444
	fli	fa1, l.9871
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12263
	li	a1, 0
	b	bne_cont.12264
bne_else.12263:
	li	a1, 1
bne_cont.12264:
	lw	a0, 0(sp)
	call	xor.2414
	li	a1, 0
	bne	a0, a1, beq_else.12265
	li	a0, 1
	b	is_plane_outside.2665_ret
beq_else.12265:
	li	a0, 0
	b	is_plane_outside.2665_ret
is_plane_outside.2665_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
is_second_outside.2670:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	sw	a6, 0(sp)
	sw	a1, 4(sp)
	call	quadratic.2578
	li	a0, 3
	lw	a1, 4(sp)
	bne	a1, a0, beq_else.12266
	fli	fa1, l.9872
	fsub.s	fa0, fa0, fa1
	b	beq_cont.12267
beq_else.12266:
beq_cont.12267:
	fli	fa1, l.9871
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12268
	li	a1, 0
	b	bne_cont.12269
bne_else.12268:
	li	a1, 1
bne_cont.12269:
	lw	a0, 0(sp)
	call	xor.2414
	li	a1, 0
	bne	a0, a1, beq_else.12270
	li	a0, 1
	b	is_second_outside.2670_ret
beq_else.12270:
	li	a0, 0
	b	is_second_outside.2670_ret
is_second_outside.2670_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
is_outside.2675:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	li	s4, 0
	add	t6, a5, s4
	flw	fa3, 0(t6)
	fsub.s	fa0, fa0, fa3
	li	s4, 4
	add	t6, a5, s4
	flw	fa3, 0(t6)
	fsub.s	fa1, fa1, fa3
	li	s4, 8
	add	t6, a5, s4
	flw	fa3, 0(t6)
	fsub.s	fa2, fa2, fa3
	li	s4, 1
	bne	a1, s4, beq_else.12271
	call	is_rect_outside.2660
	b	is_outside.2675_ret
beq_else.12271:
	li	s4, 2
	bne	a1, s4, beq_else.12272
	call	is_plane_outside.2665
	b	is_outside.2675_ret
beq_else.12272:
	call	is_second_outside.2670
	b	is_outside.2675_ret
is_outside.2675_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
check_all_inside.2680:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	lw	a2, 4(t6)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	li	a4, -1
	bne	a3, a4, beq_else.12273
	li	a0, 1
	b	check_all_inside.2680_ret
beq_else.12273:
	slli	a3, a3, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	fsw	fa2, 0(sp)
	fsw	fa1, 8(sp)
	fsw	fa0, 16(sp)
	sw	a1, 24(sp)
	sw	t6, 28(sp)
	sw	a0, 32(sp)
	mv	a0, a2
	call	is_outside.2675
	li	a1, 0
	bne	a0, a1, beq_else.12274
	lw	a0, 32(sp)
	addi	a0, a0, 1
	flw	fa0, 16(sp)
	flw	fa1, 8(sp)
	flw	fa2, 0(sp)
	lw	a1, 24(sp)
	lw	t6, 28(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	check_all_inside.2680_ret
beq_else.12274:
	li	a0, 0
	b	check_all_inside.2680_ret
check_all_inside.2680_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
shadow_check_and_group.2686:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	lw	a2, 28(t6)
	lw	a3, 24(t6)
	lw	a4, 20(t6)
	lw	a5, 16(t6)
	lw	a6, 12(t6)
	lw	a7, 8(t6)
	lw	s1, 4(t6)
	slli	s2, a0, 2
	add	t6, a1, s2
	lw	s2, 0(t6)
	li	s3, -1
	bne	s2, s3, beq_else.12275
	li	a0, 0
	b	shadow_check_and_group.2686_ret
beq_else.12275:
	slli	s2, a0, 2
	add	t6, a1, s2
	lw	s2, 0(t6)
	sw	s1, 0(sp)
	sw	a7, 4(sp)
	sw	a6, 8(sp)
	sw	a1, 12(sp)
	sw	t6, 16(sp)
	sw	a0, 20(sp)
	sw	a4, 24(sp)
	sw	s2, 28(sp)
	sw	a3, 32(sp)
	mv	a1, a5
	mv	a0, s2
	mv	t6, a2
	mv	a2, a7
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	lw	a2, 32(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	li	a1, 0
	bne	a0, a1, beq_else.12276
	li	a0, 0
	b	beq_cont.12277
beq_else.12276:
	fli	fa1, l.10222
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12278
	li	a0, 0
	b	bne_cont.12279
bne_else.12278:
	li	a0, 1
bne_cont.12279:
beq_cont.12277:
	li	a1, 0
	bne	a0, a1, beq_else.12280
	lw	a0, 28(sp)
	slli	a0, a0, 2
	lw	a1, 24(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	li	a1, 0
	bne	a0, a1, beq_else.12281
	li	a0, 0
	b	shadow_check_and_group.2686_ret
beq_else.12281:
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	t6, 16(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	shadow_check_and_group.2686_ret
beq_else.12280:
	fli	fa1, l.10223
	fadd.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 8(sp)
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
	fmul.s	fa0, fa3, fa0
	li	a0, 8
	add	t6, a2, a0
	flw	fa3, 0(t6)
	fadd.s	fa0, fa0, fa3
	li	a0, 0
	lw	a1, 12(sp)
	lw	t6, 0(sp)
	fmv.s	ft11, fa2
	fmv.s	fa2, fa0
	fmv.s	fa0, fa1
	fmv.s	fa1, ft11
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12282
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	t6, 16(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	shadow_check_and_group.2686_ret
beq_else.12282:
	li	a0, 1
	b	shadow_check_and_group.2686_ret
shadow_check_and_group.2686_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
shadow_check_one_or_group.2689:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	slli	a4, a0, 2
	add	t6, a1, a4
	lw	a4, 0(t6)
	li	a5, -1
	bne	a4, a5, beq_else.12283
	li	a0, 0
	b	shadow_check_one_or_group.2689_ret
beq_else.12283:
	slli	a4, a4, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	li	a4, 0
	sw	a1, 0(sp)
	sw	t6, 4(sp)
	sw	a0, 8(sp)
	mv	a1, a3
	mv	a0, a4
	mv	t6, a2
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12284
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	a1, 0(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	shadow_check_one_or_group.2689_ret
beq_else.12284:
	li	a0, 1
	b	shadow_check_one_or_group.2689_ret
shadow_check_one_or_group.2689_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
shadow_check_one_or_matrix.2692:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	lw	a2, 20(t6)
	lw	a3, 16(t6)
	lw	a4, 12(t6)
	lw	a5, 8(t6)
	lw	a6, 4(t6)
	slli	a7, a0, 2
	add	t6, a1, a7
	lw	a7, 0(t6)
	li	s1, 0
	add	t6, a7, s1
	lw	s1, 0(t6)
	li	s2, -1
	bne	s1, s2, beq_else.12285
	li	a0, 0
	b	shadow_check_one_or_matrix.2692_ret
beq_else.12285:
	li	s2, 99
	sw	a7, 0(sp)
	sw	a4, 4(sp)
	sw	a1, 8(sp)
	sw	t6, 12(sp)
	sw	a0, 16(sp)
	bne	s1, s2, beq_else.12286
	li	a0, 1
	b	beq_cont.12287
beq_else.12286:
	sw	a3, 20(sp)
	mv	a1, a5
	mv	a0, s1
	mv	t6, a2
	mv	a2, a6
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12288
	li	a0, 0
	b	beq_cont.12289
beq_else.12288:
	li	a0, 0
	lw	a1, 20(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	fli	fa1, l.10236
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12290
	li	a0, 0
	b	bne_cont.12291
bne_else.12290:
	li	a0, 1
bne_cont.12291:
	li	a1, 0
	bne	a0, a1, beq_else.12292
	li	a0, 0
	b	beq_cont.12293
beq_else.12292:
	li	a0, 1
	lw	a1, 0(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12294
	li	a0, 0
	b	beq_cont.12295
beq_else.12294:
	li	a0, 1
beq_cont.12295:
beq_cont.12293:
beq_cont.12289:
beq_cont.12287:
	li	a1, 0
	bne	a0, a1, beq_else.12296
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	t6, 12(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix.2692_ret
beq_else.12296:
	li	a0, 1
	lw	a1, 0(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12297
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	t6, 12(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix.2692_ret
beq_else.12297:
	li	a0, 1
	b	shadow_check_one_or_matrix.2692_ret
shadow_check_one_or_matrix.2692_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
solve_each_element.2695:
	addi	sp, sp, -100
	sw	ra, 96(sp)
	sw	fp, 92(sp)
	addi	fp, sp, 100
	lw	a3, 36(t6)
	lw	a4, 32(t6)
	lw	a5, 28(t6)
	lw	a6, 24(t6)
	lw	a7, 20(t6)
	lw	s1, 16(t6)
	lw	s2, 12(t6)
	lw	s3, 8(t6)
	lw	s4, 4(t6)
	slli	s5, a0, 2
	add	t6, a1, s5
	lw	s5, 0(t6)
	li	s6, -1
	bne	s5, s6, beq_else.12298
	b	solve_each_element.2695_ret
beq_else.12298:
	sw	s1, 0(sp)
	sw	s3, 4(sp)
	sw	s2, 8(sp)
	sw	s4, 12(sp)
	sw	a4, 16(sp)
	sw	a3, 20(sp)
	sw	a5, 24(sp)
	sw	a2, 28(sp)
	sw	a1, 32(sp)
	sw	t6, 36(sp)
	sw	a0, 40(sp)
	sw	a7, 44(sp)
	sw	s5, 48(sp)
	mv	a1, a2
	mv	a0, s5
	mv	t6, a6
	mv	a2, a4
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12300
	lw	a0, 48(sp)
	slli	a0, a0, 2
	lw	a1, 44(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	li	a1, 0
	bne	a0, a1, beq_else.12301
	b	solve_each_element.2695_ret
beq_else.12301:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	t6, 36(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	solve_each_element.2695_ret
beq_else.12300:
	li	a1, 0
	lw	a2, 24(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	fli	fa1, l.9871
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12303
	li	a1, 0
	b	bne_cont.12304
bne_else.12303:
	li	a1, 1
bne_cont.12304:
	li	a2, 0
	bne	a1, a2, beq_else.12305
	b	beq_cont.12306
beq_else.12305:
	li	a1, 0
	lw	a2, 20(sp)
	add	t6, a2, a1
	flw	fa1, 0(t6)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12307
	li	a1, 0
	b	bne_cont.12308
bne_else.12307:
	li	a1, 1
bne_cont.12308:
	li	a3, 0
	bne	a1, a3, beq_else.12309
	b	beq_cont.12310
beq_else.12309:
	fli	fa1, l.10223
	fadd.s	fa0, fa0, fa1
	li	a1, 0
	lw	a3, 28(sp)
	add	t6, a3, a1
	flw	fa1, 0(t6)
	fmul.s	fa1, fa1, fa0
	li	a1, 0
	lw	a4, 16(sp)
	add	t6, a4, a1
	flw	fa2, 0(t6)
	fadd.s	fa1, fa1, fa2
	li	a1, 4
	add	t6, a3, a1
	flw	fa2, 0(t6)
	fmul.s	fa2, fa2, fa0
	li	a1, 4
	add	t6, a4, a1
	flw	fa3, 0(t6)
	fadd.s	fa2, fa2, fa3
	li	a1, 8
	add	t6, a3, a1
	flw	fa3, 0(t6)
	fmul.s	fa3, fa3, fa0
	li	a1, 8
	add	t6, a4, a1
	flw	fa4, 0(t6)
	fadd.s	fa3, fa3, fa4
	li	a1, 0
	lw	a4, 32(sp)
	lw	t6, 12(sp)
	sw	a0, 52(sp)
	fsw	fa3, 56(sp)
	fsw	fa2, 64(sp)
	fsw	fa1, 72(sp)
	fsw	fa0, 80(sp)
	mv	a0, a1
	mv	a1, a4
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12311
	b	beq_cont.12312
beq_else.12311:
	li	a0, 0
	lw	a1, 20(sp)
	flw	fa0, 80(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	flw	fa0, 72(sp)
	flw	fa1, 64(sp)
	flw	fa2, 56(sp)
	lw	a0, 8(sp)
	call	vecset.2425
	li	a0, 0
	lw	a1, 4(sp)
	lw	a2, 48(sp)
	add	t6, a1, a0
	sw	a2, 0(t6)
	li	a0, 0
	lw	a1, 0(sp)
	lw	a2, 52(sp)
	add	t6, a1, a0
	sw	a2, 0(t6)
beq_cont.12312:
beq_cont.12310:
beq_cont.12306:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	t6, 36(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	solve_each_element.2695_ret
solve_each_element.2695_ret:
	lw	ra, 96(sp)
	lw	fp, 92(sp)
	addi	sp, sp, 100
	jr	ra
solve_one_or_network.2699:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	slli	a5, a0, 2
	add	t6, a1, a5
	lw	a5, 0(t6)
	li	a6, -1
	bne	a5, a6, beq_else.12313
	b	solve_one_or_network.2699_ret
beq_else.12313:
	slli	a5, a5, 2
	add	t6, a4, a5
	lw	a4, 0(t6)
	li	a5, 0
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	t6, 8(sp)
	sw	a0, 12(sp)
	mv	a1, a4
	mv	a0, a5
	mv	t6, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	t6, 8(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	solve_one_or_network.2699_ret
solve_one_or_network.2699_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
trace_or_matrix.2703:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a3, 20(t6)
	lw	a4, 16(t6)
	lw	a5, 12(t6)
	lw	a6, 8(t6)
	lw	a7, 4(t6)
	slli	s1, a0, 2
	add	t6, a1, s1
	lw	s1, 0(t6)
	li	s2, 0
	add	t6, s1, s2
	lw	s2, 0(t6)
	li	s3, -1
	bne	s2, s3, beq_else.12315
	b	trace_or_matrix.2703_ret
beq_else.12315:
	li	s3, 99
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	t6, 8(sp)
	sw	a0, 12(sp)
	bne	s2, s3, beq_else.12317
	li	a3, 1
	mv	a1, s1
	mv	a0, a3
	mv	t6, a7
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	beq_cont.12318
beq_else.12317:
	sw	s1, 16(sp)
	sw	a7, 20(sp)
	sw	a3, 24(sp)
	sw	a5, 28(sp)
	mv	a1, a2
	mv	a0, s2
	mv	t6, a6
	mv	a2, a4
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12319
	b	beq_cont.12320
beq_else.12319:
	li	a0, 0
	lw	a1, 28(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	li	a0, 0
	lw	a1, 24(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12321
	li	a0, 0
	b	bne_cont.12322
bne_else.12321:
	li	a0, 1
bne_cont.12322:
	li	a1, 0
	bne	a0, a1, beq_else.12323
	b	beq_cont.12324
beq_else.12323:
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	t6, 20(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
beq_cont.12324:
beq_cont.12320:
beq_cont.12318:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	t6, 8(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	trace_or_matrix.2703_ret
trace_or_matrix.2703_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
judge_intersection.2707:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	fli	fa0, l.10256
	li	a4, 0
	add	t6, a2, a4
	fsw	fa0, 0(t6)
	li	a4, 0
	li	a5, 0
	add	t6, a3, a5
	lw	a3, 0(t6)
	sw	a2, 0(sp)
	mv	a2, a0
	mv	t6, a1
	mv	a1, a3
	mv	a0, a4
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	fli	fa1, l.10236
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12325
	li	a0, 0
	b	bne_cont.12326
bne_else.12325:
	li	a0, 1
bne_cont.12326:
	li	a1, 0
	bne	a0, a1, beq_else.12327
	li	a0, 0
	b	judge_intersection.2707_ret
beq_else.12327:
	fli	fa1, l.10260
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12328
	li	a0, 0
	b	judge_intersection.2707_ret
bne_else.12328:
	li	a0, 1
	b	judge_intersection.2707_ret
judge_intersection.2707_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
solve_each_element_fast.2709:
	addi	sp, sp, -108
	sw	ra, 104(sp)
	sw	fp, 100(sp)
	addi	fp, sp, 108
	lw	a4, 36(t6)
	lw	a5, 32(t6)
	lw	a6, 28(t6)
	lw	a7, 24(t6)
	lw	s1, 20(t6)
	lw	s2, 16(t6)
	lw	s3, 12(t6)
	lw	s4, 8(t6)
	lw	s5, 4(t6)
	slli	s6, a0, 2
	add	t6, a1, s6
	lw	s6, 0(t6)
	li	s7, -1
	bne	s6, s7, beq_else.12329
	b	solve_each_element_fast.2709_ret
beq_else.12329:
	sw	s2, 0(sp)
	sw	s4, 4(sp)
	sw	s3, 8(sp)
	sw	s5, 12(sp)
	sw	a5, 16(sp)
	sw	a4, 20(sp)
	sw	a7, 24(sp)
	sw	a3, 28(sp)
	sw	a2, 32(sp)
	sw	a1, 36(sp)
	sw	t6, 40(sp)
	sw	a0, 44(sp)
	sw	s1, 48(sp)
	sw	s6, 52(sp)
	mv	a1, a2
	mv	a0, s6
	mv	t6, a6
	mv	a2, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12331
	lw	a0, 52(sp)
	slli	a0, a0, 2
	lw	a1, 48(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	li	a1, 0
	bne	a0, a1, beq_else.12332
	b	solve_each_element_fast.2709_ret
beq_else.12332:
	lw	a0, 44(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	t6, 40(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	solve_each_element_fast.2709_ret
beq_else.12331:
	li	a1, 0
	lw	a2, 24(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	fli	fa1, l.9871
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12334
	li	a1, 0
	b	bne_cont.12335
bne_else.12334:
	li	a1, 1
bne_cont.12335:
	li	a2, 0
	bne	a1, a2, beq_else.12336
	b	beq_cont.12337
beq_else.12336:
	li	a1, 0
	lw	a2, 20(sp)
	add	t6, a2, a1
	flw	fa1, 0(t6)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12338
	li	a1, 0
	b	bne_cont.12339
bne_else.12338:
	li	a1, 1
bne_cont.12339:
	li	a3, 0
	bne	a1, a3, beq_else.12340
	b	beq_cont.12341
beq_else.12340:
	fli	fa1, l.10223
	fadd.s	fa0, fa0, fa1
	li	a1, 0
	lw	a3, 32(sp)
	add	t6, a3, a1
	flw	fa1, 0(t6)
	fmul.s	fa1, fa1, fa0
	li	a1, 0
	lw	a4, 16(sp)
	add	t6, a4, a1
	flw	fa2, 0(t6)
	fadd.s	fa1, fa1, fa2
	li	a1, 4
	add	t6, a3, a1
	flw	fa2, 0(t6)
	fmul.s	fa2, fa2, fa0
	li	a1, 4
	add	t6, a4, a1
	flw	fa3, 0(t6)
	fadd.s	fa2, fa2, fa3
	li	a1, 8
	add	t6, a3, a1
	flw	fa3, 0(t6)
	fmul.s	fa3, fa3, fa0
	li	a1, 8
	add	t6, a4, a1
	flw	fa4, 0(t6)
	fadd.s	fa3, fa3, fa4
	li	a1, 0
	lw	a4, 36(sp)
	lw	t6, 12(sp)
	sw	a0, 56(sp)
	fsw	fa3, 64(sp)
	fsw	fa2, 72(sp)
	fsw	fa1, 80(sp)
	fsw	fa0, 88(sp)
	mv	a0, a1
	mv	a1, a4
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12343
	b	beq_cont.12344
beq_else.12343:
	li	a0, 0
	lw	a1, 20(sp)
	flw	fa0, 88(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	flw	fa0, 80(sp)
	flw	fa1, 72(sp)
	flw	fa2, 64(sp)
	lw	a0, 8(sp)
	call	vecset.2425
	li	a0, 0
	lw	a1, 4(sp)
	lw	a2, 52(sp)
	add	t6, a1, a0
	sw	a2, 0(t6)
	li	a0, 0
	lw	a1, 0(sp)
	lw	a2, 56(sp)
	add	t6, a1, a0
	sw	a2, 0(t6)
beq_cont.12344:
beq_cont.12341:
beq_cont.12337:
	lw	a0, 44(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	t6, 40(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	solve_each_element_fast.2709_ret
solve_each_element_fast.2709_ret:
	lw	ra, 104(sp)
	lw	fp, 100(sp)
	addi	sp, sp, 108
	jr	ra
solve_one_or_network_fast.2713:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	fp, 24(sp)
	addi	fp, sp, 32
	lw	a4, 8(t6)
	lw	a5, 4(t6)
	slli	a6, a0, 2
	add	t6, a1, a6
	lw	a6, 0(t6)
	li	a7, -1
	bne	a6, a7, beq_else.12345
	b	solve_one_or_network_fast.2713_ret
beq_else.12345:
	slli	a6, a6, 2
	add	t6, a5, a6
	lw	a5, 0(t6)
	li	a6, 0
	sw	a3, 0(sp)
	sw	a2, 4(sp)
	sw	a1, 8(sp)
	sw	t6, 12(sp)
	sw	a0, 16(sp)
	mv	a1, a5
	mv	a0, a6
	mv	t6, a4
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	a2, 4(sp)
	lw	a3, 0(sp)
	lw	t6, 12(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	solve_one_or_network_fast.2713_ret
solve_one_or_network_fast.2713_ret:
	lw	ra, 28(sp)
	lw	fp, 24(sp)
	addi	sp, sp, 32
	jr	ra
trace_or_matrix_fast.2717:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	lw	a4, 16(t6)
	lw	a5, 12(t6)
	lw	a6, 8(t6)
	lw	a7, 4(t6)
	slli	s1, a0, 2
	add	t6, a1, s1
	lw	s1, 0(t6)
	li	s2, 0
	add	t6, s1, s2
	lw	s2, 0(t6)
	li	s3, -1
	bne	s2, s3, beq_else.12347
	b	trace_or_matrix_fast.2717_ret
beq_else.12347:
	li	s3, 99
	sw	a3, 0(sp)
	sw	a2, 4(sp)
	sw	a1, 8(sp)
	sw	t6, 12(sp)
	sw	a0, 16(sp)
	bne	s2, s3, beq_else.12349
	li	a4, 1
	mv	a1, s1
	mv	a0, a4
	mv	t6, a7
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	beq_cont.12350
beq_else.12349:
	sw	s1, 20(sp)
	sw	a7, 24(sp)
	sw	a4, 28(sp)
	sw	a6, 32(sp)
	mv	a1, a2
	mv	a0, s2
	mv	t6, a5
	mv	a2, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12351
	b	beq_cont.12352
beq_else.12351:
	li	a0, 0
	lw	a1, 32(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	li	a0, 0
	lw	a1, 28(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12353
	li	a0, 0
	b	bne_cont.12354
bne_else.12353:
	li	a0, 1
bne_cont.12354:
	li	a1, 0
	bne	a0, a1, beq_else.12355
	b	beq_cont.12356
beq_else.12355:
	li	a0, 1
	lw	a1, 20(sp)
	lw	a2, 4(sp)
	lw	a3, 0(sp)
	lw	t6, 24(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
beq_cont.12356:
beq_cont.12352:
beq_cont.12350:
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	a2, 4(sp)
	lw	a3, 0(sp)
	lw	t6, 12(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	trace_or_matrix_fast.2717_ret
trace_or_matrix_fast.2717_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
judge_intersection_fast.2721:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	a4, 4(t6)
	fli	fa0, l.10256
	li	a5, 0
	add	t6, a3, a5
	fsw	fa0, 0(t6)
	li	a5, 0
	li	a6, 0
	add	t6, a4, a6
	lw	a4, 0(t6)
	sw	a3, 0(sp)
	mv	a3, a1
	mv	t6, a2
	mv	a2, a0
	mv	a1, a4
	mv	a0, a5
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	fli	fa1, l.10236
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12357
	li	a0, 0
	b	bne_cont.12358
bne_else.12357:
	li	a0, 1
bne_cont.12358:
	li	a1, 0
	bne	a0, a1, beq_else.12359
	li	a0, 0
	b	judge_intersection_fast.2721_ret
beq_else.12359:
	fli	fa1, l.10260
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12360
	li	a0, 0
	b	judge_intersection_fast.2721_ret
bne_else.12360:
	li	a0, 1
	b	judge_intersection_fast.2721_ret
judge_intersection_fast.2721_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
get_nvector_rect.2723:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	li	a3, 0
	add	t6, a2, a3
	lw	a2, 0(t6)
	fli	fa0, l.9871
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	mv	a0, a1
	call	vecfill.2430
	lw	a0, 8(sp)
	addi	a1, a0, -1
	addi	a0, a0, -1
	slli	a0, a0, 2
	lw	a2, 4(sp)
	add	t6, a2, a0
	flw	fa0, 0(t6)
	sw	a1, 12(sp)
	call	sgn.2417
	fneg.s	fa0, fa0
	lw	a0, 12(sp)
	slli	a0, a0, 2
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	get_nvector_rect.2723_ret
get_nvector_rect.2723_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
get_nvector_plane.2725:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 4(t6)
	li	a1, 0
	add	t6, a4, a1
	flw	fa0, 0(t6)
	fneg.s	fa0, fa0
	li	a1, 0
	add	t6, a0, a1
	fsw	fa0, 0(t6)
	li	a1, 4
	add	t6, a4, a1
	flw	fa0, 0(t6)
	fneg.s	fa0, fa0
	li	a1, 4
	add	t6, a0, a1
	fsw	fa0, 0(t6)
	li	a1, 8
	add	t6, a4, a1
	flw	fa0, 0(t6)
	fneg.s	fa0, fa0
	li	a1, 8
	add	t6, a0, a1
	fsw	fa0, 0(t6)
	b	get_nvector_plane.2725_ret
get_nvector_plane.2725_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
get_nvector_second.2727:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 8(t6)
	lw	a1, 4(t6)
	li	a2, 0
	add	t6, a1, a2
	flw	fa0, 0(t6)
	li	a2, 0
	add	t6, a5, a2
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	li	a2, 4
	add	t6, a1, a2
	flw	fa1, 0(t6)
	li	a2, 4
	add	t6, a5, a2
	flw	fa2, 0(t6)
	fsub.s	fa1, fa1, fa2
	li	a2, 8
	add	t6, a1, a2
	flw	fa2, 0(t6)
	li	a1, 8
	add	t6, a5, a1
	flw	fa3, 0(t6)
	fsub.s	fa2, fa2, fa3
	li	a1, 0
	add	t6, a4, a1
	flw	fa3, 0(t6)
	fmul.s	fa3, fa0, fa3
	li	a1, 4
	add	t6, a4, a1
	flw	fa4, 0(t6)
	fmul.s	fa4, fa1, fa4
	li	a1, 8
	add	t6, a4, a1
	flw	fa5, 0(t6)
	fmul.s	fa5, fa2, fa5
	li	a1, 0
	bne	a3, a1, beq_else.12363
	li	a1, 0
	add	t6, a0, a1
	fsw	fa3, 0(t6)
	li	a1, 4
	add	t6, a0, a1
	fsw	fa4, 0(t6)
	li	a1, 8
	add	t6, a0, a1
	fsw	fa5, 0(t6)
	b	beq_cont.12364
beq_else.12363:
	li	a1, 8
	add	t6, s2, a1
	flw	fa6, 0(t6)
	fmul.s	fa6, fa1, fa6
	li	a1, 4
	add	t6, s2, a1
	flw	fa7, 0(t6)
	fmul.s	fa7, fa2, fa7
	fadd.s	fa6, fa6, fa7
	fli	fa7, l.9980
	fdiv.s	fa6, fa6, fa7
	fadd.s	fa3, fa3, fa6
	li	a1, 0
	add	t6, a0, a1
	fsw	fa3, 0(t6)
	li	a1, 8
	add	t6, s2, a1
	flw	fa3, 0(t6)
	fmul.s	fa3, fa0, fa3
	li	a1, 0
	add	t6, s2, a1
	flw	fa6, 0(t6)
	fmul.s	fa2, fa2, fa6
	fadd.s	fa2, fa3, fa2
	fli	fa3, l.9980
	fdiv.s	fa2, fa2, fa3
	fadd.s	fa2, fa4, fa2
	li	a1, 4
	add	t6, a0, a1
	fsw	fa2, 0(t6)
	li	a1, 4
	add	t6, s2, a1
	flw	fa2, 0(t6)
	fmul.s	fa0, fa0, fa2
	li	a1, 0
	add	t6, s2, a1
	flw	fa2, 0(t6)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	fli	fa1, l.9980
	fdiv.s	fa0, fa0, fa1
	fadd.s	fa0, fa5, fa0
	li	a1, 8
	add	t6, a0, a1
	fsw	fa0, 0(t6)
beq_cont.12364:
	mv	a1, a6
	call	vecunit_sgn.2438
	b	get_nvector_second.2727_ret
get_nvector_second.2727_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
get_nvector.2729:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	s5, 12(t6)
	lw	s6, 8(t6)
	lw	t6, 4(t6)
	li	s7, 1
	bne	a1, s7, beq_else.12365
	mv	a0, s4
	mv	t6, s6
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	get_nvector.2729_ret
beq_else.12365:
	li	s4, 2
	bne	a1, s4, beq_else.12366
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	get_nvector.2729_ret
beq_else.12366:
	mv	t6, s5
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	get_nvector.2729_ret
get_nvector.2729_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
utexture.2732:
	addi	sp, sp, -100
	sw	ra, 96(sp)
	sw	fp, 92(sp)
	addi	fp, sp, 100
	lw	a1, 4(t6)
	li	a2, 0
	add	t6, s1, a2
	flw	fa0, 0(t6)
	li	a2, 0
	add	t6, a1, a2
	fsw	fa0, 0(t6)
	li	a2, 4
	add	t6, s1, a2
	flw	fa0, 0(t6)
	li	a2, 4
	add	t6, a1, a2
	fsw	fa0, 0(t6)
	li	a2, 8
	add	t6, s1, a2
	flw	fa0, 0(t6)
	li	a2, 8
	add	t6, a1, a2
	fsw	fa0, 0(t6)
	li	a2, 1
	bne	a0, a2, beq_else.12367
	li	a0, 0
	add	t6, s4, a0
	flw	fa0, 0(t6)
	li	a0, 0
	add	t6, a5, a0
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	fli	fa1, l.10350
	fmul.s	fa1, fa0, fa1
	sw	a1, 0(sp)
	sw	a5, 4(sp)
	sw	s4, 8(sp)
	fsw	fa0, 16(sp)
	fmv.s	fa0, fa1
	call	min_caml_floor
	fli	fa1, l.10351
	fmul.s	fa0, fa0, fa1
	flw	fa1, 16(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l.10341
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12369
	li	a0, 0
	b	bne_cont.12370
bne_else.12369:
	li	a0, 1
bne_cont.12370:
	li	a1, 8
	lw	a2, 8(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	li	a1, 8
	lw	a2, 4(sp)
	add	t6, a2, a1
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	fli	fa1, l.10350
	fmul.s	fa1, fa0, fa1
	sw	a0, 24(sp)
	fsw	fa0, 32(sp)
	fmv.s	fa0, fa1
	call	min_caml_floor
	fli	fa1, l.10351
	fmul.s	fa0, fa0, fa1
	flw	fa1, 32(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l.10341
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12372
	li	a0, 0
	b	bne_cont.12373
bne_else.12372:
	li	a0, 1
bne_cont.12373:
	li	a1, 0
	lw	a2, 24(sp)
	bne	a2, a1, beq_else.12374
	li	a1, 0
	bne	a0, a1, beq_else.12376
	fli	fa0, l.10334
	b	beq_cont.12377
beq_else.12376:
	fli	fa0, l.9871
beq_cont.12377:
	b	beq_cont.12375
beq_else.12374:
	li	a1, 0
	bne	a0, a1, beq_else.12378
	fli	fa0, l.9871
	b	beq_cont.12379
beq_else.12378:
	fli	fa0, l.10334
beq_cont.12379:
beq_cont.12375:
	li	a0, 4
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	utexture.2732_ret
beq_else.12367:
	li	a2, 2
	bne	a0, a2, beq_else.12381
	li	a0, 4
	add	t6, s4, a0
	flw	fa0, 0(t6)
	fli	fa1, l.10345
	fmul.s	fa0, fa0, fa1
	sw	a1, 0(sp)
	call	min_caml_sin
	fmul.s	fa0, fa0, fa0
	fli	fa1, l.10334
	fmul.s	fa1, fa1, fa0
	li	a0, 0
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa1, 0(t6)
	fli	fa1, l.10334
	fli	fa2, l.9872
	fsub.s	fa0, fa2, fa0
	fmul.s	fa0, fa1, fa0
	li	a0, 4
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	utexture.2732_ret
beq_else.12381:
	li	a2, 3
	bne	a0, a2, beq_else.12383
	li	a0, 0
	add	t6, s4, a0
	flw	fa0, 0(t6)
	li	a0, 0
	add	t6, a5, a0
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	li	a0, 8
	add	t6, s4, a0
	flw	fa1, 0(t6)
	li	a0, 8
	add	t6, a5, a0
	flw	fa2, 0(t6)
	fsub.s	fa1, fa1, fa2
	fmul.s	fa0, fa0, fa0
	fmul.s	fa1, fa1, fa1
	fadd.s	fa0, fa0, fa1
	fsqrt.s	fa0, fa0
	fli	fa1, l.10341
	fdiv.s	fa0, fa0, fa1
	sw	a1, 0(sp)
	fsw	fa0, 40(sp)
	call	min_caml_floor
	flw	fa1, 40(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l.10328
	fmul.s	fa0, fa0, fa1
	call	min_caml_cos
	fmul.s	fa0, fa0, fa0
	fli	fa1, l.10334
	fmul.s	fa1, fa0, fa1
	li	a0, 4
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa1, 0(t6)
	fli	fa1, l.9872
	fsub.s	fa0, fa1, fa0
	fli	fa1, l.10334
	fmul.s	fa0, fa0, fa1
	li	a0, 8
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	utexture.2732_ret
beq_else.12383:
	li	a2, 4
	bne	a0, a2, beq_else.12385
	li	a0, 0
	add	t6, s4, a0
	flw	fa0, 0(t6)
	li	a0, 0
	add	t6, a5, a0
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	li	a0, 0
	add	t6, a4, a0
	flw	fa1, 0(t6)
	fsqrt.s	fa1, fa1
	fmul.s	fa0, fa0, fa1
	li	a0, 8
	add	t6, s4, a0
	flw	fa1, 0(t6)
	li	a0, 8
	add	t6, a5, a0
	flw	fa2, 0(t6)
	fsub.s	fa1, fa1, fa2
	li	a0, 8
	add	t6, a4, a0
	flw	fa2, 0(t6)
	fsqrt.s	fa2, fa2
	fmul.s	fa1, fa1, fa2
	fmul.s	fa2, fa0, fa0
	fmul.s	fa3, fa1, fa1
	fadd.s	fa2, fa2, fa3
	fabs.s	fa3, fa0
	fli	fa4, l.10325
	fle.s	t6, fa4, fa3
	beq	t6, zero, bne_else.12386
	li	a0, 0
	b	bne_cont.12387
bne_else.12386:
	li	a0, 1
bne_cont.12387:
	li	a2, 0
	sw	a1, 0(sp)
	fsw	fa2, 48(sp)
	sw	a4, 56(sp)
	sw	a5, 4(sp)
	sw	s4, 8(sp)
	bne	a0, a2, beq_else.12388
	fdiv.s	fa0, fa1, fa0
	fabs.s	fa0, fa0
	call	min_caml_atan
	fli	fa1, l.10327
	fmul.s	fa0, fa0, fa1
	fli	fa1, l.10328
	fdiv.s	fa0, fa0, fa1
	b	beq_cont.12389
beq_else.12388:
	fli	fa0, l.10326
beq_cont.12389:
	fsw	fa0, 64(sp)
	call	min_caml_floor
	flw	fa1, 64(sp)
	fsub.s	fa0, fa1, fa0
	li	a0, 4
	lw	a1, 8(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	li	a0, 4
	lw	a1, 4(sp)
	add	t6, a1, a0
	flw	fa2, 0(t6)
	fsub.s	fa1, fa1, fa2
	li	a0, 4
	lw	a1, 56(sp)
	add	t6, a1, a0
	flw	fa2, 0(t6)
	fsqrt.s	fa2, fa2
	fmul.s	fa1, fa1, fa2
	flw	fa2, 48(sp)
	fabs.s	fa3, fa2
	fli	fa4, l.10325
	fle.s	t6, fa4, fa3
	beq	t6, zero, bne_else.12391
	li	a0, 0
	b	bne_cont.12392
bne_else.12391:
	li	a0, 1
bne_cont.12392:
	li	a1, 0
	fsw	fa0, 72(sp)
	bne	a0, a1, beq_else.12393
	fdiv.s	fa1, fa1, fa2
	fabs.s	fa1, fa1
	fmv.s	fa0, fa1
	call	min_caml_atan
	fli	fa1, l.10327
	fmul.s	fa0, fa0, fa1
	fli	fa1, l.10328
	fdiv.s	fa0, fa0, fa1
	b	beq_cont.12394
beq_else.12393:
	fli	fa0, l.10326
beq_cont.12394:
	fsw	fa0, 80(sp)
	call	min_caml_floor
	flw	fa1, 80(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l.10332
	fli	fa2, l.10333
	flw	fa3, 72(sp)
	fsub.s	fa2, fa2, fa3
	fmul.s	fa2, fa2, fa2
	fsub.s	fa1, fa1, fa2
	fli	fa2, l.10333
	fsub.s	fa0, fa2, fa0
	fmul.s	fa0, fa0, fa0
	fsub.s	fa0, fa1, fa0
	fli	fa1, l.9871
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12395
	li	a0, 0
	b	bne_cont.12396
bne_else.12395:
	li	a0, 1
bne_cont.12396:
	li	a1, 0
	bne	a0, a1, beq_else.12397
	b	beq_cont.12398
beq_else.12397:
	fli	fa0, l.9871
beq_cont.12398:
	fli	fa1, l.10334
	fmul.s	fa0, fa1, fa0
	fli	fa1, l.10335
	fdiv.s	fa0, fa0, fa1
	li	a0, 8
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	b	utexture.2732_ret
beq_else.12385:
	b	utexture.2732_ret
utexture.2732_ret:
	lw	ra, 96(sp)
	lw	fp, 92(sp)
	addi	sp, sp, 100
	jr	ra
add_light.2735:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	lw	a1, 8(t6)
	lw	a0, 4(t6)
	fli	fa3, l.9871
	fle.s	t6, fa0, fa3
	beq	t6, zero, bne_else.12401
	li	a2, 0
	b	bne_cont.12402
bne_else.12401:
	li	a2, 1
bne_cont.12402:
	li	a3, 0
	sw	a0, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa1, 16(sp)
	bne	a2, a3, beq_else.12404
	b	beq_cont.12405
beq_else.12404:
	call	vecaccum.2449
beq_cont.12405:
	fli	fa0, l.9871
	flw	fa1, 16(sp)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12406
	li	a0, 0
	b	bne_cont.12407
bne_else.12406:
	li	a0, 1
bne_cont.12407:
	li	a1, 0
	bne	a0, a1, beq_else.12408
	b	add_light.2735_ret
beq_else.12408:
	fmul.s	fa0, fa1, fa1
	fmul.s	fa0, fa0, fa0
	flw	fa1, 8(sp)
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 0(sp)
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
	b	add_light.2735_ret
add_light.2735_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
trace_reflections.2739:
	addi	sp, sp, -92
	sw	ra, 88(sp)
	sw	fp, 84(sp)
	addi	fp, sp, 92
	lw	a2, 32(t6)
	lw	a3, 28(t6)
	lw	a4, 24(t6)
	lw	a5, 20(t6)
	lw	a6, 16(t6)
	lw	a7, 12(t6)
	lw	s1, 8(t6)
	lw	s2, 4(t6)
	li	s3, 0
	bgt	s3, a0, ble_else.12411
	slli	s3, a0, 2
	add	t6, a3, s3
	lw	a3, 0(t6)
	lw	s3, 8(a3)
	lw	s4, 4(a3)
	sw	t6, 0(sp)
	sw	a0, 4(sp)
	fsw	fa1, 8(sp)
	sw	s2, 16(sp)
	sw	a1, 20(sp)
	fsw	fa0, 24(sp)
	sw	s4, 32(sp)
	sw	a5, 36(sp)
	sw	a2, 40(sp)
	sw	a4, 44(sp)
	sw	a3, 48(sp)
	sw	a7, 52(sp)
	sw	s1, 56(sp)
	mv	a1, s3
	mv	a0, s4
	mv	t6, a6
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12412
	b	beq_cont.12413
beq_else.12412:
	li	a0, 0
	lw	a1, 56(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	slli	a0, a0, 2
	li	a1, 0
	lw	a2, 52(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	add	a0, a0, a1
	lw	a1, 48(sp)
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.12414
	li	a0, 0
	li	a2, 0
	lw	a3, 44(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	lw	t6, 40(sp)
	mv	a1, a2
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12416
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	call	veciprod.2441
	lw	a0, 48(sp)
	flw	fa1, 12(a0)
	flw	fa2, 24(sp)
	fmul.s	fa3, fa1, fa2
	fmul.s	fa0, fa3, fa0
	lw	a0, 20(sp)
	lw	a1, 32(sp)
	fsw	fa0, 64(sp)
	fsw	fa1, 72(sp)
	call	veciprod.2441
	flw	fa1, 72(sp)
	fmul.s	fa1, fa1, fa0
	flw	fa0, 64(sp)
	flw	fa2, 8(sp)
	lw	t6, 16(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	beq_cont.12417
beq_else.12416:
beq_cont.12417:
	b	beq_cont.12415
beq_else.12414:
beq_cont.12415:
beq_cont.12413:
	lw	a0, 4(sp)
	addi	a0, a0, -1
	flw	fa0, 24(sp)
	flw	fa1, 8(sp)
	lw	a1, 20(sp)
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	trace_reflections.2739_ret
ble_else.12411:
	b	trace_reflections.2739_ret
trace_reflections.2739_ret:
	lw	ra, 88(sp)
	lw	fp, 84(sp)
	addi	sp, sp, 92
	jr	ra
trace_ray.2744:
	addi	sp, sp, -196
	sw	ra, 192(sp)
	sw	fp, 188(sp)
	addi	fp, sp, 196
	lw	s3, 80(t6)
	lw	s4, 76(t6)
	lw	s5, 72(t6)
	lw	s6, 68(t6)
	lw	s7, 64(t6)
	lw	s8, 60(t6)
	lw	s9, 56(t6)
	lw	s10, 52(t6)
	lw	s11, 48(t6)
	lw	t0, 44(t6)
	lw	t1, 40(t6)
	lw	t2, 36(t6)
	lw	t3, 32(t6)
	lw	t4, 28(t6)
	lw	t5, 24(t6)
	sw	s1, 0(sp)
	lw	s1, 20(t6)
	sw	a7, 4(sp)
	lw	a7, 16(t6)
	sw	a2, 8(sp)
	lw	a2, 12(t6)
	sw	s5, 12(sp)
	lw	s5, 8(t6)
	sw	t6, 16(sp)
	lw	t6, 4(t6)
	sw	s4, 20(sp)
	li	s4, 4
	bgt	a0, s4, ble_else.12420
	fsw	fa1, 24(sp)
	sw	t2, 32(sp)
	sw	s9, 36(sp)
	sw	t6, 40(sp)
	sw	s8, 44(sp)
	sw	s11, 48(sp)
	sw	t1, 52(sp)
	sw	s2, 56(sp)
	sw	s6, 60(sp)
	sw	a6, 64(sp)
	sw	a5, 68(sp)
	sw	a3, 72(sp)
	sw	t5, 76(sp)
	sw	s3, 80(sp)
	sw	s1, 84(sp)
	sw	s7, 88(sp)
	sw	a2, 92(sp)
	sw	t0, 96(sp)
	sw	a7, 100(sp)
	sw	s10, 104(sp)
	sw	s5, 108(sp)
	fsw	fa0, 112(sp)
	sw	t3, 120(sp)
	sw	a1, 124(sp)
	sw	a4, 128(sp)
	sw	a0, 132(sp)
	mv	a0, a1
	mv	t6, t4
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12421
	li	a0, -1
	lw	a1, 132(sp)
	slli	a2, a1, 2
	lw	a3, 128(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	li	a0, 0
	bne	a1, a0, beq_else.12422
	b	trace_ray.2744_ret
beq_else.12422:
	lw	a0, 124(sp)
	lw	a1, 120(sp)
	call	veciprod.2441
	fneg.s	fa0, fa0
	fli	fa1, l.9871
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12424
	li	a0, 0
	b	bne_cont.12425
bne_else.12424:
	li	a0, 1
bne_cont.12425:
	li	a1, 0
	bne	a0, a1, beq_else.12426
	b	trace_ray.2744_ret
beq_else.12426:
	fmul.s	fa1, fa0, fa0
	fmul.s	fa0, fa1, fa0
	flw	fa1, 112(sp)
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 108(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	li	a0, 0
	lw	a1, 104(sp)
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
	b	trace_ray.2744_ret
beq_else.12421:
	li	a0, 0
	lw	a1, 100(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	slli	a1, a0, 2
	lw	a2, 96(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 8(a1)
	lw	a3, 28(a1)
	li	a4, 0
	add	t6, a3, a4
	flw	fa0, 0(t6)
	flw	fa1, 112(sp)
	fmul.s	fa0, fa0, fa1
	lw	a3, 124(sp)
	lw	t6, 92(sp)
	sw	a2, 136(sp)
	fsw	fa0, 144(sp)
	sw	a0, 152(sp)
	sw	a1, 156(sp)
	mv	a0, a1
	mv	a1, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 88(sp)
	lw	a1, 84(sp)
	call	veccpy.2435
	lw	a0, 156(sp)
	lw	a1, 84(sp)
	lw	t6, 80(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 152(sp)
	slli	a0, a0, 2
	li	a1, 0
	lw	a2, 76(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	add	a0, a0, a1
	lw	a1, 132(sp)
	slli	a2, a1, 2
	lw	a3, 128(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	slli	a0, a1, 2
	lw	a2, 72(sp)
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a4, 84(sp)
	mv	a1, a4
	call	veccpy.2435
	lw	a0, 156(sp)
	lw	a1, 28(a0)
	li	a2, 0
	add	t6, a1, a2
	flw	fa0, 0(t6)
	fli	fa1, l.10333
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12430
	li	a1, 0
	b	bne_cont.12431
bne_else.12430:
	li	a1, 1
bne_cont.12431:
	li	a2, 0
	bne	a1, a2, beq_else.12432
	li	a1, 1
	lw	a2, 132(sp)
	slli	a3, a2, 2
	lw	a4, 68(sp)
	add	t6, a4, a3
	sw	a1, 0(t6)
	slli	a1, a2, 2
	lw	a3, 64(sp)
	add	t6, a3, a1
	lw	a1, 0(t6)
	lw	a5, 60(sp)
	mv	a0, a1
	mv	a1, a5
	call	veccpy.2435
	lw	a0, 132(sp)
	slli	a1, a0, 2
	lw	a2, 64(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa0, l.10376
	flw	fa1, 144(sp)
	fmul.s	fa0, fa0, fa1
	mv	a0, a1
	call	vecscale.2456
	lw	a0, 132(sp)
	slli	a1, a0, 2
	lw	a2, 56(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a3, 52(sp)
	mv	a0, a1
	mv	a1, a3
	call	veccpy.2435
	b	beq_cont.12433
beq_else.12432:
	li	a1, 0
	lw	a2, 132(sp)
	slli	a3, a2, 2
	lw	a4, 68(sp)
	add	t6, a4, a3
	sw	a1, 0(t6)
beq_cont.12433:
	fli	fa0, l.10378
	lw	a0, 124(sp)
	lw	a1, 52(sp)
	fsw	fa0, 160(sp)
	call	veciprod.2441
	flw	fa1, 160(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 124(sp)
	lw	a1, 52(sp)
	call	vecaccum.2449
	lw	a0, 156(sp)
	lw	a1, 28(a0)
	li	a2, 4
	add	t6, a1, a2
	flw	fa0, 0(t6)
	flw	fa1, 112(sp)
	fmul.s	fa0, fa1, fa0
	li	a1, 0
	li	a2, 0
	lw	a3, 48(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	lw	t6, 44(sp)
	fsw	fa0, 168(sp)
	mv	a0, a1
	mv	a1, a2
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12434
	lw	a0, 52(sp)
	lw	a1, 120(sp)
	call	veciprod.2441
	fneg.s	fa0, fa0
	flw	fa1, 144(sp)
	fmul.s	fa0, fa0, fa1
	lw	a0, 124(sp)
	lw	a1, 120(sp)
	fsw	fa0, 176(sp)
	call	veciprod.2441
	fneg.s	fa1, fa0
	flw	fa0, 176(sp)
	flw	fa2, 168(sp)
	lw	t6, 40(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	beq_cont.12435
beq_else.12434:
beq_cont.12435:
	lw	a0, 84(sp)
	lw	t6, 36(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a0, 0
	lw	a1, 32(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	addi	a0, a0, -1
	flw	fa0, 144(sp)
	flw	fa1, 168(sp)
	lw	a1, 124(sp)
	lw	t6, 20(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	fli	fa0, l.10382
	flw	fa1, 112(sp)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12436
	li	a0, 0
	b	bne_cont.12437
bne_else.12436:
	li	a0, 1
bne_cont.12437:
	li	a1, 0
	bne	a0, a1, beq_else.12438
	b	trace_ray.2744_ret
beq_else.12438:
	li	a0, 4
	lw	a1, 132(sp)
	bgt	a0, a1, ble_else.12440
	b	ble_cont.12441
ble_else.12440:
	addi	a0, a1, 1
	li	a2, -1
	slli	a0, a0, 2
	lw	a4, 128(sp)
	add	t6, a4, a0
	sw	a2, 0(t6)
ble_cont.12441:
	li	a0, 2
	lw	a2, 136(sp)
	bne	a2, a0, beq_else.12442
	fli	fa0, l.9872
	lw	a0, 156(sp)
	lw	a0, 28(a0)
	li	a2, 0
	add	t6, a0, a2
	flw	fa2, 0(t6)
	fsub.s	fa0, fa0, fa2
	fmul.s	fa0, fa1, fa0
	addi	a0, a1, 1
	li	a1, 0
	lw	a2, 12(sp)
	add	t6, a2, a1
	flw	fa1, 0(t6)
	flw	fa2, 24(sp)
	fadd.s	fa1, fa2, fa1
	lw	a1, 124(sp)
	lw	a2, 8(sp)
	lw	a3, 72(sp)
	lw	a4, 128(sp)
	lw	a5, 68(sp)
	lw	a6, 64(sp)
	lw	a7, 4(sp)
	lw	s1, 0(sp)
	lw	s2, 56(sp)
	lw	t6, 16(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	beq_cont.12443
beq_else.12442:
beq_cont.12443:
	b	trace_ray.2744_ret
ble_else.12420:
	b	trace_ray.2744_ret
trace_ray.2744_ret:
	lw	ra, 192(sp)
	lw	fp, 188(sp)
	addi	sp, sp, 196
	jr	ra
trace_diffuse_ray.2750:
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
	sw	a3, 0(sp)
	sw	s6, 4(sp)
	fsw	fa0, 8(sp)
	sw	s1, 16(sp)
	sw	a7, 20(sp)
	sw	a4, 24(sp)
	sw	a5, 28(sp)
	sw	s3, 32(sp)
	sw	a2, 36(sp)
	sw	a0, 40(sp)
	sw	s5, 44(sp)
	sw	a6, 48(sp)
	sw	s4, 52(sp)
	mv	t6, s2
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12446
	b	trace_diffuse_ray.2750_ret
beq_else.12446:
	li	a0, 0
	lw	a1, 52(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	slli	a0, a0, 2
	lw	a1, 48(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 40(sp)
	lw	t6, 44(sp)
	sw	a0, 56(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 56(sp)
	lw	a1, 32(sp)
	lw	t6, 36(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a0, 0
	li	a1, 0
	lw	a2, 28(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	t6, 24(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12448
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	call	veciprod.2441
	fneg.s	fa0, fa0
	fli	fa1, l.9871
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else.12449
	li	a0, 0
	b	bne_cont.12450
bne_else.12449:
	li	a0, 1
bne_cont.12450:
	li	a1, 0
	bne	a0, a1, beq_else.12451
	fli	fa0, l.9871
	b	beq_cont.12452
beq_else.12451:
beq_cont.12452:
	flw	fa1, 8(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 56(sp)
	lw	a0, 28(a0)
	li	a1, 0
	add	t6, a0, a1
	flw	fa1, 0(t6)
	fmul.s	fa0, fa0, fa1
	lw	a0, 4(sp)
	lw	a1, 0(sp)
	call	vecaccum.2449
	b	trace_diffuse_ray.2750_ret
beq_else.12448:
	b	trace_diffuse_ray.2750_ret
trace_diffuse_ray.2750_ret:
	lw	ra, 68(sp)
	lw	fp, 64(sp)
	addi	sp, sp, 72
	jr	ra
iter_trace_diffuse_rays.2753:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	lw	a4, 4(t6)
	li	a5, 0
	bgt	a5, a3, ble_else.12454
	slli	a5, a3, 2
	add	t6, a0, a5
	lw	a5, 0(t6)
	lw	a5, 0(a5)
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	t6, 8(sp)
	sw	a4, 12(sp)
	sw	a0, 16(sp)
	sw	a3, 20(sp)
	mv	a0, a5
	call	veciprod.2441
	fli	fa1, l.9871
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12455
	li	a0, 0
	b	bne_cont.12456
bne_else.12455:
	li	a0, 1
bne_cont.12456:
	li	a1, 0
	bne	a0, a1, beq_else.12457
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l.10402
	fdiv.s	fa0, fa0, fa1
	lw	t6, 12(sp)
	mv	a0, a1
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	beq_cont.12458
beq_else.12457:
	lw	a0, 20(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l.10400
	fdiv.s	fa0, fa0, fa1
	lw	t6, 12(sp)
	mv	a0, a1
	lw	ra, 0(t6)
	jalr	ra, ra, 0
beq_cont.12458:
	lw	a0, 20(sp)
	addi	a3, a0, -2
	lw	a0, 16(sp)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	t6, 8(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	iter_trace_diffuse_rays.2753_ret
ble_else.12454:
	b	iter_trace_diffuse_rays.2753_ret
iter_trace_diffuse_rays.2753_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
trace_diffuse_ray_80percent.2762:
	addi	sp, sp, -56
	sw	ra, 52(sp)
	sw	fp, 48(sp)
	addi	fp, sp, 56
	lw	a3, 12(t6)
	lw	a4, 8(t6)
	lw	a5, 4(t6)
	li	a6, 0
	sw	a1, 0(sp)
	sw	a4, 4(sp)
	sw	a2, 8(sp)
	sw	a3, 12(sp)
	sw	a5, 16(sp)
	sw	a0, 20(sp)
	bne	a0, a6, beq_else.12460
	b	beq_cont.12461
beq_else.12460:
	li	a6, 0
	add	t6, a5, a6
	lw	a6, 0(t6)
	sw	a6, 24(sp)
	mv	a0, a2
	mv	t6, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 24(sp)
	lw	a1, 0(sp)
	lw	a2, 8(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
beq_cont.12461:
	li	a0, 1
	lw	a1, 20(sp)
	bne	a1, a0, beq_else.12462
	b	beq_cont.12463
beq_else.12462:
	li	a0, 4
	lw	a2, 16(sp)
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a3, 8(sp)
	lw	t6, 12(sp)
	sw	a0, 28(sp)
	mv	a0, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 28(sp)
	lw	a1, 0(sp)
	lw	a2, 8(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
beq_cont.12463:
	li	a0, 2
	lw	a1, 20(sp)
	bne	a1, a0, beq_else.12464
	b	beq_cont.12465
beq_else.12464:
	li	a0, 8
	lw	a2, 16(sp)
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a3, 8(sp)
	lw	t6, 12(sp)
	sw	a0, 32(sp)
	mv	a0, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 32(sp)
	lw	a1, 0(sp)
	lw	a2, 8(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
beq_cont.12465:
	li	a0, 3
	lw	a1, 20(sp)
	bne	a1, a0, beq_else.12466
	b	beq_cont.12467
beq_else.12466:
	li	a0, 12
	lw	a2, 16(sp)
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a3, 8(sp)
	lw	t6, 12(sp)
	sw	a0, 36(sp)
	mv	a0, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 36(sp)
	lw	a1, 0(sp)
	lw	a2, 8(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
beq_cont.12467:
	li	a0, 4
	lw	a1, 20(sp)
	bne	a1, a0, beq_else.12468
	b	trace_diffuse_ray_80percent.2762_ret
beq_else.12468:
	li	a0, 16
	lw	a1, 16(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 8(sp)
	lw	t6, 12(sp)
	sw	a0, 40(sp)
	mv	a0, a1
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 40(sp)
	lw	a1, 0(sp)
	lw	a2, 8(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	trace_diffuse_ray_80percent.2762_ret
trace_diffuse_ray_80percent.2762_ret:
	lw	ra, 52(sp)
	lw	fp, 48(sp)
	addi	sp, sp, 56
	jr	ra
calc_diffuse_using_1point.2766:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a0, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	slli	s2, s1, 2
	add	t6, a5, s2
	lw	a5, 0(t6)
	sw	a3, 0(sp)
	sw	a2, 4(sp)
	sw	a4, 8(sp)
	sw	a0, 12(sp)
	sw	a1, 16(sp)
	sw	a7, 20(sp)
	sw	s1, 24(sp)
	sw	a6, 28(sp)
	mv	a1, a5
	mv	a0, a3
	call	veccpy.2435
	li	a0, 0
	lw	a1, 28(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 24(sp)
	slli	a2, a1, 2
	lw	a3, 20(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	slli	a3, a1, 2
	lw	a4, 16(sp)
	add	t6, a4, a3
	lw	a3, 0(t6)
	lw	t6, 12(sp)
	mv	a1, a2
	mv	a2, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 24(sp)
	slli	a0, a0, 2
	lw	a1, 8(sp)
	add	t6, a1, a0
	lw	a1, 0(t6)
	lw	a0, 4(sp)
	lw	a2, 0(sp)
	call	vecaccumv.2459
	b	calc_diffuse_using_1point.2766_ret
calc_diffuse_using_1point.2766_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
calc_diffuse_using_5points.2769:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	lw	a5, 8(t6)
	lw	a6, 4(t6)
	slli	a7, a0, 2
	add	t6, a1, a7
	lw	a1, 0(t6)
	lw	a1, 20(a1)
	addi	a7, a0, -1
	slli	a7, a7, 2
	add	t6, a2, a7
	lw	a7, 0(t6)
	lw	a7, 20(a7)
	slli	s1, a0, 2
	add	t6, a2, s1
	lw	s1, 0(t6)
	lw	s1, 20(s1)
	addi	s2, a0, 1
	slli	s2, s2, 2
	add	t6, a2, s2
	lw	s2, 0(t6)
	lw	s2, 20(s2)
	slli	s3, a0, 2
	add	t6, a3, s3
	lw	a3, 0(t6)
	lw	a3, 20(a3)
	slli	s3, a4, 2
	add	t6, a1, s3
	lw	a1, 0(t6)
	sw	a5, 0(sp)
	sw	a2, 4(sp)
	sw	a0, 8(sp)
	sw	a3, 12(sp)
	sw	s2, 16(sp)
	sw	s1, 20(sp)
	sw	a6, 24(sp)
	sw	a7, 28(sp)
	sw	a4, 32(sp)
	mv	a0, a6
	call	veccpy.2435
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 28(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd.2453
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 20(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd.2453
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd.2453
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 12(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd.2453
	lw	a0, 8(sp)
	slli	a0, a0, 2
	lw	a1, 4(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 16(a0)
	lw	a1, 32(sp)
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a0, 0(sp)
	lw	a2, 24(sp)
	call	vecaccumv.2459
	b	calc_diffuse_using_5points.2769_ret
calc_diffuse_using_5points.2769_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
do_without_neighbors.2775:
	addi	sp, sp, -52
	sw	ra, 48(sp)
	sw	fp, 44(sp)
	addi	fp, sp, 52
	lw	s2, 4(t6)
	li	s3, 4
	bgt	s1, s3, ble_else.12470
	li	s3, 0
	slli	s4, s1, 2
	add	t6, a2, s4
	lw	s4, 0(t6)
	bgt	s3, s4, ble_else.12471
	slli	s3, s1, 2
	add	t6, a3, s3
	lw	s3, 0(t6)
	li	s4, 0
	sw	a7, 0(sp)
	sw	a6, 4(sp)
	sw	a5, 8(sp)
	sw	a4, 12(sp)
	sw	a3, 16(sp)
	sw	a2, 20(sp)
	sw	a1, 24(sp)
	sw	a0, 28(sp)
	sw	t6, 32(sp)
	sw	s1, 36(sp)
	bne	s3, s4, beq_else.12472
	b	beq_cont.12473
beq_else.12472:
	mv	t6, s2
	lw	ra, 0(t6)
	jalr	ra, ra, 0
beq_cont.12473:
	lw	a0, 36(sp)
	addi	s1, a0, 1
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	lw	a2, 20(sp)
	lw	a3, 16(sp)
	lw	a4, 12(sp)
	lw	a5, 8(sp)
	lw	a6, 4(sp)
	lw	a7, 0(sp)
	lw	t6, 32(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	do_without_neighbors.2775_ret
ble_else.12471:
	b	do_without_neighbors.2775_ret
ble_else.12470:
	b	do_without_neighbors.2775_ret
do_without_neighbors.2775_ret:
	lw	ra, 48(sp)
	lw	fp, 44(sp)
	addi	sp, sp, 52
	jr	ra
neighbors_exist.2778:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a2, 4(t6)
	li	a3, 4
	add	t6, a2, a3
	lw	a3, 0(t6)
	addi	a4, a1, 1
	bgt	a3, a4, ble_else.12476
	li	a0, 0
	b	neighbors_exist.2778_ret
ble_else.12476:
	li	a3, 0
	bgt	a1, a3, ble_else.12477
	li	a0, 0
	b	neighbors_exist.2778_ret
ble_else.12477:
	li	a1, 0
	add	t6, a2, a1
	lw	a1, 0(t6)
	addi	a2, a0, 1
	bgt	a1, a2, ble_else.12478
	li	a0, 0
	b	neighbors_exist.2778_ret
ble_else.12478:
	li	a1, 0
	bgt	a0, a1, ble_else.12479
	li	a0, 0
	b	neighbors_exist.2778_ret
ble_else.12479:
	li	a0, 1
	b	neighbors_exist.2778_ret
neighbors_exist.2778_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
neighbors_are_available.2785:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	slli	a5, a0, 2
	add	t6, a2, a5
	lw	a5, 0(t6)
	lw	a5, 8(a5)
	slli	a6, a4, 2
	add	t6, a5, a6
	lw	a5, 0(t6)
	slli	a6, a0, 2
	add	t6, a1, a6
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a6, a4, 2
	add	t6, a1, a6
	lw	a1, 0(t6)
	bne	a1, a5, beq_else.12480
	slli	a1, a0, 2
	add	t6, a3, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, beq_else.12481
	addi	a1, a0, -1
	slli	a1, a1, 2
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, beq_else.12482
	addi	a0, a0, 1
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a0, 8(a0)
	slli	a1, a4, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	bne	a0, a5, beq_else.12483
	li	a0, 1
	b	neighbors_are_available.2785_ret
beq_else.12483:
	li	a0, 0
	b	neighbors_are_available.2785_ret
beq_else.12482:
	li	a0, 0
	b	neighbors_are_available.2785_ret
beq_else.12481:
	li	a0, 0
	b	neighbors_are_available.2785_ret
beq_else.12480:
	li	a0, 0
	b	neighbors_are_available.2785_ret
neighbors_are_available.2785_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
try_exploit_neighbors.2791:
	addi	sp, sp, -52
	sw	ra, 48(sp)
	sw	fp, 44(sp)
	addi	fp, sp, 52
	lw	a6, 8(t6)
	lw	a7, 4(t6)
	slli	s1, a0, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	li	s2, 4
	bgt	a5, s2, ble_else.12484
	li	s2, 0
	lw	s3, 8(s1)
	slli	s4, a5, 2
	add	t6, s3, s4
	lw	s3, 0(t6)
	bgt	s2, s3, ble_else.12485
	sw	a1, 0(sp)
	sw	t6, 4(sp)
	sw	a4, 8(sp)
	sw	a2, 12(sp)
	sw	a7, 16(sp)
	sw	s1, 20(sp)
	sw	a5, 24(sp)
	sw	a6, 28(sp)
	sw	a3, 32(sp)
	sw	a0, 36(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	call	neighbors_are_available.2785
	li	a1, 0
	bne	a0, a1, beq_else.12486
	lw	a0, 36(sp)
	slli	a0, a0, 2
	lw	a1, 32(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 24(sp)
	lw	t6, 28(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	try_exploit_neighbors.2791_ret
beq_else.12486:
	lw	a0, 20(sp)
	lw	a0, 12(a0)
	lw	a4, 24(sp)
	slli	a1, a4, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	li	a1, 0
	bne	a0, a1, beq_else.12487
	b	beq_cont.12488
beq_else.12487:
	lw	a0, 36(sp)
	lw	a1, 12(sp)
	lw	a2, 32(sp)
	lw	a3, 8(sp)
	lw	t6, 16(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
beq_cont.12488:
	lw	a0, 24(sp)
	addi	a5, a0, 1
	lw	a0, 36(sp)
	lw	a1, 0(sp)
	lw	a2, 12(sp)
	lw	a3, 32(sp)
	lw	a4, 8(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	try_exploit_neighbors.2791_ret
ble_else.12485:
	b	try_exploit_neighbors.2791_ret
ble_else.12484:
	b	try_exploit_neighbors.2791_ret
try_exploit_neighbors.2791_ret:
	lw	ra, 48(sp)
	lw	fp, 44(sp)
	addi	sp, sp, 52
	jr	ra
write_ppm_header.2798:
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
	b	write_ppm_header.2798_ret
write_ppm_header.2798_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
write_rgb_element.2800:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	call	min_caml_int_of_float
	li	a1, 255
	bgt	a0, a1, ble_else.12491
	li	a1, 0
	bgt	a1, a0, ble_else.12493
	b	ble_cont.12494
ble_else.12493:
	li	a0, 0
ble_cont.12494:
	b	ble_cont.12492
ble_else.12491:
	li	a0, 255
ble_cont.12492:
	call	min_caml_print_int
	b	write_rgb_element.2800_ret
write_rgb_element.2800_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
write_rgb.2802:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	lw	a0, 4(t6)
	li	a1, 0
	add	t6, a0, a1
	flw	fa0, 0(t6)
	sw	a0, 0(sp)
	call	write_rgb_element.2800
	li	a0, 32
	call	min_caml_print_char
	li	a0, 4
	lw	a1, 0(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	call	write_rgb_element.2800
	li	a0, 32
	call	min_caml_print_char
	li	a0, 8
	lw	a1, 0(sp)
	add	t6, a1, a0
	flw	fa0, 0(t6)
	call	write_rgb_element.2800
	li	a0, 10
	call	min_caml_print_char
	b	write_rgb.2802_ret
write_rgb.2802_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
pretrace_diffuse_rays.2804:
	addi	sp, sp, -84
	sw	ra, 80(sp)
	sw	fp, 76(sp)
	addi	fp, sp, 84
	lw	s2, 16(t6)
	lw	s3, 12(t6)
	lw	s4, 8(t6)
	lw	s5, 4(t6)
	li	s6, 4
	bgt	s1, s6, ble_else.12495
	slli	s6, s1, 2
	add	t6, a2, s6
	lw	s6, 0(t6)
	li	s7, 0
	bgt	s7, s6, ble_else.12496
	slli	s6, s1, 2
	add	t6, a3, s6
	lw	s6, 0(t6)
	li	s7, 0
	sw	a7, 0(sp)
	sw	a6, 4(sp)
	sw	a5, 8(sp)
	sw	a4, 12(sp)
	sw	a3, 16(sp)
	sw	a2, 20(sp)
	sw	a1, 24(sp)
	sw	a0, 28(sp)
	sw	t6, 32(sp)
	sw	s1, 36(sp)
	bne	s6, s7, beq_else.12497
	b	beq_cont.12498
beq_else.12497:
	li	s6, 0
	add	t6, a6, s6
	lw	s6, 0(t6)
	fli	fa0, l.9871
	sw	s5, 40(sp)
	sw	s3, 44(sp)
	sw	s2, 48(sp)
	sw	s4, 52(sp)
	sw	s6, 56(sp)
	mv	a0, s5
	call	vecfill.2430
	lw	a0, 56(sp)
	slli	a0, a0, 2
	lw	a1, 52(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 36(sp)
	slli	a2, a1, 2
	lw	a3, 0(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	slli	a4, a1, 2
	lw	a5, 24(sp)
	add	t6, a5, a4
	lw	a4, 0(t6)
	lw	t6, 48(sp)
	sw	a4, 60(sp)
	sw	a2, 64(sp)
	sw	a0, 68(sp)
	mv	a0, a4
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 68(sp)
	lw	a1, 64(sp)
	lw	a2, 60(sp)
	lw	t6, 44(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 36(sp)
	slli	a1, a0, 2
	lw	a2, 8(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a3, 40(sp)
	mv	a0, a1
	mv	a1, a3
	call	veccpy.2435
beq_cont.12498:
	lw	a0, 36(sp)
	addi	s1, a0, 1
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	lw	a2, 20(sp)
	lw	a3, 16(sp)
	lw	a4, 12(sp)
	lw	a5, 8(sp)
	lw	a6, 4(sp)
	lw	a7, 0(sp)
	lw	t6, 32(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	pretrace_diffuse_rays.2804_ret
ble_else.12496:
	b	pretrace_diffuse_rays.2804_ret
ble_else.12495:
	b	pretrace_diffuse_rays.2804_ret
pretrace_diffuse_rays.2804_ret:
	lw	ra, 80(sp)
	lw	fp, 76(sp)
	addi	sp, sp, 84
	jr	ra
pretrace_pixels.2807:
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
	bgt	s5, a1, ble_else.12501
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
	call	vecunit_sgn.2438
	fli	fa0, l.9871
	lw	a0, 32(sp)
	call	vecfill.2430
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	call	veccpy.2435
	li	a0, 0
	fli	fa0, l.9872
	lw	a1, 20(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	fli	fa1, l.9871
	lw	a4, 56(sp)
	lw	t6, 12(sp)
	mv	a1, a4
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	lw	a3, 32(sp)
	mv	a0, a1
	mv	a1, a3
	call	veccpy.2435
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 24(a1)
	li	a3, 0
	lw	a4, 8(sp)
	add	t6, a1, a3
	sw	a4, 0(t6)
	slli	a1, a0, 2
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, 0
	lw	t6, 4(sp)
	mv	a0, a1
	mv	a1, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 20(sp)
	addi	a0, a0, -1
	li	a1, 1
	lw	a2, 8(sp)
	sw	a0, 88(sp)
	mv	a0, a2
	call	add_mod5.2422
	mv	a2, a0
	flw	fa0, 64(sp)
	flw	fa1, 48(sp)
	flw	fa2, 40(sp)
	lw	a0, 16(sp)
	lw	a1, 88(sp)
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	pretrace_pixels.2807_ret
ble_else.12501:
	b	pretrace_pixels.2807_ret
pretrace_pixels.2807_ret:
	lw	ra, 100(sp)
	lw	fp, 96(sp)
	addi	sp, sp, 104
	jr	ra
pretrace_line.2814:
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
	jalr	ra, ra, 0
	b	pretrace_line.2814_ret
pretrace_line.2814_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
scan_pixel.2818:
	addi	sp, sp, -52
	sw	ra, 48(sp)
	sw	fp, 44(sp)
	addi	fp, sp, 52
	lw	a5, 24(t6)
	lw	a6, 20(t6)
	lw	a7, 16(t6)
	lw	s1, 12(t6)
	lw	s2, 8(t6)
	lw	s3, 4(t6)
	li	s4, 0
	add	t6, s2, s4
	lw	s2, 0(t6)
	bgt	s2, a0, ble_else.12506
	b	scan_pixel.2818_ret
ble_else.12506:
	slli	s2, a0, 2
	add	t6, a3, s2
	lw	s2, 0(t6)
	lw	s2, 0(s2)
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
	mv	a1, s2
	mv	a0, a7
	call	veccpy.2435
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	lw	t6, 36(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	bne	a0, a1, beq_else.12508
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
	jalr	ra, ra, 0
	b	beq_cont.12509
beq_else.12508:
	li	a5, 0
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 8(sp)
	lw	a3, 20(sp)
	lw	a4, 24(sp)
	lw	t6, 12(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
beq_cont.12509:
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 32(sp)
	addi	a0, a0, 1
	lw	a1, 28(sp)
	lw	a2, 8(sp)
	lw	a3, 20(sp)
	lw	a4, 24(sp)
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	scan_pixel.2818_ret
scan_pixel.2818_ret:
	lw	ra, 48(sp)
	lw	fp, 44(sp)
	addi	sp, sp, 52
	jr	ra
scan_line.2824:
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
	bgt	s1, a0, ble_else.12510
	b	scan_line.2824_ret
ble_else.12510:
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
	bgt	a7, a0, ble_else.12512
	b	ble_cont.12513
ble_else.12512:
	addi	a7, a0, 1
	mv	a2, a4
	mv	a1, a7
	mv	a0, a3
	mv	t6, a6
	lw	ra, 0(t6)
	jalr	ra, ra, 0
ble_cont.12513:
	li	a0, 0
	lw	a1, 20(sp)
	lw	a2, 16(sp)
	lw	a3, 12(sp)
	lw	a4, 8(sp)
	lw	t6, 24(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 20(sp)
	addi	a0, a0, 1
	li	a1, 2
	lw	a2, 4(sp)
	sw	a0, 28(sp)
	mv	a0, a2
	call	add_mod5.2422
	mv	a4, a0
	lw	a0, 28(sp)
	lw	a1, 12(sp)
	lw	a2, 8(sp)
	lw	a3, 16(sp)
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	scan_line.2824_ret
scan_line.2824_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
create_float5x3array.2830:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	li	a0, 3
	fli	fa0, l.9871
	call	min_caml_create_array
	mv	a1, a0
	li	a0, 5
	call	min_caml_create_array
	li	a1, 3
	fli	fa0, l.9871
	sw	a0, 0(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 4
	lw	a2, 0(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	li	a0, 3
	fli	fa0, l.9871
	call	min_caml_create_array
	li	a1, 8
	lw	a2, 0(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	li	a0, 3
	fli	fa0, l.9871
	call	min_caml_create_array
	li	a1, 12
	lw	a2, 0(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	li	a0, 3
	fli	fa0, l.9871
	call	min_caml_create_array
	li	a1, 16
	lw	a2, 0(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	mv	a0, a2
	b	create_float5x3array.2830_ret
create_float5x3array.2830_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
create_pixel.2832:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	sw	fp, 32(sp)
	addi	fp, sp, 40
	li	a0, 3
	fli	fa0, l.9871
	call	min_caml_create_array
	sw	a0, 0(sp)
	call	create_float5x3array.2830
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
	call	create_float5x3array.2830
	sw	a0, 16(sp)
	call	create_float5x3array.2830
	li	a1, 1
	li	a2, 0
	sw	a0, 20(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	sw	a0, 24(sp)
	call	create_float5x3array.2830
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
	b	create_pixel.2832_ret
create_pixel.2832_ret:
	lw	ra, 36(sp)
	lw	fp, 32(sp)
	addi	sp, sp, 40
	jr	ra
init_line_elements.2834:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	li	a2, 0
	bgt	a2, a1, ble_else.12515
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	create_pixel.2832
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 0(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements.2834
	b	init_line_elements.2834_ret
ble_else.12515:
	b	init_line_elements.2834_ret
init_line_elements.2834_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
create_pixelline.2837:
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
	call	create_pixel.2832
	mv	a1, a0
	lw	a0, 4(sp)
	call	min_caml_create_array
	li	a1, 0
	lw	a2, 0(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	addi	a1, a1, -2
	call	init_line_elements.2834
	b	create_pixelline.2837_ret
create_pixelline.2837_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
adjust_position.2841:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	fmul.s	fa0, fa0, fa0
	fli	fa2, l.10382
	fadd.s	fa0, fa0, fa2
	fsqrt.s	fa0, fa0
	fli	fa2, l.9872
	fdiv.s	fa2, fa2, fa0
	fsw	fa0, 0(sp)
	fsw	fa1, 8(sp)
	fmv.s	fa0, fa2
	call	min_caml_atan
	flw	fa1, 8(sp)
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 16(sp)
	call	min_caml_sin
	flw	fa1, 16(sp)
	fsw	fa0, 24(sp)
	fmv.s	fa0, fa1
	call	min_caml_cos
	flw	fa1, 24(sp)
	fdiv.s	fa0, fa1, fa0
	flw	fa1, 0(sp)
	fmul.s	fa0, fa0, fa1
	b	adjust_position.2841_ret
adjust_position.2841_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
calc_dirvec.2844:
	addi	sp, sp, -88
	sw	ra, 84(sp)
	sw	fp, 80(sp)
	addi	fp, sp, 88
	lw	a3, 4(t6)
	li	a4, 5
	bgt	a4, a0, ble_else.12516
	fmul.s	fa2, fa0, fa0
	fmul.s	fa3, fa1, fa1
	fadd.s	fa2, fa2, fa3
	fli	fa3, l.9872
	fadd.s	fa2, fa2, fa3
	fsqrt.s	fa2, fa2
	fdiv.s	fa0, fa0, fa2
	fdiv.s	fa1, fa1, fa2
	fli	fa3, l.9872
	fdiv.s	fa2, fa3, fa2
	slli	a0, a1, 2
	add	t6, a3, a0
	lw	a0, 0(t6)
	slli	a1, a2, 2
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	fsw	fa2, 0(sp)
	fsw	fa0, 8(sp)
	fsw	fa1, 16(sp)
	sw	a0, 24(sp)
	sw	a2, 28(sp)
	mv	a0, a1
	call	vecset.2425
	lw	a0, 28(sp)
	addi	a1, a0, 40
	slli	a1, a1, 2
	lw	a2, 24(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	flw	fa0, 16(sp)
	fneg.s	fa2, fa0
	flw	fa1, 8(sp)
	flw	fa3, 0(sp)
	mv	a0, a1
	fmv.s	fa0, fa1
	fmv.s	fa1, fa3
	call	vecset.2425
	lw	a0, 28(sp)
	addi	a1, a0, 80
	slli	a1, a1, 2
	lw	a2, 24(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	flw	fa0, 8(sp)
	fneg.s	fa1, fa0
	flw	fa2, 16(sp)
	fneg.s	fa3, fa2
	flw	fa4, 0(sp)
	mv	a0, a1
	fmv.s	fa2, fa3
	fmv.s	fa0, fa4
	call	vecset.2425
	lw	a0, 28(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 24(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	flw	fa0, 8(sp)
	fneg.s	fa1, fa0
	flw	fa2, 16(sp)
	fneg.s	fa3, fa2
	flw	fa4, 0(sp)
	fneg.s	fa5, fa4
	mv	a0, a1
	fmv.s	fa2, fa5
	fmv.s	fa0, fa1
	fmv.s	fa1, fa3
	call	vecset.2425
	lw	a0, 28(sp)
	addi	a1, a0, 41
	slli	a1, a1, 2
	lw	a2, 24(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	flw	fa0, 8(sp)
	fneg.s	fa1, fa0
	flw	fa2, 0(sp)
	fneg.s	fa3, fa2
	flw	fa4, 16(sp)
	mv	a0, a1
	fmv.s	fa2, fa4
	fmv.s	fa0, fa1
	fmv.s	fa1, fa3
	call	vecset.2425
	lw	a0, 28(sp)
	addi	a0, a0, 81
	slli	a0, a0, 2
	lw	a1, 24(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 0(a0)
	flw	fa0, 0(sp)
	fneg.s	fa0, fa0
	flw	fa1, 8(sp)
	flw	fa2, 16(sp)
	call	vecset.2425
	b	calc_dirvec.2844_ret
ble_else.12516:
	fsw	fa2, 32(sp)
	sw	a2, 28(sp)
	sw	a1, 40(sp)
	sw	t6, 44(sp)
	fsw	fa3, 48(sp)
	sw	a0, 56(sp)
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	call	adjust_position.2841
	lw	a0, 56(sp)
	addi	a0, a0, 1
	flw	fa1, 48(sp)
	fsw	fa0, 64(sp)
	sw	a0, 72(sp)
	call	adjust_position.2841
	fmv.s	fa1, fa0
	flw	fa0, 64(sp)
	flw	fa2, 32(sp)
	flw	fa3, 48(sp)
	lw	a0, 72(sp)
	lw	a1, 40(sp)
	lw	a2, 28(sp)
	lw	t6, 44(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	calc_dirvec.2844_ret
calc_dirvec.2844_ret:
	lw	ra, 84(sp)
	lw	fp, 80(sp)
	addi	sp, sp, 88
	jr	ra
calc_dirvecs.2852:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a3, 4(t6)
	li	a4, 0
	bgt	a4, a0, ble_else.12518
	sw	t6, 0(sp)
	sw	a0, 4(sp)
	fsw	fa0, 8(sp)
	sw	a2, 16(sp)
	sw	a1, 20(sp)
	sw	a3, 24(sp)
	call	min_caml_float_of_int
	fli	fa1, l.10505
	fmul.s	fa0, fa0, fa1
	fli	fa1, l.10506
	fsub.s	fa2, fa0, fa1
	li	a0, 0
	fli	fa0, l.9871
	fli	fa1, l.9871
	flw	fa3, 8(sp)
	lw	a1, 20(sp)
	lw	a2, 16(sp)
	lw	t6, 24(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	call	min_caml_float_of_int
	fli	fa1, l.10505
	fmul.s	fa0, fa0, fa1
	fli	fa1, l.10382
	fadd.s	fa2, fa0, fa1
	li	a0, 0
	fli	fa0, l.9871
	fli	fa1, l.9871
	lw	a1, 16(sp)
	addi	a2, a1, 2
	flw	fa3, 8(sp)
	lw	a3, 20(sp)
	lw	t6, 24(sp)
	mv	a1, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	addi	a0, a0, -1
	li	a1, 1
	lw	a2, 20(sp)
	sw	a0, 28(sp)
	mv	a0, a2
	call	add_mod5.2422
	mv	a1, a0
	flw	fa0, 8(sp)
	lw	a0, 28(sp)
	lw	a2, 16(sp)
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	calc_dirvecs.2852_ret
ble_else.12518:
	b	calc_dirvecs.2852_ret
calc_dirvecs.2852_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
calc_dirvec_rows.2857:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	lw	a3, 4(t6)
	li	a4, 0
	bgt	a4, a0, ble_else.12520
	sw	t6, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	sw	a1, 12(sp)
	sw	a3, 16(sp)
	call	min_caml_float_of_int
	fli	fa1, l.10505
	fmul.s	fa0, fa0, fa1
	fli	fa1, l.10506
	fsub.s	fa0, fa0, fa1
	li	a0, 4
	lw	a1, 12(sp)
	lw	a2, 8(sp)
	lw	t6, 16(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	addi	a0, a0, -1
	li	a1, 2
	lw	a2, 12(sp)
	sw	a0, 20(sp)
	mv	a0, a2
	call	add_mod5.2422
	mv	a1, a0
	lw	a0, 8(sp)
	addi	a2, a0, 4
	lw	a0, 20(sp)
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	calc_dirvec_rows.2857_ret
ble_else.12520:
	b	calc_dirvec_rows.2857_ret
calc_dirvec_rows.2857_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
create_dirvec.2861:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	lw	a0, 4(t6)
	li	a1, 3
	fli	fa0, l.9871
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
	b	create_dirvec.2861_ret
create_dirvec.2861_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
create_dirvec_elements.2863:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a2, 4(t6)
	li	a3, 0
	bgt	a3, a1, ble_else.12522
	sw	t6, 0(sp)
	sw	a0, 4(sp)
	sw	a1, 8(sp)
	mv	t6, a2
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 4(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	lw	t6, 0(sp)
	mv	a0, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	create_dirvec_elements.2863_ret
ble_else.12522:
	b	create_dirvec_elements.2863_ret
create_dirvec_elements.2863_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
create_dirvecs.2866:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	fp, 24(sp)
	addi	fp, sp, 32
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	li	a4, 0
	bgt	a4, a0, ble_else.12524
	li	a4, 120
	sw	t6, 0(sp)
	sw	a2, 4(sp)
	sw	a1, 8(sp)
	sw	a0, 12(sp)
	sw	a4, 16(sp)
	mv	t6, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
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
	jalr	ra, ra, 0
	lw	a0, 12(sp)
	addi	a0, a0, -1
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	create_dirvecs.2866_ret
ble_else.12524:
	b	create_dirvecs.2866_ret
create_dirvecs.2866_ret:
	lw	ra, 28(sp)
	lw	fp, 24(sp)
	addi	sp, sp, 32
	jr	ra
init_dirvec_constants.2868:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a2, 4(t6)
	li	a3, 0
	bgt	a3, a1, ble_else.12526
	slli	a3, a1, 2
	add	t6, a0, a3
	lw	a3, 0(t6)
	sw	a0, 0(sp)
	sw	t6, 4(sp)
	sw	a1, 8(sp)
	mv	a0, a3
	mv	t6, a2
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 8(sp)
	addi	a1, a0, -1
	lw	a0, 0(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	init_dirvec_constants.2868_ret
ble_else.12526:
	b	init_dirvec_constants.2868_ret
init_dirvec_constants.2868_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
init_vecset_constants.2871:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	lw	a1, 8(t6)
	lw	a2, 4(t6)
	li	a3, 0
	bgt	a3, a0, ble_else.12528
	slli	a3, a0, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	li	a3, 119
	sw	t6, 0(sp)
	sw	a0, 4(sp)
	mv	a0, a2
	mv	t6, a1
	mv	a1, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	addi	a0, a0, -1
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	init_vecset_constants.2871_ret
ble_else.12528:
	b	init_vecset_constants.2871_ret
init_vecset_constants.2871_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
init_dirvecs.2873:
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
	jalr	ra, ra, 0
	li	a0, 9
	li	a1, 0
	li	a2, 0
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a0, 4
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	init_dirvecs.2873_ret
init_dirvecs.2873_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
add_reflection.2875:
	addi	sp, sp, -72
	sw	ra, 68(sp)
	sw	fp, 64(sp)
	addi	fp, sp, 72
	lw	a2, 12(t6)
	lw	a3, 8(t6)
	lw	t6, 4(t6)
	sw	a3, 0(sp)
	sw	a0, 4(sp)
	sw	a1, 8(sp)
	fsw	fa0, 16(sp)
	sw	a2, 24(sp)
	fsw	fa3, 32(sp)
	fsw	fa2, 40(sp)
	fsw	fa1, 48(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a1, 0(a0)
	flw	fa0, 48(sp)
	flw	fa1, 40(sp)
	flw	fa2, 32(sp)
	sw	a0, 56(sp)
	mv	a0, a1
	call	vecset.2425
	lw	a0, 56(sp)
	lw	t6, 24(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	mv	a0, gp
	addi	gp, gp, 12
	flw	fa0, 16(sp)
	fsw	fa0, 8(a0)
	lw	a1, 56(sp)
	sw	a1, 4(a0)
	lw	a1, 8(sp)
	sw	a1, 0(a0)
	lw	a1, 4(sp)
	slli	a1, a1, 2
	lw	a2, 0(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	b	add_reflection.2875_ret
add_reflection.2875_ret:
	lw	ra, 68(sp)
	lw	fp, 64(sp)
	addi	sp, sp, 72
	jr	ra
setup_rect_reflection.2882:
	addi	sp, sp, -68
	sw	ra, 64(sp)
	sw	fp, 60(sp)
	addi	fp, sp, 68
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	t6, 4(t6)
	slli	a0, a0, 2
	li	a3, 0
	add	t6, a1, a3
	lw	a3, 0(t6)
	fli	fa0, l.9872
	li	a4, 0
	add	t6, s1, a4
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	li	a4, 0
	add	t6, a2, a4
	flw	fa1, 0(t6)
	fneg.s	fa1, fa1
	li	a4, 4
	add	t6, a2, a4
	flw	fa2, 0(t6)
	fneg.s	fa2, fa2
	li	a4, 8
	add	t6, a2, a4
	flw	fa3, 0(t6)
	fneg.s	fa3, fa3
	addi	a4, a0, 1
	li	a5, 0
	add	t6, a2, a5
	flw	fa4, 0(t6)
	sw	a1, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa3, 16(sp)
	fsw	fa1, 24(sp)
	fsw	fa0, 32(sp)
	sw	t6, 40(sp)
	sw	a2, 44(sp)
	sw	a0, 48(sp)
	sw	a3, 52(sp)
	mv	a1, a4
	mv	a0, a3
	fmv.s	fa1, fa4
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 52(sp)
	addi	a1, a0, 1
	lw	a2, 48(sp)
	addi	a3, a2, 2
	li	a4, 4
	lw	a5, 44(sp)
	add	t6, a5, a4
	flw	fa2, 0(t6)
	flw	fa0, 32(sp)
	flw	fa1, 24(sp)
	flw	fa3, 16(sp)
	lw	t6, 40(sp)
	mv	a0, a1
	mv	a1, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 52(sp)
	addi	a1, a0, 2
	lw	a2, 48(sp)
	addi	a2, a2, 3
	li	a3, 8
	lw	a4, 44(sp)
	add	t6, a4, a3
	flw	fa3, 0(t6)
	flw	fa0, 32(sp)
	flw	fa1, 24(sp)
	flw	fa2, 8(sp)
	lw	t6, 40(sp)
	mv	a0, a1
	mv	a1, a2
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 52(sp)
	addi	a0, a0, 3
	li	a1, 0
	lw	a2, 0(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	b	setup_rect_reflection.2882_ret
setup_rect_reflection.2882_ret:
	lw	ra, 64(sp)
	lw	fp, 60(sp)
	addi	sp, sp, 68
	jr	ra
setup_surface_reflection.2885:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	slli	a0, a0, 2
	addi	a0, a0, 1
	li	a4, 0
	add	t6, a1, a4
	lw	a4, 0(t6)
	fli	fa0, l.9872
	li	a6, 0
	add	t6, s1, a6
	flw	fa1, 0(t6)
	fsub.s	fa0, fa0, fa1
	sw	a1, 0(sp)
	fsw	fa0, 8(sp)
	sw	a0, 16(sp)
	sw	a4, 20(sp)
	sw	a3, 24(sp)
	sw	a2, 28(sp)
	sw	a5, 32(sp)
	mv	a1, a5
	mv	a0, a2
	call	veciprod.2441
	fli	fa1, l.9980
	li	a0, 0
	lw	a1, 32(sp)
	add	t6, a1, a0
	flw	fa2, 0(t6)
	fmul.s	fa1, fa1, fa2
	fmul.s	fa1, fa1, fa0
	li	a0, 0
	lw	a2, 28(sp)
	add	t6, a2, a0
	flw	fa2, 0(t6)
	fsub.s	fa1, fa1, fa2
	fli	fa2, l.9980
	li	a0, 4
	add	t6, a1, a0
	flw	fa3, 0(t6)
	fmul.s	fa2, fa2, fa3
	fmul.s	fa2, fa2, fa0
	li	a0, 4
	add	t6, a2, a0
	flw	fa3, 0(t6)
	fsub.s	fa2, fa2, fa3
	fli	fa3, l.9980
	li	a0, 8
	add	t6, a1, a0
	flw	fa4, 0(t6)
	fmul.s	fa3, fa3, fa4
	fmul.s	fa0, fa3, fa0
	li	a0, 8
	add	t6, a2, a0
	flw	fa3, 0(t6)
	fsub.s	fa3, fa0, fa3
	flw	fa0, 8(sp)
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	lw	t6, 24(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 20(sp)
	addi	a0, a0, 1
	li	a1, 0
	lw	a2, 0(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	b	setup_surface_reflection.2885_ret
setup_surface_reflection.2885_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
setup_reflections.2888:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a1, 12(t6)
	lw	a2, 8(t6)
	lw	a3, 4(t6)
	li	a4, 0
	bgt	a4, a0, ble_else.12537
	slli	a4, a0, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	lw	a4, 8(a3)
	li	a5, 2
	bne	a4, a5, beq_else.12538
	lw	a4, 28(a3)
	li	a5, 0
	add	t6, a4, a5
	flw	fa0, 0(t6)
	fli	fa1, l.9872
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else.12539
	li	a4, 0
	b	bne_cont.12540
bne_else.12539:
	li	a4, 1
bne_cont.12540:
	li	a5, 0
	bne	a4, a5, beq_else.12541
	b	setup_reflections.2888_ret
beq_else.12541:
	lw	a4, 4(a3)
	li	a5, 1
	bne	a4, a5, beq_else.12543
	mv	a1, a3
	mv	t6, a2
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	setup_reflections.2888_ret
beq_else.12543:
	li	a2, 2
	bne	a4, a2, beq_else.12544
	mv	t6, a1
	mv	a1, a3
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	setup_reflections.2888_ret
beq_else.12544:
	b	setup_reflections.2888_ret
beq_else.12538:
	b	setup_reflections.2888_ret
ble_else.12537:
	b	setup_reflections.2888_ret
setup_reflections.2888_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
rt.2890:
	addi	sp, sp, -88
	sw	ra, 84(sp)
	sw	fp, 80(sp)
	addi	fp, sp, 88
	lw	a2, 60(t6)
	lw	a3, 56(t6)
	lw	a4, 52(t6)
	lw	a5, 48(t6)
	lw	a6, 44(t6)
	lw	a7, 40(t6)
	lw	s1, 36(t6)
	lw	s2, 32(t6)
	lw	s3, 28(t6)
	lw	s4, 24(t6)
	lw	s5, 20(t6)
	lw	s6, 16(t6)
	lw	s7, 12(t6)
	lw	s8, 8(t6)
	lw	s9, 4(t6)
	li	s10, 0
	add	t6, s7, s10
	sw	a0, 0(t6)
	li	s10, 4
	add	t6, s7, s10
	sw	a1, 0(t6)
	srai	s7, a0, 1
	li	s10, 0
	add	t6, s8, s10
	sw	s7, 0(t6)
	srai	a1, a1, 1
	li	s7, 4
	add	t6, s8, s7
	sw	a1, 0(t6)
	fli	fa0, l.10545
	sw	a7, 0(sp)
	sw	s2, 4(sp)
	sw	a4, 8(sp)
	sw	s3, 12(sp)
	sw	s4, 16(sp)
	sw	a5, 20(sp)
	sw	s5, 24(sp)
	sw	a3, 28(sp)
	sw	s6, 32(sp)
	sw	a2, 36(sp)
	sw	s1, 40(sp)
	sw	s9, 44(sp)
	sw	a6, 48(sp)
	fsw	fa0, 56(sp)
	call	min_caml_float_of_int
	flw	fa1, 56(sp)
	fdiv.s	fa0, fa1, fa0
	li	a0, 0
	lw	a1, 48(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
	lw	t6, 44(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	t6, 44(sp)
	sw	a0, 64(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	t6, 44(sp)
	sw	a0, 68(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	t6, 40(sp)
	sw	a0, 72(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	t6, 36(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	t6, 32(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	call	veccpy.2435
	lw	a0, 16(sp)
	lw	t6, 20(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a0, 0
	lw	a1, 12(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	addi	a0, a0, -1
	lw	t6, 8(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a1, 0
	li	a2, 0
	lw	a0, 68(sp)
	lw	t6, 4(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	li	a0, 0
	li	a4, 2
	lw	a1, 64(sp)
	lw	a2, 68(sp)
	lw	a3, 72(sp)
	lw	t6, 0(sp)
	lw	ra, 0(t6)
	jalr	ra, ra, 0
	b	rt.2890_ret
rt.2890_ret:
	lw	ra, 84(sp)
	lw	fp, 80(sp)
	addi	sp, sp, 88
	jr	ra
end:
	j	end
	.data
l.10545:	# 128.000000
	.word	1124073472
l.10506:	# 0.900000
	.word	1063675494
l.10505:	# 0.200000
	.word	1045220557
l.10402:	# 150.000000
	.word	1125515264
l.10400:	# -150.000000
	.word	-1021968384
l.10382:	# 0.100000
	.word	1036831949
l.10378:	# -2.000000
	.word	-1073741824
l.10376:	# 0.003906
	.word	998244352
l.10351:	# 20.000000
	.word	1101004800
l.10350:	# 0.050000
	.word	1028443341
l.10345:	# 0.250000
	.word	1048576000
l.10341:	# 10.000000
	.word	1092616192
l.10335:	# 0.300000
	.word	1050253722
l.10334:	# 255.000000
	.word	1132396544
l.10333:	# 0.500000
	.word	1056964608
l.10332:	# 0.150000
	.word	1041865114
l.10328:	# 3.141593
	.word	1078530011
l.10327:	# 30.000000
	.word	1106247680
l.10326:	# 15.000000
	.word	1097859072
l.10325:	# 0.000100
	.word	953267991
l.10260:	# 100000000.000000
	.word	1287568416
l.10256:	# 1000000000.000000
	.word	1315859240
l.10236:	# -0.100000
	.word	-1110651699
l.10223:	# 0.010000
	.word	1008981770
l.10222:	# -0.200000
	.word	-1102263091
l.9980:	# 2.000000
	.word	1073741824
l.9946:	# -200.000000
	.word	-1018691584
l.9944:	# 200.000000
	.word	1128792064
l.9943:	# 0.017453
	.word	1016003125
l.9873:	# -1.000000
	.word	-1082130432
l.9872:	# 1.000000
	.word	1065353216
l.9871:	# 0.000000
	.word	0
