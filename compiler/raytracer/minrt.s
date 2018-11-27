	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	li	gp, 220	# initialize gp
#	main program starts
	li	a0, 1
	li	a1, 0
	call	min_caml_create_array
	li	a1, 0
	fli	fa0, l_7670
	sw	a0, 0(sp)
	fsw	fa0, 8(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 60
	li	a2, 0
	li	a3, 0
	li	a4, 0
	li	a5, 0
	li	a6, 0
	mv	a7, gp
	addi	gp, gp, 44
	sw	a0, 40(a7)
	sw	a0, 36(a7)
	sw	a0, 32(a7)
	sw	a0, 28(a7)
	sw	a6, 24(a7)
	sw	a0, 20(a7)
	sw	a0, 16(a7)
	sw	a5, 12(a7)
	sw	a4, 8(a7)
	sw	a3, 4(a7)
	sw	a2, 0(a7)
	mv	a0, a7
	mv	t5, a1
	mv	a1, a0
	mv	a0, t5
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 8(sp)
	sw	a0, 16(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 8(sp)
	sw	a0, 20(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 8(sp)
	sw	a0, 24(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 1
	fli	fa0, l_8136
	sw	a0, 28(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 50
	li	a2, 1
	li	a3, -1
	sw	a0, 32(sp)
	sw	a1, 36(sp)
	mv	a1, a3
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 36(sp)
	call	min_caml_create_array
	li	a1, 1
	li	a2, 1
	lw	a3, 0(a0)
	sw	a0, 40(sp)
	sw	a1, 44(sp)
	mv	a1, a3
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 44(sp)
	call	min_caml_create_array
	li	a1, 1
	flw	fa0, 8(sp)
	sw	a0, 48(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 1
	li	a2, 0
	sw	a0, 52(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 1
	fli	fa0, l_8058
	sw	a0, 56(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 8(sp)
	sw	a0, 60(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 1
	li	a2, 0
	sw	a0, 64(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 8(sp)
	sw	a0, 68(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 8(sp)
	sw	a0, 72(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 8(sp)
	sw	a0, 76(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 8(sp)
	sw	a0, 80(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 2
	li	a2, 0
	sw	a0, 84(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 2
	li	a2, 0
	sw	a0, 88(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 1
	flw	fa0, 8(sp)
	sw	a0, 92(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 8(sp)
	sw	a0, 96(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 8(sp)
	sw	a0, 100(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 8(sp)
	sw	a0, 104(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 8(sp)
	sw	a0, 108(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 8(sp)
	sw	a0, 112(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 8(sp)
	sw	a0, 116(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 0
	flw	fa0, 8(sp)
	sw	a0, 120(sp)
	mv	a0, a1
	call	min_caml_create_array
	mv	a1, a0
	li	a0, 0
	sw	a1, 124(sp)
	call	min_caml_create_array
	li	a1, 0
	mv	a2, gp
	addi	gp, gp, 8
	sw	a0, 4(a2)
	lw	a0, 124(sp)
	sw	a0, 0(a2)
	mv	a0, a2
	mv	t5, a1
	mv	a1, a0
	mv	a0, t5
	call	min_caml_create_array
	mv	a1, a0
	li	a0, 5
	call	min_caml_create_array
	li	a1, 0
	flw	fa0, 8(sp)
	sw	a0, 128(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 8(sp)
	sw	a0, 132(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 60
	lw	a2, 132(sp)
	sw	a0, 136(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 136(sp)
	sw	a0, 0(a1)
	li	a2, 0
	flw	fa0, 8(sp)
	sw	a1, 140(sp)
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, a0
	li	a0, 0
	sw	a1, 144(sp)
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 144(sp)
	sw	a0, 0(a1)
	mv	a0, a1
	li	a1, 180
	li	a2, 0
	mv	a3, gp
	addi	gp, gp, 12
	flw	fa0, 8(sp)
	fsw	fa0, 8(a3)
	sw	a0, 4(a3)
	sw	a2, 0(a3)
	mv	a0, a3
	mv	t5, a1
	mv	a1, a0
	mv	a0, t5
	call	min_caml_create_array
	li	a1, 1
	li	a2, 0
	sw	a0, 148(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 24
	la	a2, read_screen_settings_2483
	sw	a2, 0(a1)
	lw	a2, 24(sp)
	sw	a2, 20(a1)
	lw	a3, 116(sp)
	sw	a3, 16(a1)
	lw	a4, 112(sp)
	sw	a4, 12(a1)
	lw	a5, 108(sp)
	sw	a5, 8(a1)
	lw	a6, 20(sp)
	sw	a6, 4(a1)
	mv	a6, gp
	addi	gp, gp, 12
	la	a7, read_light_2485
	sw	a7, 0(a6)
	lw	a7, 28(sp)
	sw	a7, 8(a6)
	lw	s1, 32(sp)
	sw	s1, 4(a6)
	mv	s2, gp
	addi	gp, gp, 8
	la	s3, read_nth_object_2490
	sw	s3, 0(s2)
	lw	s3, 16(sp)
	sw	s3, 4(s2)
	mv	s4, gp
	addi	gp, gp, 12
	la	s5, read_object_2492
	sw	s5, 0(s4)
	sw	s2, 8(s4)
	lw	s2, 0(sp)
	sw	s2, 4(s4)
	mv	s5, gp
	addi	gp, gp, 8
	la	s6, read_and_network_2500
	sw	s6, 0(s5)
	lw	s6, 40(sp)
	sw	s6, 4(s5)
	mv	s7, gp
	addi	gp, gp, 24
	la	s8, read_parameter_2502
	sw	s8, 0(s7)
	sw	a1, 20(s7)
	sw	s4, 16(s7)
	sw	a6, 12(s7)
	sw	s5, 8(s7)
	lw	a1, 48(sp)
	sw	a1, 4(s7)
	mv	a6, gp
	addi	gp, gp, 8
	la	s4, solver_rect_surface_2504
	sw	s4, 0(a6)
	lw	s4, 52(sp)
	sw	s4, 4(a6)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, solver_rect_2513
	sw	s8, 0(s5)
	sw	a6, 4(s5)
	mv	a6, gp
	addi	gp, gp, 8
	la	s8, solver_surface_2519
	sw	s8, 0(a6)
	sw	s4, 4(a6)
	mv	s8, gp
	addi	gp, gp, 8
	la	s9, solver_second_2538
	sw	s9, 0(s8)
	sw	s4, 4(s8)
	mv	s9, gp
	addi	gp, gp, 20
	la	s10, solver_2544
	sw	s10, 0(s9)
	sw	a6, 16(s9)
	sw	s8, 12(s9)
	sw	s5, 8(s9)
	sw	s3, 4(s9)
	mv	a6, gp
	addi	gp, gp, 8
	la	s5, solver_rect_fast_2548
	sw	s5, 0(a6)
	sw	s4, 4(a6)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, solver_surface_fast_2555
	sw	s8, 0(s5)
	sw	s4, 4(s5)
	mv	s8, gp
	addi	gp, gp, 8
	la	s10, solver_second_fast_2561
	sw	s10, 0(s8)
	sw	s4, 4(s8)
	mv	s10, gp
	addi	gp, gp, 20
	la	s11, solver_fast_2567
	sw	s11, 0(s10)
	sw	s5, 16(s10)
	sw	s8, 12(s10)
	sw	a6, 8(s10)
	sw	s3, 4(s10)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, solver_surface_fast2_2571
	sw	s8, 0(s5)
	sw	s4, 4(s5)
	mv	s8, gp
	addi	gp, gp, 8
	la	s11, solver_second_fast2_2578
	sw	s11, 0(s8)
	sw	s4, 4(s8)
	mv	s11, gp
	addi	gp, gp, 20
	la	t0, solver_fast2_2585
	sw	t0, 0(s11)
	sw	s5, 16(s11)
	sw	s8, 12(s11)
	sw	a6, 8(s11)
	sw	s3, 4(s11)
	mv	a6, gp
	addi	gp, gp, 8
	la	s5, iter_setup_dirvec_constants_2597
	sw	s5, 0(a6)
	sw	s3, 4(a6)
	mv	s5, gp
	addi	gp, gp, 12
	la	s8, setup_dirvec_constants_2600
	sw	s8, 0(s5)
	sw	s2, 8(s5)
	sw	a6, 4(s5)
	mv	a6, gp
	addi	gp, gp, 8
	la	s8, setup_startp_constants_2602
	sw	s8, 0(a6)
	sw	s3, 4(a6)
	mv	s8, gp
	addi	gp, gp, 16
	la	t0, setup_startp_2605
	sw	t0, 0(s8)
	lw	t0, 104(sp)
	sw	t0, 12(s8)
	sw	a6, 8(s8)
	sw	s2, 4(s8)
	mv	a6, gp
	addi	gp, gp, 8
	la	t1, check_all_inside_2627
	sw	t1, 0(a6)
	sw	s3, 4(a6)
	mv	t1, gp
	addi	gp, gp, 32
	la	t2, shadow_check_and_group_2633
	sw	t2, 0(t1)
	sw	s10, 28(t1)
	sw	s4, 24(t1)
	sw	s3, 20(t1)
	lw	t2, 140(sp)
	sw	t2, 16(t1)
	sw	a7, 12(t1)
	lw	t3, 64(sp)
	sw	t3, 8(t1)
	sw	a6, 4(t1)
	mv	t4, gp
	addi	gp, gp, 12
	la	t5, shadow_check_one_or_group_2636
	sw	t5, 0(t4)
	sw	t1, 8(t4)
	sw	s6, 4(t4)
	mv	t1, gp
	addi	gp, gp, 24
	la	t5, shadow_check_one_or_matrix_2639
	sw	t5, 0(t1)
	sw	s10, 20(t1)
	sw	s4, 16(t1)
	sw	t4, 12(t1)
	sw	t2, 8(t1)
	sw	t3, 4(t1)
	mv	s10, gp
	addi	gp, gp, 40
	la	t4, solve_each_element_2642
	sw	t4, 0(s10)
	lw	t4, 60(sp)
	sw	t4, 36(s10)
	lw	t5, 100(sp)
	sw	t5, 32(s10)
	sw	s4, 28(s10)
	sw	s9, 24(s10)
	sw	s3, 20(s10)
	lw	t6, 56(sp)
	sw	t6, 16(s10)
	sw	t3, 12(s10)
	lw	t2, 68(sp)
	sw	t2, 8(s10)
	sw	a6, 4(s10)
	sw	s7, 152(sp)
	mv	s7, gp
	addi	gp, gp, 12
	sw	s5, 156(sp)
	la	s5, solve_one_or_network_2646
	sw	s5, 0(s7)
	sw	s10, 8(s7)
	sw	s6, 4(s7)
	mv	s5, gp
	addi	gp, gp, 24
	la	s10, trace_or_matrix_2650
	sw	s10, 0(s5)
	sw	t4, 20(s5)
	sw	t5, 16(s5)
	sw	s4, 12(s5)
	sw	s9, 8(s5)
	sw	s7, 4(s5)
	mv	s7, gp
	addi	gp, gp, 16
	la	s9, judge_intersection_2654
	sw	s9, 0(s7)
	sw	s5, 12(s7)
	sw	t4, 8(s7)
	sw	a1, 4(s7)
	mv	s5, gp
	addi	gp, gp, 40
	la	s9, solve_each_element_fast_2656
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
	la	s9, solve_one_or_network_fast_2660
	sw	s9, 0(a6)
	sw	s5, 8(a6)
	sw	s6, 4(a6)
	mv	s5, gp
	addi	gp, gp, 20
	la	s6, trace_or_matrix_fast_2664
	sw	s6, 0(s5)
	sw	t4, 16(s5)
	sw	s11, 12(s5)
	sw	s4, 8(s5)
	sw	a6, 4(s5)
	mv	a6, gp
	addi	gp, gp, 16
	la	s4, judge_intersection_fast_2668
	sw	s4, 0(a6)
	sw	s5, 12(a6)
	sw	t4, 8(a6)
	sw	a1, 4(a6)
	mv	s4, gp
	addi	gp, gp, 12
	la	s5, get_nvector_rect_2670
	sw	s5, 0(s4)
	lw	s5, 72(sp)
	sw	s5, 8(s4)
	sw	t6, 4(s4)
	mv	s6, gp
	addi	gp, gp, 8
	la	s9, get_nvector_plane_2672
	sw	s9, 0(s6)
	sw	s5, 4(s6)
	mv	s9, gp
	addi	gp, gp, 12
	la	s10, get_nvector_second_2674
	sw	s10, 0(s9)
	sw	s5, 8(s9)
	sw	t3, 4(s9)
	mv	s10, gp
	addi	gp, gp, 16
	la	s11, get_nvector_2676
	sw	s11, 0(s10)
	sw	s9, 12(s10)
	sw	s4, 8(s10)
	sw	s6, 4(s10)
	mv	s4, gp
	addi	gp, gp, 8
	la	s6, utexture_2679
	sw	s6, 0(s4)
	lw	s6, 76(sp)
	sw	s6, 4(s4)
	mv	s9, gp
	addi	gp, gp, 12
	la	s11, add_light_2682
	sw	s11, 0(s9)
	sw	s6, 8(s9)
	lw	s11, 84(sp)
	sw	s11, 4(s9)
	mv	t0, gp
	addi	gp, gp, 36
	la	s2, trace_reflections_2686
	sw	s2, 0(t0)
	sw	t1, 32(t0)
	lw	s2, 148(sp)
	sw	s2, 28(t0)
	sw	a1, 24(t0)
	sw	s5, 20(t0)
	sw	a6, 16(t0)
	sw	t6, 12(t0)
	sw	t2, 8(t0)
	sw	s9, 4(t0)
	mv	s2, gp
	addi	gp, gp, 84
	la	a4, trace_ray_2691
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
	la	s1, trace_diffuse_ray_2697
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
	lw	a1, 80(sp)
	sw	a1, 4(a4)
	mv	a6, gp
	addi	gp, gp, 8
	la	s1, iter_trace_diffuse_rays_2700
	sw	s1, 0(a6)
	sw	a4, 4(a6)
	mv	a4, gp
	addi	gp, gp, 16
	la	s1, trace_diffuse_ray_80percent_2709
	sw	s1, 0(a4)
	sw	s8, 12(a4)
	sw	a6, 8(a4)
	lw	s1, 128(sp)
	sw	s1, 4(a4)
	mv	s4, gp
	addi	gp, gp, 16
	la	s5, calc_diffuse_using_1point_2713
	sw	s5, 0(s4)
	sw	a4, 12(s4)
	sw	s11, 8(s4)
	sw	a1, 4(s4)
	mv	a4, gp
	addi	gp, gp, 12
	la	s5, calc_diffuse_using_5points_2716
	sw	s5, 0(a4)
	sw	s11, 8(a4)
	sw	a1, 4(a4)
	mv	s5, gp
	addi	gp, gp, 8
	la	s6, do_without_neighbors_2722
	sw	s6, 0(s5)
	sw	s4, 4(s5)
	mv	s4, gp
	addi	gp, gp, 8
	la	s6, neighbors_exist_2725
	sw	s6, 0(s4)
	lw	s6, 88(sp)
	sw	s6, 4(s4)
	mv	s7, gp
	addi	gp, gp, 12
	la	s9, try_exploit_neighbors_2738
	sw	s9, 0(s7)
	sw	s5, 8(s7)
	sw	a4, 4(s7)
	mv	a4, gp
	addi	gp, gp, 8
	la	s9, write_ppm_header_2745
	sw	s9, 0(a4)
	sw	s6, 4(a4)
	mv	s9, gp
	addi	gp, gp, 8
	la	s10, write_rgb_2749
	sw	s10, 0(s9)
	sw	s11, 4(s9)
	mv	s10, gp
	addi	gp, gp, 20
	la	t0, pretrace_diffuse_rays_2751
	sw	t0, 0(s10)
	sw	s8, 16(s10)
	sw	a6, 12(s10)
	sw	s1, 8(s10)
	sw	a1, 4(s10)
	mv	a1, gp
	addi	gp, gp, 40
	la	a6, pretrace_pixels_2754
	sw	a6, 0(a1)
	sw	a2, 36(a1)
	sw	s2, 32(a1)
	sw	t5, 28(a1)
	sw	a5, 24(a1)
	lw	a2, 96(sp)
	sw	a2, 20(a1)
	sw	s11, 16(a1)
	lw	a5, 120(sp)
	sw	a5, 12(a1)
	sw	s10, 8(a1)
	lw	a5, 92(sp)
	sw	a5, 4(a1)
	mv	a6, gp
	addi	gp, gp, 28
	la	s2, pretrace_line_2761
	sw	s2, 0(a6)
	sw	a3, 24(a6)
	lw	a3, 112(sp)
	sw	a3, 20(a6)
	sw	a2, 16(a6)
	sw	a1, 12(a6)
	sw	s6, 8(a6)
	sw	a5, 4(a6)
	mv	a1, gp
	addi	gp, gp, 28
	la	a3, scan_pixel_2765
	sw	a3, 0(a1)
	sw	s9, 24(a1)
	sw	s7, 20(a1)
	sw	s11, 16(a1)
	sw	s4, 12(a1)
	sw	s6, 8(a1)
	sw	s5, 4(a1)
	mv	a3, gp
	addi	gp, gp, 16
	la	s2, scan_line_2771
	sw	s2, 0(a3)
	sw	a1, 12(a3)
	sw	a6, 8(a3)
	sw	s6, 4(a3)
	mv	a1, gp
	addi	gp, gp, 8
	la	s2, create_pixelline_2784
	sw	s2, 0(a1)
	sw	s6, 4(a1)
	mv	s2, gp
	addi	gp, gp, 8
	la	s4, calc_dirvec_2791
	sw	s4, 0(s2)
	sw	s1, 4(s2)
	mv	s4, gp
	addi	gp, gp, 8
	la	s5, calc_dirvecs_2799
	sw	s5, 0(s4)
	sw	s2, 4(s4)
	mv	s2, gp
	addi	gp, gp, 8
	la	s5, calc_dirvec_rows_2804
	sw	s5, 0(s2)
	sw	s4, 4(s2)
	mv	s4, gp
	addi	gp, gp, 8
	la	s5, create_dirvec_2808
	sw	s5, 0(s4)
	lw	s5, 0(sp)
	sw	s5, 4(s4)
	mv	s7, gp
	addi	gp, gp, 8
	la	s8, create_dirvec_elements_2810
	sw	s8, 0(s7)
	sw	s4, 4(s7)
	mv	s8, gp
	addi	gp, gp, 16
	la	s9, create_dirvecs_2813
	sw	s9, 0(s8)
	sw	s1, 12(s8)
	sw	s7, 8(s8)
	sw	s4, 4(s8)
	mv	s7, gp
	addi	gp, gp, 8
	la	s9, init_dirvec_constants_2815
	sw	s9, 0(s7)
	lw	s9, 156(sp)
	sw	s9, 4(s7)
	mv	s10, gp
	addi	gp, gp, 12
	la	s11, init_vecset_constants_2818
	sw	s11, 0(s10)
	sw	s7, 8(s10)
	sw	s1, 4(s10)
	mv	s1, gp
	addi	gp, gp, 16
	la	s7, init_dirvecs_2820
	sw	s7, 0(s1)
	sw	s10, 12(s1)
	sw	s8, 8(s1)
	sw	s2, 4(s1)
	mv	s2, gp
	addi	gp, gp, 16
	la	s7, add_reflection_2822
	sw	s7, 0(s2)
	sw	s9, 12(s2)
	lw	s7, 148(sp)
	sw	s7, 8(s2)
	sw	s4, 4(s2)
	mv	s4, gp
	addi	gp, gp, 16
	la	s7, setup_rect_reflection_2829
	sw	s7, 0(s4)
	sw	a0, 12(s4)
	sw	a7, 8(s4)
	sw	s2, 4(s4)
	mv	s7, gp
	addi	gp, gp, 16
	la	s8, setup_surface_reflection_2832
	sw	s8, 0(s7)
	sw	a0, 12(s7)
	sw	a7, 8(s7)
	sw	s2, 4(s7)
	mv	a0, gp
	addi	gp, gp, 16
	la	s2, setup_reflections_2835
	sw	s2, 0(a0)
	sw	s7, 12(a0)
	sw	s4, 8(a0)
	sw	s3, 4(a0)
	mv	s11, gp
	addi	gp, gp, 64
	la	s2, rt_2837
	sw	s2, 0(s11)
	sw	a4, 60(s11)
	lw	a4, 136(sp)
	sw	a4, 56(s11)
	sw	a0, 52(s11)
	sw	s9, 48(s11)
	sw	a2, 44(s11)
	sw	a3, 40(s11)
	lw	a0, 152(sp)
	sw	a0, 36(s11)
	sw	a6, 32(s11)
	sw	s5, 28(s11)
	lw	a0, 140(sp)
	sw	a0, 24(s11)
	sw	a7, 20(s11)
	sw	s1, 16(s11)
	sw	s6, 12(s11)
	sw	a5, 8(s11)
	sw	a1, 4(s11)
	li	a0, 128
	li	a1, 128
	lw	ra, 0(s11)
	jalr	ra, ra, 0
#	main program ends
	j	end
sgn_2364:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fli	fa1, l_7670
	feq	t6, fa0, fa1
	beq	t6, zero, bne_else_9740
	fli	fa0, l_7670
	b	sgn_2364_ret
bne_else_9740:
	fle	t6, fa0, fa1
	beq	t6, zero, bne_else_9741
	fli	fa0, l_7672
	b	sgn_2364_ret
bne_else_9741:
	fli	fa0, l_7671
sgn_2364_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
add_mod5_2369:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	add	a0, a0, a1
	li	t6, 5
	blt	a0, t6, bge_else_9742
	addi	a0, a0, -5
	b	add_mod5_2369_ret
bge_else_9742:
add_mod5_2369_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecset_2372:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fsw	fa0, 0(a0)
	fsw	fa1, 4(a0)
	fsw	fa2, 8(a0)
vecset_2372_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecfill_2377:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fsw	fa0, 0(a0)
	fsw	fa0, 4(a0)
	fsw	fa0, 8(a0)
vecfill_2377_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
veccpy_2382:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	flw	fa0, 0(a1)
	fsw	fa0, 0(a0)
	flw	fa0, 4(a1)
	fsw	fa0, 4(a0)
	flw	fa0, 8(a1)
	fsw	fa0, 8(a0)
veccpy_2382_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecunit_sgn_2385:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	flw	fa0, 0(a0)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	fli	fa1, l_7670
	feq	t6, fa0, fa1
	beq	t6, zero, bne_else_9746
	fli	fa0, l_7671
	b	bne_cont_9747
bne_else_9746:
	bne	a1, zero, beq_else_9748
	fli	fa1, l_7671
	fdiv	fa0, fa1, fa0
	b	beq_cont_9749
beq_else_9748:
	fli	fa1, l_7672
	fdiv	fa0, fa1, fa0
beq_cont_9749:
bne_cont_9747:
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a0)
vecunit_sgn_2385_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
veciprod_2388:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	flw	fa0, 0(a0)
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
veciprod_2388_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
veciprod2_2391:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	flw	fa3, 0(a0)
	fmul	fa0, fa3, fa0
	flw	fa3, 4(a0)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
veciprod2_2391_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecaccum_2396:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	flw	fa1, 0(a0)
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	flw	fa2, 4(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	flw	fa2, 8(a1)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0)
vecaccum_2396_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecadd_2400:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	flw	fa0, 0(a0)
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	flw	fa0, 4(a0)
	flw	fa1, 4(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(a0)
	flw	fa0, 8(a0)
	flw	fa1, 8(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a0)
vecadd_2400_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecscale_2403:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a0)
vecscale_2403_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecaccumv_2406:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	flw	fa0, 0(a0)
	flw	fa1, 0(a1)
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	flw	fa0, 4(a0)
	flw	fa1, 4(a1)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(a0)
	flw	fa0, 8(a0)
	flw	fa1, 8(a1)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a0)
vecaccumv_2406_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
read_screen_settings_2483:
	addi	sp, sp, -84
	sw	ra, 80(sp)
	sw	fp, 76(sp)
	addi	fp, sp, 84
	lw	a0, 20(s11)
	lw	a1, 16(s11)
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	sw	a0, 0(sp)
	sw	a2, 4(sp)
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	sw	a4, 16(sp)
	call	min_caml_read_float
	lw	a0, 16(sp)
	fsw	fa0, 0(a0)
	call	min_caml_read_float
	lw	a0, 16(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	lw	a0, 16(sp)
	fsw	fa0, 8(a0)
	call	min_caml_read_float
	fli	fa1, l_7745
	fmul	fa0, fa0, fa1
	fsw	fa1, 24(sp)
	fsw	fa0, 32(sp)
	call	min_caml_cos
	flw	fa1, 32(sp)
	fsw	fa0, 40(sp)
	fmv	fa0, fa1
	call	min_caml_sin
	fsw	fa0, 48(sp)
	call	min_caml_read_float
	flw	fa1, 24(sp)
	fmul	fa0, fa0, fa1
	fsw	fa0, 56(sp)
	call	min_caml_cos
	flw	fa1, 56(sp)
	fsw	fa0, 64(sp)
	fmv	fa0, fa1
	call	min_caml_sin
	flw	fa1, 40(sp)
	fmul	fa2, fa1, fa0
	fli	fa3, l_7746
	fmul	fa2, fa2, fa3
	lw	a0, 12(sp)
	fsw	fa2, 0(a0)
	fli	fa2, l_7748
	flw	fa4, 48(sp)
	fmul	fa2, fa4, fa2
	fsw	fa2, 4(a0)
	flw	fa2, 64(sp)
	fmul	fa5, fa1, fa2
	fmul	fa3, fa5, fa3
	fsw	fa3, 8(a0)
	lw	a1, 8(sp)
	fsw	fa2, 0(a1)
	fli	fa3, l_7670
	fsw	fa3, 4(a1)
	fneg	fa3, fa0
	fsw	fa3, 8(a1)
	fneg	fa3, fa4
	fmul	fa0, fa3, fa0
	lw	a1, 4(sp)
	fsw	fa0, 0(a1)
	fneg	fa0, fa1
	fsw	fa0, 4(a1)
	fmul	fa0, fa3, fa2
	fsw	fa0, 8(a1)
	lw	a1, 16(sp)
	flw	fa0, 0(a1)
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	lw	a2, 0(sp)
	fsw	fa0, 0(a2)
	flw	fa0, 4(a1)
	flw	fa1, 4(a0)
	fsub	fa0, fa0, fa1
	fsw	fa0, 4(a2)
	flw	fa0, 8(a1)
	flw	fa1, 8(a0)
	fsub	fa0, fa0, fa1
	fsw	fa0, 8(a2)
read_screen_settings_2483_ret:
	lw	ra, 80(sp)
	lw	fp, 76(sp)
	addi	sp, sp, 84
	jr	ra
read_light_2485:
	addi	sp, sp, -52
	sw	ra, 48(sp)
	sw	fp, 44(sp)
	addi	fp, sp, 52
	lw	a0, 8(s11)
	lw	a1, 4(s11)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	call	min_caml_read_int
	call	min_caml_read_float
	fli	fa1, l_7745
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(sp)
	fsw	fa1, 16(sp)
	call	min_caml_sin
	fneg	fa0, fa0
	lw	a0, 4(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	flw	fa1, 16(sp)
	fmul	fa0, fa0, fa1
	flw	fa1, 8(sp)
	fsw	fa0, 24(sp)
	fmv	fa0, fa1
	call	min_caml_cos
	flw	fa1, 24(sp)
	fsw	fa0, 32(sp)
	fmv	fa0, fa1
	call	min_caml_sin
	flw	fa1, 32(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 24(sp)
	call	min_caml_cos
	flw	fa1, 32(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	fsw	fa0, 8(a0)
	call	min_caml_read_float
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
read_light_2485_ret:
	lw	ra, 48(sp)
	lw	fp, 44(sp)
	addi	sp, sp, 52
	jr	ra
rotate_quadratic_matrix_2487:
	addi	sp, sp, -60
	sw	ra, 56(sp)
	sw	fp, 52(sp)
	addi	fp, sp, 60
	flw	fa0, 0(a1)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	min_caml_cos
	lw	a0, 4(sp)
	flw	fa1, 0(a0)
	fsw	fa0, 8(sp)
	fmv	fa0, fa1
	call	min_caml_sin
	lw	a0, 4(sp)
	flw	fa1, 4(a0)
	fsw	fa0, 16(sp)
	fmv	fa0, fa1
	call	min_caml_cos
	lw	a0, 4(sp)
	flw	fa1, 4(a0)
	fsw	fa0, 24(sp)
	fmv	fa0, fa1
	call	min_caml_sin
	lw	a0, 4(sp)
	flw	fa1, 8(a0)
	fsw	fa0, 32(sp)
	fmv	fa0, fa1
	call	min_caml_cos
	lw	a0, 4(sp)
	flw	fa1, 8(a0)
	fsw	fa0, 40(sp)
	fmv	fa0, fa1
	call	min_caml_sin
	flw	fa1, 40(sp)
	flw	fa2, 24(sp)
	fmul	fa3, fa2, fa1
	flw	fa4, 32(sp)
	flw	fa5, 16(sp)
	fmul	fa6, fa5, fa4
	fmul	fa7, fa6, fa1
	flw	fs1, 8(sp)
	fmul	fs2, fs1, fa0
	fsub	fa7, fa7, fs2
	fmul	fs2, fs1, fa4
	fmul	fs3, fs2, fa1
	fmul	fs4, fa5, fa0
	fadd	fs3, fs3, fs4
	fmul	fs4, fa2, fa0
	fmul	fa6, fa6, fa0
	fmul	fs5, fs1, fa1
	fadd	fa6, fa6, fs5
	fmul	fa0, fs2, fa0
	fmul	fa1, fa5, fa1
	fsub	fa0, fa0, fa1
	fneg	fa1, fa4
	fmul	fa4, fa5, fa2
	fmul	fa2, fs1, fa2
	lw	a0, 0(sp)
	flw	fa5, 0(a0)
	flw	fs1, 4(a0)
	flw	fs2, 8(a0)
	fmul	fs5, fa3, fa3
	fmul	fs5, fa5, fs5
	fmul	fs6, fs4, fs4
	fmul	fs6, fs1, fs6
	fadd	fs5, fs5, fs6
	fmul	fs6, fa1, fa1
	fmul	fs6, fs2, fs6
	fadd	fs5, fs5, fs6
	fsw	fs5, 0(a0)
	fmul	fs5, fa7, fa7
	fmul	fs5, fa5, fs5
	fmul	fs6, fa6, fa6
	fmul	fs6, fs1, fs6
	fadd	fs5, fs5, fs6
	fmul	fs6, fa4, fa4
	fmul	fs6, fs2, fs6
	fadd	fs5, fs5, fs6
	fsw	fs5, 4(a0)
	fmul	fs5, fs3, fs3
	fmul	fs5, fa5, fs5
	fmul	fs6, fa0, fa0
	fmul	fs6, fs1, fs6
	fadd	fs5, fs5, fs6
	fmul	fs6, fa2, fa2
	fmul	fs6, fs2, fs6
	fadd	fs5, fs5, fs6
	fsw	fs5, 8(a0)
	fli	fs5, l_7782
	fmul	fs6, fa5, fa7
	fmul	fs6, fs6, fs3
	fmul	fs7, fs1, fa6
	fmul	fs7, fs7, fa0
	fadd	fs6, fs6, fs7
	fmul	fs7, fs2, fa4
	fmul	fs7, fs7, fa2
	fadd	fs6, fs6, fs7
	fmul	fs6, fs5, fs6
	lw	a0, 4(sp)
	fsw	fs6, 0(a0)
	fmul	fa3, fa5, fa3
	fmul	fa5, fa3, fs3
	fmul	fs1, fs1, fs4
	fmul	fa0, fs1, fa0
	fadd	fa0, fa5, fa0
	fmul	fa1, fs2, fa1
	fmul	fa2, fa1, fa2
	fadd	fa0, fa0, fa2
	fmul	fa0, fs5, fa0
	fsw	fa0, 4(a0)
	fmul	fa0, fa3, fa7
	fmul	fa2, fs1, fa6
	fadd	fa0, fa0, fa2
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa0, fs5, fa0
	fsw	fa0, 8(a0)
rotate_quadratic_matrix_2487_ret:
	lw	ra, 56(sp)
	lw	fp, 52(sp)
	addi	sp, sp, 60
	jr	ra
read_nth_object_2490:
	addi	sp, sp, -108
	sw	ra, 104(sp)
	sw	fp, 100(sp)
	addi	fp, sp, 108
	lw	a1, 4(s11)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	call	min_caml_read_int
	li	t6, -1
	bne	a0, t6, beq_else_9759
	li	a0, 0
	b	read_nth_object_2490_ret
beq_else_9759:
	sw	a0, 8(sp)
	call	min_caml_read_int
	sw	a0, 12(sp)
	call	min_caml_read_int
	sw	a0, 16(sp)
	call	min_caml_read_int
	li	a1, 3
	fli	fa0, l_7670
	sw	a0, 20(sp)
	fsw	fa0, 24(sp)
	mv	a0, a1
	call	min_caml_create_array
	sw	a0, 32(sp)
	call	min_caml_read_float
	lw	a0, 32(sp)
	fsw	fa0, 0(a0)
	call	min_caml_read_float
	lw	a0, 32(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	lw	a0, 32(sp)
	fsw	fa0, 8(a0)
	li	a1, 3
	flw	fa0, 24(sp)
	mv	a0, a1
	call	min_caml_create_array
	sw	a0, 36(sp)
	call	min_caml_read_float
	lw	a0, 36(sp)
	fsw	fa0, 0(a0)
	call	min_caml_read_float
	lw	a0, 36(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	lw	a0, 36(sp)
	fsw	fa0, 8(a0)
	call	min_caml_read_float
	flw	fa1, 24(sp)
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	li	a1, 2
	sw	a0, 40(sp)
	mv	a0, a1
	fmv	fa0, fa1
	call	min_caml_create_array
	sw	a0, 44(sp)
	call	min_caml_read_float
	lw	a0, 44(sp)
	fsw	fa0, 0(a0)
	call	min_caml_read_float
	lw	a0, 44(sp)
	fsw	fa0, 4(a0)
	li	a1, 3
	flw	fa0, 24(sp)
	mv	a0, a1
	call	min_caml_create_array
	sw	a0, 48(sp)
	call	min_caml_read_float
	lw	a0, 48(sp)
	fsw	fa0, 0(a0)
	call	min_caml_read_float
	lw	a0, 48(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	lw	a0, 48(sp)
	fsw	fa0, 8(a0)
	li	a1, 3
	flw	fa0, 24(sp)
	mv	a0, a1
	call	min_caml_create_array
	lw	a1, 20(sp)
	bne	a1, zero, beq_else_9760
	b	beq_cont_9761
beq_else_9760:
	sw	a0, 52(sp)
	call	min_caml_read_float
	fli	fa1, l_7745
	fmul	fa0, fa0, fa1
	lw	a0, 52(sp)
	fsw	fa0, 0(a0)
	fsw	fa1, 56(sp)
	call	min_caml_read_float
	flw	fa1, 56(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 52(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	flw	fa1, 56(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 52(sp)
	fsw	fa0, 8(a0)
beq_cont_9761:
	lw	a1, 12(sp)
	li	t6, 2
	bne	a1, t6, beq_else_9762
	li	a2, 1
	b	beq_cont_9763
beq_else_9762:
	lw	a2, 40(sp)
beq_cont_9763:
	li	a3, 4
	flw	fa0, 24(sp)
	sw	a2, 64(sp)
	sw	a0, 52(sp)
	mv	a0, a3
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 44
	sw	a0, 40(a1)
	lw	a0, 52(sp)
	sw	a0, 36(a1)
	lw	a2, 48(sp)
	sw	a2, 32(a1)
	lw	a2, 44(sp)
	sw	a2, 28(a1)
	lw	a2, 64(sp)
	sw	a2, 24(a1)
	lw	a2, 36(sp)
	sw	a2, 20(a1)
	lw	a2, 32(sp)
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
	li	t6, 3
	bne	a4, t6, beq_else_9764
	flw	fa0, 0(a2)
	flw	fa1, 24(sp)
	feq	t6, fa0, fa1
	beq	t6, zero, bne_else_9766
	fli	fa0, l_7670
	b	bne_cont_9767
bne_else_9766:
	fsw	fa0, 72(sp)
	call	sgn_2364
	flw	fa1, 72(sp)
	fmul	fa1, fa1, fa1
	fdiv	fa0, fa0, fa1
bne_cont_9767:
	lw	a0, 32(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 4(a0)
	flw	fa1, 24(sp)
	feq	t6, fa0, fa1
	beq	t6, zero, bne_else_9769
	fli	fa0, l_7670
	b	bne_cont_9770
bne_else_9769:
	fsw	fa0, 80(sp)
	call	sgn_2364
	flw	fa1, 80(sp)
	fmul	fa1, fa1, fa1
	fdiv	fa0, fa0, fa1
bne_cont_9770:
	lw	a0, 32(sp)
	fsw	fa0, 4(a0)
	flw	fa0, 8(a0)
	flw	fa1, 24(sp)
	feq	t6, fa0, fa1
	beq	t6, zero, bne_else_9771
	fli	fa0, l_7670
	b	bne_cont_9772
bne_else_9771:
	fsw	fa0, 88(sp)
	call	sgn_2364
	flw	fa1, 88(sp)
	fmul	fa1, fa1, fa1
	fdiv	fa0, fa0, fa1
bne_cont_9772:
	lw	a0, 32(sp)
	fsw	fa0, 8(a0)
	b	beq_cont_9765
beq_else_9764:
	li	t6, 2
	bne	a4, t6, beq_cont_9773
	lw	a1, 40(sp)
	xori	a1, a1, 1	# boolean not
	mv	a0, a2
	call	vecunit_sgn_2385
beq_cont_9773:
beq_cont_9765:
	lw	a0, 20(sp)
	bne	a0, zero, beq_else_9774
	b	beq_cont_9775
beq_else_9774:
	lw	a0, 32(sp)
	lw	a1, 52(sp)
	call	rotate_quadratic_matrix_2487
beq_cont_9775:
	li	a0, 1
read_nth_object_2490_ret:
	lw	ra, 104(sp)
	lw	fp, 100(sp)
	addi	sp, sp, 108
	jr	ra
read_object_2492:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	li	t6, 60
	blt	a0, t6, bge_else_9776
	b	read_object_2492_ret
bge_else_9776:
	sw	s11, 0(sp)
	sw	a2, 4(sp)
	sw	a0, 8(sp)
	mv	s11, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9778
	lw	a0, 4(sp)
	lw	a1, 8(sp)
	sw	a1, 0(a0)
	b	read_object_2492_ret
beq_else_9778:
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
read_object_2492_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
read_net_item_2496:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	sw	a0, 0(sp)
	call	min_caml_read_int
	li	a1, -1
	li	t6, -1
	bne	a0, t6, beq_else_9780
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_net_item_2496_ret
beq_else_9780:
	lw	a1, 0(sp)
	addi	a2, a1, 1
	sw	a0, 4(sp)
	mv	a0, a2
	call	read_net_item_2496
	lw	a1, 0(sp)
	slli	a1, a1, 2
	lw	a2, 4(sp)
	add	t6, a0, a1
	sw	a2, 0(t6)
read_net_item_2496_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
read_or_network_2498:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	li	a1, 0
	sw	a0, 0(sp)
	mv	a0, a1
	call	read_net_item_2496
	mv	a1, a0
	lw	a0, 0(a1)
	li	t6, -1
	bne	a0, t6, beq_else_9781
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_or_network_2498_ret
beq_else_9781:
	lw	a0, 0(sp)
	addi	a2, a0, 1
	sw	a1, 4(sp)
	mv	a0, a2
	call	read_or_network_2498
	lw	a1, 0(sp)
	slli	a1, a1, 2
	lw	a2, 4(sp)
	add	t6, a0, a1
	sw	a2, 0(t6)
read_or_network_2498_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
read_and_network_2500:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a1, 4(s11)
	li	a2, 0
	sw	s11, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	read_net_item_2496
	lw	a1, 0(a0)
	li	t6, -1
	bne	a1, t6, beq_else_9782
	b	read_and_network_2500_ret
beq_else_9782:
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 4(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, 1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
read_and_network_2500_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
read_parameter_2502:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	lw	a0, 20(s11)
	lw	a1, 16(s11)
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	sw	a4, 0(sp)
	sw	a3, 4(sp)
	sw	a1, 8(sp)
	sw	a2, 12(sp)
	mv	s11, a0
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 0
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 0
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 0
	call	read_or_network_2498
	lw	a1, 0(sp)
	sw	a0, 0(a1)
read_parameter_2502_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
solver_rect_surface_2504:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a5, 4(s11)
	slli	a6, a2, 2
	add	t6, a1, a6
	flw	fa3, 0(t6)
	fli	fa4, l_7670
	feq	t6, fa3, fa4
	beq	t6, zero, bne_else_9785
	li	a0, 0
	b	solver_rect_surface_2504_ret
bne_else_9785:
	lw	a6, 24(a0)
	lw	a0, 16(a0)
	slli	a7, a2, 2
	add	t6, a1, a7
	flw	fa3, 0(t6)
	fle	a7, fa4, fa3
	xori	a7, a7, 1	# boolean not
	xor	a6, a6, a7
	slli	a7, a2, 2
	add	t6, a0, a7
	flw	fa3, 0(t6)
	bne	a6, zero, beq_cont_9786
	fneg	fa3, fa3
beq_cont_9786:
	fsub	fa0, fa3, fa0
	slli	a2, a2, 2
	add	t6, a1, a2
	flw	fa3, 0(t6)
	fdiv	fa0, fa0, fa3
	slli	a2, a3, 2
	add	t6, a0, a2
	flw	fa3, 0(t6)
	slli	a2, a3, 2
	add	t6, a1, a2
	flw	fa4, 0(t6)
	fmul	fa4, fa0, fa4
	fadd	fa1, fa4, fa1
	fabs	fa1, fa1
	fle	t6, fa3, fa1
	beq	t6, zero, bne_else_9787
	li	a0, 0
	b	solver_rect_surface_2504_ret
bne_else_9787:
	slli	a2, a4, 2
	add	t6, a0, a2
	flw	fa1, 0(t6)
	slli	a0, a4, 2
	add	t6, a1, a0
	flw	fa3, 0(t6)
	fmul	fa3, fa0, fa3
	fadd	fa2, fa3, fa2
	fabs	fa2, fa2
	fle	t6, fa1, fa2
	beq	t6, zero, bne_else_9788
	li	a0, 0
	b	solver_rect_surface_2504_ret
bne_else_9788:
	fsw	fa0, 0(a5)
	li	a0, 1
solver_rect_surface_2504_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_rect_2513:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	lw	s11, 4(s11)
	li	a2, 0
	li	a3, 1
	li	a4, 2
	fsw	fa0, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa1, 16(sp)
	sw	a1, 24(sp)
	sw	a0, 28(sp)
	sw	s11, 32(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9789
	li	a2, 1
	li	a3, 2
	li	a4, 0
	flw	fa0, 16(sp)
	flw	fa1, 8(sp)
	flw	fa2, 0(sp)
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	lw	s11, 32(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9790
	li	a2, 2
	li	a3, 0
	li	a4, 1
	flw	fa0, 8(sp)
	flw	fa1, 0(sp)
	flw	fa2, 16(sp)
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	lw	s11, 32(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9791
	li	a0, 0
	b	solver_rect_2513_ret
beq_else_9791:
	li	a0, 3
	b	solver_rect_2513_ret
beq_else_9790:
	li	a0, 2
	b	solver_rect_2513_ret
beq_else_9789:
	li	a0, 1
solver_rect_2513_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
solver_surface_2519:
	addi	sp, sp, -60
	sw	ra, 56(sp)
	sw	fp, 52(sp)
	addi	fp, sp, 60
	lw	a2, 4(s11)
	lw	a0, 16(a0)
	sw	a2, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa1, 16(sp)
	fsw	fa0, 24(sp)
	sw	a0, 32(sp)
	mv	t5, a1
	mv	a1, a0
	mv	a0, t5
	call	veciprod_2388
	fli	fa1, l_7670
	fle	t6, fa0, fa1
	beq	t6, zero, bne_else_9793
	li	a0, 0
	b	solver_surface_2519_ret
bne_else_9793:
	flw	fa1, 24(sp)
	flw	fa2, 16(sp)
	flw	fa3, 8(sp)
	lw	a0, 32(sp)
	fsw	fa0, 40(sp)
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	call	veciprod2_2391
	fneg	fa0, fa0
	flw	fa1, 40(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	li	a0, 1
solver_surface_2519_ret:
	lw	ra, 56(sp)
	lw	fp, 52(sp)
	addi	sp, sp, 60
	jr	ra
quadratic_2525:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fmul	fa3, fa0, fa0
	lw	a1, 36(a0)
	lw	a2, 16(a0)
	lw	a0, 12(a0)
	flw	fa4, 0(a2)
	fmul	fa3, fa3, fa4
	fmul	fa4, fa1, fa1
	flw	fa5, 4(a2)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa4, fa2, fa2
	flw	fa5, 8(a2)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	bne	a0, zero, beq_else_9795
	fmv	fa0, fa3
	b	quadratic_2525_ret
beq_else_9795:
	fmul	fa4, fa1, fa2
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa2, fa2, fa0
	flw	fa4, 4(a1)
	fmul	fa2, fa2, fa4
	fadd	fa2, fa3, fa2
	fmul	fa0, fa0, fa1
	flw	fa1, 8(a1)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
quadratic_2525_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
bilinear_2530:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fmul	fa6, fa0, fa3
	lw	a1, 36(a0)
	lw	a2, 16(a0)
	lw	a0, 12(a0)
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa1, fa4
	flw	fs1, 4(a2)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa7, fa2, fa5
	flw	fs1, 8(a2)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	bne	a0, zero, beq_else_9796
	fmv	fa0, fa6
	b	bilinear_2530_ret
beq_else_9796:
	fmul	fa7, fa2, fa4
	fmul	fs1, fa1, fa5
	fadd	fa7, fa7, fs1
	flw	fs1, 0(a1)
	fmul	fa7, fa7, fs1
	fmul	fa5, fa0, fa5
	fmul	fa2, fa2, fa3
	fadd	fa2, fa5, fa2
	flw	fa5, 4(a1)
	fmul	fa2, fa2, fa5
	fadd	fa2, fa7, fa2
	fmul	fa0, fa0, fa4
	fmul	fa1, fa1, fa3
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a1)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
	fli	fa1, l_7782
	fdiv	fa0, fa0, fa1
	fadd	fa0, fa6, fa0
bilinear_2530_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_second_2538:
	addi	sp, sp, -76
	sw	ra, 72(sp)
	sw	fp, 68(sp)
	addi	fp, sp, 76
	lw	a2, 4(s11)
	flw	fa3, 0(a1)
	flw	fa4, 4(a1)
	flw	fa5, 8(a1)
	sw	a2, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa1, 16(sp)
	fsw	fa0, 24(sp)
	sw	a0, 32(sp)
	sw	a1, 36(sp)
	fmv	fa2, fa5
	fmv	fa1, fa4
	fmv	fa0, fa3
	call	quadratic_2525
	fli	fa1, l_7670
	feq	t6, fa0, fa1
	beq	t6, zero, bne_else_9798
	li	a0, 0
	b	solver_second_2538_ret
bne_else_9798:
	lw	a0, 36(sp)
	flw	fa2, 0(a0)
	flw	fa3, 4(a0)
	flw	fa4, 8(a0)
	flw	fa5, 24(sp)
	flw	fa6, 16(sp)
	flw	fa7, 8(sp)
	lw	a0, 32(sp)
	fsw	fa1, 40(sp)
	fsw	fa0, 48(sp)
	fmv	fa1, fa3
	fmv	fa0, fa2
	fmv	fa3, fa5
	fmv	fa2, fa4
	fmv	fa5, fa7
	fmv	fa4, fa6
	call	bilinear_2530
	flw	fa1, 24(sp)
	flw	fa2, 16(sp)
	flw	fa3, 8(sp)
	lw	a0, 32(sp)
	fsw	fa0, 56(sp)
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	call	quadratic_2525
	lw	a0, 32(sp)
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, beq_cont_9799
	fli	fa1, l_7671
	fsub	fa0, fa0, fa1
beq_cont_9799:
	flw	fa1, 56(sp)
	fmul	fa2, fa1, fa1
	flw	fa3, 48(sp)
	fmul	fa0, fa3, fa0
	fsub	fa0, fa2, fa0
	flw	fa2, 40(sp)
	fle	t6, fa0, fa2
	beq	t6, zero, bne_else_9800
	li	a0, 0
	b	solver_second_2538_ret
bne_else_9800:
	fsqrt	fa0, fa0
	bne	a1, zero, beq_cont_9801
	fneg	fa0, fa0
beq_cont_9801:
	fsub	fa0, fa0, fa1
	fdiv	fa0, fa0, fa3
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	li	a0, 1
solver_second_2538_ret:
	lw	ra, 72(sp)
	lw	fp, 68(sp)
	addi	sp, sp, 76
	jr	ra
solver_2544:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a3, 16(s11)
	lw	a4, 12(s11)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	slli	a0, a0, 2
	add	t6, a6, a0
	lw	a0, 0(t6)
	flw	fa0, 0(a2)
	lw	a6, 20(a0)
	lw	a7, 4(a0)
	flw	fa1, 0(a6)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a2)
	flw	fa2, 4(a6)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a2)
	flw	fa3, 8(a6)
	fsub	fa2, fa2, fa3
	li	t6, 1
	bne	a7, t6, beq_else_9802
	mv	s11, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_2544_ret
beq_else_9802:
	li	t6, 2
	bne	a7, t6, beq_else_9803
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_2544_ret
beq_else_9803:
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_2544_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_rect_fast_2548:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a3, 4(s11)
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa0
	flw	fa4, 4(a2)
	fmul	fa3, fa3, fa4
	lw	a0, 16(a0)
	flw	fa4, 4(a0)
	flw	fa5, 4(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa1
	fabs	fa5, fa5
	fle	t6, fa4, fa5
	beq	t6, zero, bne_else_9804
	li	a4, 0
	b	bne_cont_9805
bne_else_9804:
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	t6, fa4, fa5
	beq	t6, zero, bne_else_9806
	li	a4, 0
	b	bne_cont_9807
bne_else_9806:
	flw	fa4, 4(a2)
	fli	fa5, l_7670
	feq	a4, fa4, fa5
	xori	a4, a4, 1	# boolean not
bne_cont_9807:
bne_cont_9805:
	bne	a4, zero, beq_else_9808
	flw	fa3, 8(a2)
	fsub	fa3, fa3, fa1
	flw	fa4, 12(a2)
	fmul	fa3, fa3, fa4
	flw	fa4, 0(a0)
	flw	fa5, 0(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa0
	fabs	fa5, fa5
	fle	t6, fa4, fa5
	beq	t6, zero, bne_else_9809
	li	a4, 0
	b	bne_cont_9810
bne_else_9809:
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	t6, fa4, fa5
	beq	t6, zero, bne_else_9811
	li	a4, 0
	b	bne_cont_9812
bne_else_9811:
	flw	fa4, 12(a2)
	fli	fa5, l_7670
	feq	a4, fa4, fa5
	xori	a4, a4, 1	# boolean not
bne_cont_9812:
bne_cont_9810:
	bne	a4, zero, beq_else_9813
	flw	fa3, 16(a2)
	fsub	fa2, fa3, fa2
	flw	fa3, 20(a2)
	fmul	fa2, fa2, fa3
	flw	fa3, 0(a0)
	flw	fa4, 0(a1)
	fmul	fa4, fa2, fa4
	fadd	fa0, fa4, fa0
	fabs	fa0, fa0
	fle	t6, fa3, fa0
	beq	t6, zero, bne_else_9814
	li	a0, 0
	b	bne_cont_9815
bne_else_9814:
	flw	fa0, 4(a0)
	flw	fa3, 4(a1)
	fmul	fa3, fa2, fa3
	fadd	fa1, fa3, fa1
	fabs	fa1, fa1
	fle	t6, fa0, fa1
	beq	t6, zero, bne_else_9816
	li	a0, 0
	b	bne_cont_9817
bne_else_9816:
	flw	fa0, 20(a2)
	fli	fa1, l_7670
	feq	a0, fa0, fa1
	xori	a0, a0, 1	# boolean not
bne_cont_9817:
bne_cont_9815:
	bne	a0, zero, beq_else_9818
	li	a0, 0
	b	solver_rect_fast_2548_ret
beq_else_9818:
	fsw	fa2, 0(a3)
	li	a0, 3
	b	solver_rect_fast_2548_ret
beq_else_9813:
	fsw	fa3, 0(a3)
	li	a0, 2
	b	solver_rect_fast_2548_ret
beq_else_9808:
	fsw	fa3, 0(a3)
	li	a0, 1
solver_rect_fast_2548_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_surface_fast_2555:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 4(s11)
	fli	fa3, l_7670
	flw	fa4, 0(a1)
	fle	t6, fa3, fa4
	beq	t6, zero, bne_else_9819
	li	a0, 0
	b	solver_surface_fast_2555_ret
bne_else_9819:
	flw	fa3, 4(a1)
	fmul	fa0, fa3, fa0
	flw	fa3, 8(a1)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	li	a0, 1
solver_surface_fast_2555_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_second_fast_2561:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	lw	a2, 4(s11)
	flw	fa3, 0(a1)
	fli	fa4, l_7670
	feq	t6, fa3, fa4
	beq	t6, zero, bne_else_9820
	li	a0, 0
	b	solver_second_fast_2561_ret
bne_else_9820:
	flw	fa5, 4(a1)
	fmul	fa5, fa5, fa0
	flw	fa6, 8(a1)
	fmul	fa6, fa6, fa1
	fadd	fa5, fa5, fa6
	flw	fa6, 12(a1)
	fmul	fa6, fa6, fa2
	fadd	fa5, fa5, fa6
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	fsw	fa4, 8(sp)
	fsw	fa3, 16(sp)
	fsw	fa5, 24(sp)
	sw	a0, 32(sp)
	call	quadratic_2525
	lw	a0, 32(sp)
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, beq_cont_9821
	fli	fa1, l_7671
	fsub	fa0, fa0, fa1
beq_cont_9821:
	flw	fa1, 24(sp)
	fmul	fa2, fa1, fa1
	flw	fa3, 16(sp)
	fmul	fa0, fa3, fa0
	fsub	fa0, fa2, fa0
	flw	fa2, 8(sp)
	fle	t6, fa0, fa2
	beq	t6, zero, bne_else_9822
	li	a0, 0
	b	solver_second_fast_2561_ret
bne_else_9822:
	bne	a1, zero, beq_else_9823
	fsqrt	fa0, fa0
	fsub	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 16(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	b	beq_cont_9824
beq_else_9823:
	fsqrt	fa0, fa0
	fadd	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 16(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
beq_cont_9824:
	li	a0, 1
solver_second_fast_2561_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
solver_fast_2567:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a3, 16(s11)
	lw	a4, 12(s11)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	slli	a7, a0, 2
	add	t6, a6, a7
	lw	a6, 0(t6)
	flw	fa0, 0(a2)
	lw	a7, 20(a6)
	lw	s1, 4(a6)
	flw	fa1, 0(a7)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a2)
	flw	fa2, 4(a7)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a2)
	flw	fa3, 8(a7)
	fsub	fa2, fa2, fa3
	lw	a2, 4(a1)
	lw	a1, 0(a1)
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a2, 0(t6)
	li	t6, 1
	bne	s1, t6, beq_else_9825
	mv	a0, a6
	mv	s11, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast_2567_ret
beq_else_9825:
	li	t6, 2
	bne	s1, t6, beq_else_9826
	mv	a1, a2
	mv	a0, a6
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast_2567_ret
beq_else_9826:
	mv	a1, a2
	mv	a0, a6
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_fast_2567_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_surface_fast2_2571:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 4(s11)
	fli	fa0, l_7670
	flw	fa1, 0(a1)
	fle	t6, fa0, fa1
	beq	t6, zero, bne_else_9827
	li	a0, 0
	b	solver_surface_fast2_2571_ret
bne_else_9827:
	flw	fa0, 0(a1)
	flw	fa1, 12(a2)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	li	a0, 1
solver_surface_fast2_2571_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_second_fast2_2578:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a3, 4(s11)
	flw	fa3, 0(a1)
	fli	fa4, l_7670
	feq	t6, fa3, fa4
	beq	t6, zero, bne_else_9828
	li	a0, 0
	b	solver_second_fast2_2578_ret
bne_else_9828:
	flw	fa5, 4(a1)
	fmul	fa0, fa5, fa0
	flw	fa5, 8(a1)
	fmul	fa1, fa5, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a2)
	fmul	fa2, fa0, fa0
	fmul	fa1, fa3, fa1
	fsub	fa1, fa2, fa1
	fle	t6, fa1, fa4
	beq	t6, zero, bne_else_9829
	li	a0, 0
	b	solver_second_fast2_2578_ret
bne_else_9829:
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_9830
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3)
	b	beq_cont_9831
beq_else_9830:
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3)
beq_cont_9831:
	li	a0, 1
solver_second_fast2_2578_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_fast2_2585:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a2, 16(s11)
	lw	a3, 12(s11)
	lw	a4, 8(s11)
	lw	a5, 4(s11)
	slli	a6, a0, 2
	add	t6, a5, a6
	lw	a5, 0(t6)
	lw	a6, 40(a5)
	lw	a7, 4(a5)
	flw	fa0, 0(a6)
	flw	fa1, 4(a6)
	flw	fa2, 8(a6)
	lw	s1, 4(a1)
	lw	a1, 0(a1)
	slli	a0, a0, 2
	add	t6, s1, a0
	lw	a0, 0(t6)
	li	t6, 1
	bne	a7, t6, beq_else_9832
	mv	a2, a0
	mv	s11, a4
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast2_2585_ret
beq_else_9832:
	li	t6, 2
	bne	a7, t6, beq_else_9833
	mv	a1, a0
	mv	s11, a2
	mv	a2, a6
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast2_2585_ret
beq_else_9833:
	mv	a2, a6
	mv	a1, a0
	mv	s11, a3
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_fast2_2585_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
setup_rect_table_2588:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	fp, 24(sp)
	addi	fp, sp, 32
	li	a2, 6
	fli	fa0, l_7670
	sw	a1, 0(sp)
	fsw	fa0, 8(sp)
	sw	a0, 16(sp)
	mv	a0, a2
	call	min_caml_create_array
	lw	a1, 16(sp)
	flw	fa0, 0(a1)
	flw	fa1, 8(sp)
	feq	t6, fa0, fa1
	beq	t6, zero, bne_else_9835
	fsw	fa1, 4(a0)
	b	bne_cont_9836
bne_else_9835:
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a4, 16(a2)
	flw	fa0, 0(a1)
	fle	a5, fa1, fa0
	xori	a5, a5, 1	# boolean not
	xor	a3, a3, a5
	flw	fa0, 0(a4)
	bne	a3, zero, beq_cont_9837
	fneg	fa0, fa0
beq_cont_9837:
	fsw	fa0, 0(a0)
	fli	fa0, l_7671
	flw	fa2, 0(a1)
	fdiv	fa0, fa0, fa2
	fsw	fa0, 4(a0)
bne_cont_9836:
	flw	fa0, 4(a1)
	feq	t6, fa0, fa1
	beq	t6, zero, bne_else_9838
	fsw	fa1, 12(a0)
	b	bne_cont_9839
bne_else_9838:
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a4, 16(a2)
	flw	fa0, 4(a1)
	fle	a5, fa1, fa0
	xori	a5, a5, 1	# boolean not
	xor	a3, a3, a5
	flw	fa0, 4(a4)
	bne	a3, zero, beq_cont_9840
	fneg	fa0, fa0
beq_cont_9840:
	fsw	fa0, 8(a0)
	fli	fa0, l_7671
	flw	fa2, 4(a1)
	fdiv	fa0, fa0, fa2
	fsw	fa0, 12(a0)
bne_cont_9839:
	flw	fa0, 8(a1)
	feq	t6, fa0, fa1
	beq	t6, zero, bne_else_9841
	fsw	fa1, 20(a0)
	b	bne_cont_9842
bne_else_9841:
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a2, 16(a2)
	flw	fa0, 8(a1)
	fle	a4, fa1, fa0
	xori	a4, a4, 1	# boolean not
	xor	a3, a3, a4
	flw	fa0, 8(a2)
	bne	a3, zero, beq_cont_9843
	fneg	fa0, fa0
beq_cont_9843:
	fsw	fa0, 16(a0)
	fli	fa0, l_7671
	flw	fa1, 8(a1)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 20(a0)
bne_cont_9842:
setup_rect_table_2588_ret:
	lw	ra, 28(sp)
	lw	fp, 24(sp)
	addi	sp, sp, 32
	jr	ra
setup_surface_table_2591:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	li	a2, 4
	fli	fa0, l_7670
	fsw	fa0, 0(sp)
	sw	a1, 8(sp)
	sw	a0, 12(sp)
	mv	a0, a2
	call	min_caml_create_array
	lw	a1, 12(sp)
	flw	fa0, 0(a1)
	lw	a2, 8(sp)
	lw	a2, 16(a2)
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a1)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 0(sp)
	fle	t6, fa0, fa1
	beq	t6, zero, bne_else_9844
	fsw	fa1, 0(a0)
	b	bne_cont_9845
bne_else_9844:
	fli	fa1, l_7672
	fdiv	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 0(a2)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 4(a0)
	flw	fa1, 4(a2)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 8(a0)
	flw	fa1, 8(a2)
	fdiv	fa0, fa1, fa0
	fneg	fa0, fa0
	fsw	fa0, 12(a0)
bne_cont_9845:
setup_surface_table_2591_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
setup_second_table_2594:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	fp, 24(sp)
	addi	fp, sp, 32
	li	a2, 5
	fli	fa0, l_7670
	fsw	fa0, 0(sp)
	sw	a1, 8(sp)
	sw	a0, 12(sp)
	mv	a0, a2
	call	min_caml_create_array
	lw	a1, 12(sp)
	flw	fa0, 0(a1)
	flw	fa1, 4(a1)
	flw	fa2, 8(a1)
	lw	a2, 8(sp)
	sw	a0, 16(sp)
	mv	a0, a2
	call	quadratic_2525
	lw	a0, 12(sp)
	flw	fa1, 0(a0)
	lw	a1, 8(sp)
	lw	a2, 36(a1)
	lw	a3, 16(a1)
	lw	a1, 12(a1)
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fneg	fa1, fa1
	flw	fa2, 4(a0)
	flw	fa3, 4(a3)
	fmul	fa2, fa2, fa3
	fneg	fa2, fa2
	flw	fa3, 8(a0)
	flw	fa4, 8(a3)
	fmul	fa3, fa3, fa4
	fneg	fa3, fa3
	lw	a3, 16(sp)
	fsw	fa0, 0(a3)
	bne	a1, zero, beq_else_9846
	fsw	fa1, 4(a3)
	fsw	fa2, 8(a3)
	fsw	fa3, 12(a3)
	b	beq_cont_9847
beq_else_9846:
	flw	fa4, 8(a0)
	flw	fa5, 4(a2)
	fmul	fa4, fa4, fa5
	flw	fa5, 4(a0)
	flw	fa6, 8(a2)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	fli	fa5, l_7782
	fdiv	fa4, fa4, fa5
	fsub	fa1, fa1, fa4
	fsw	fa1, 4(a3)
	flw	fa1, 8(a0)
	flw	fa4, 0(a2)
	fmul	fa1, fa1, fa4
	flw	fa4, 0(a0)
	flw	fa6, 8(a2)
	fmul	fa4, fa4, fa6
	fadd	fa1, fa1, fa4
	fdiv	fa1, fa1, fa5
	fsub	fa1, fa2, fa1
	fsw	fa1, 8(a3)
	flw	fa1, 4(a0)
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	flw	fa2, 0(a0)
	flw	fa4, 4(a2)
	fmul	fa2, fa2, fa4
	fadd	fa1, fa1, fa2
	fdiv	fa1, fa1, fa5
	fsub	fa1, fa3, fa1
	fsw	fa1, 12(a3)
beq_cont_9847:
	flw	fa1, 0(sp)
	feq	t6, fa0, fa1
	beq	t6, zero, bne_else_9848
	b	bne_cont_9849
bne_else_9848:
	fli	fa1, l_7671
	fdiv	fa0, fa1, fa0
	fsw	fa0, 16(a3)
bne_cont_9849:
	mv	a0, a3
setup_second_table_2594_ret:
	lw	ra, 28(sp)
	lw	fp, 24(sp)
	addi	sp, sp, 32
	jr	ra
iter_setup_dirvec_constants_2597:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	lw	a2, 4(s11)
	blt	a1, zero, iter_setup_dirvec_constants_2597_ret
	slli	a3, a1, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	li	t6, 1
	bne	a5, t6, beq_else_9850
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_rect_table_2588
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont_9851
beq_else_9850:
	li	t6, 2
	bne	a5, t6, beq_else_9852
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_surface_table_2591
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont_9853
beq_else_9852:
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_second_table_2594
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
beq_cont_9853:
beq_cont_9851:
	addi	a1, a1, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
iter_setup_dirvec_constants_2597_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
setup_dirvec_constants_2600:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a1, 8(s11)
	lw	s11, 4(s11)
	lw	a1, 0(a1)
	addi	a1, a1, -1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
setup_dirvec_constants_2600_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
setup_startp_constants_2602:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	fp, 24(sp)
	addi	fp, sp, 32
	lw	a2, 4(s11)
	blt	a1, zero, setup_startp_constants_2602_ret
	slli	a3, a1, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	lw	a3, 40(a2)
	lw	a4, 20(a2)
	lw	a5, 16(a2)
	lw	a6, 4(a2)
	flw	fa0, 0(a0)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	fsw	fa0, 0(a3)
	flw	fa0, 4(a0)
	flw	fa1, 4(a4)
	fsub	fa0, fa0, fa1
	fsw	fa0, 4(a3)
	flw	fa0, 8(a0)
	flw	fa1, 8(a4)
	fsub	fa0, fa0, fa1
	fsw	fa0, 8(a3)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	li	t6, 2
	bne	a6, t6, beq_else_9854
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	sw	a3, 12(sp)
	mv	a0, a5
	call	veciprod2_2391
	lw	a0, 12(sp)
	fsw	fa0, 12(a0)
	b	beq_cont_9855
beq_else_9854:
	li	t6, 2
	bgt	a6, t6, ble_else_9856
	b	ble_cont_9857
ble_else_9856:
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	sw	a3, 12(sp)
	sw	a6, 16(sp)
	mv	a0, a2
	call	quadratic_2525
	lw	a0, 16(sp)
	li	t6, 3
	bne	a0, t6, beq_cont_9858
	fli	fa1, l_7671
	fsub	fa0, fa0, fa1
beq_cont_9858:
	lw	a0, 12(sp)
	fsw	fa0, 12(a0)
ble_cont_9857:
beq_cont_9855:
	lw	a0, 8(sp)
	addi	a1, a0, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
setup_startp_constants_2602_ret:
	lw	ra, 28(sp)
	lw	fp, 24(sp)
	addi	sp, sp, 32
	jr	ra
setup_startp_2605:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	sw	a0, 0(sp)
	sw	a2, 4(sp)
	sw	a3, 8(sp)
	mv	t5, a1
	mv	a1, a0
	mv	a0, t5
	call	veccpy_2382
	lw	a0, 8(sp)
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
setup_startp_2605_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
is_rect_outside_2607:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a1, 24(a0)
	lw	a0, 16(a0)
	flw	fa3, 0(a0)
	fabs	fa0, fa0
	fle	t6, fa3, fa0
	beq	t6, zero, bne_else_9859
	li	a0, 0
	b	bne_cont_9860
bne_else_9859:
	flw	fa0, 4(a0)
	fabs	fa1, fa1
	fle	t6, fa0, fa1
	beq	t6, zero, bne_else_9861
	li	a0, 0
	b	bne_cont_9862
bne_else_9861:
	flw	fa0, 8(a0)
	fabs	fa1, fa2
	fle	a0, fa0, fa1
	xori	a0, a0, 1	# boolean not
bne_cont_9862:
bne_cont_9860:
	bne	a0, zero, beq_else_9863
	xori	a0, a1, 1	# boolean not
	b	is_rect_outside_2607_ret
beq_else_9863:
	mv	a0, a1
is_rect_outside_2607_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
is_plane_outside_2612:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	lw	a1, 24(a0)
	lw	a0, 16(a0)
	sw	a1, 0(sp)
	call	veciprod2_2391
	fli	fa1, l_7670
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	lw	a1, 0(sp)
	xor	a0, a1, a0
	xori	a0, a0, 1	# boolean not
is_plane_outside_2612_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
is_second_outside_2617:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	sw	a0, 0(sp)
	call	quadratic_2525
	lw	a0, 0(sp)
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, beq_cont_9864
	fli	fa1, l_7671
	fsub	fa0, fa0, fa1
beq_cont_9864:
	fli	fa1, l_7670
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	xor	a0, a1, a0
	xori	a0, a0, 1	# boolean not
is_second_outside_2617_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
is_outside_2622:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a1, 20(a0)
	lw	a2, 4(a0)
	flw	fa3, 0(a1)
	fsub	fa0, fa0, fa3
	flw	fa3, 4(a1)
	fsub	fa1, fa1, fa3
	flw	fa3, 8(a1)
	fsub	fa2, fa2, fa3
	li	t6, 1
	bne	a2, t6, beq_else_9865
	call	is_rect_outside_2607
	b	is_outside_2622_ret
beq_else_9865:
	li	t6, 2
	bne	a2, t6, beq_else_9866
	call	is_plane_outside_2612
	b	is_outside_2622_ret
beq_else_9866:
	call	is_second_outside_2617
is_outside_2622_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
check_all_inside_2627:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	lw	a2, 4(s11)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	li	t6, -1
	bne	a3, t6, beq_else_9867
	li	a0, 1
	b	check_all_inside_2627_ret
beq_else_9867:
	slli	a3, a3, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	fsw	fa2, 0(sp)
	fsw	fa1, 8(sp)
	fsw	fa0, 16(sp)
	sw	a1, 24(sp)
	sw	s11, 28(sp)
	sw	a0, 32(sp)
	mv	a0, a2
	call	is_outside_2622
	bne	a0, zero, beq_else_9868
	lw	a0, 32(sp)
	addi	a0, a0, 1
	flw	fa0, 16(sp)
	flw	fa1, 8(sp)
	flw	fa2, 0(sp)
	lw	a1, 24(sp)
	lw	s11, 28(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	check_all_inside_2627_ret
beq_else_9868:
	li	a0, 0
check_all_inside_2627_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
shadow_check_and_group_2633:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	lw	a2, 28(s11)
	lw	a3, 24(s11)
	lw	a4, 20(s11)
	lw	a5, 16(s11)
	lw	a6, 12(s11)
	lw	a7, 8(s11)
	lw	s1, 4(s11)
	slli	s2, a0, 2
	add	t6, a1, s2
	lw	s2, 0(t6)
	li	t6, -1
	bne	s2, t6, beq_else_9869
	li	a0, 0
	b	shadow_check_and_group_2633_ret
beq_else_9869:
	slli	s2, a0, 2
	add	t6, a1, s2
	lw	s2, 0(t6)
	sw	s1, 0(sp)
	sw	a7, 4(sp)
	sw	a6, 8(sp)
	sw	a1, 12(sp)
	sw	s11, 16(sp)
	sw	a0, 20(sp)
	sw	a4, 24(sp)
	sw	s2, 28(sp)
	sw	a3, 32(sp)
	mv	a1, a5
	mv	a0, s2
	mv	s11, a2
	mv	a2, a7
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a1, 32(sp)
	flw	fa0, 0(a1)
	bne	a0, zero, beq_else_9870
	li	a0, 0
	b	beq_cont_9871
beq_else_9870:
	fli	fa1, l_8024
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
beq_cont_9871:
	bne	a0, zero, beq_else_9872
	lw	a0, 28(sp)
	slli	a0, a0, 2
	lw	a1, 24(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_9873
	li	a0, 0
	b	shadow_check_and_group_2633_ret
beq_else_9873:
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_and_group_2633_ret
beq_else_9872:
	fli	fa1, l_8025
	fadd	fa0, fa0, fa1
	lw	a0, 8(sp)
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a1, 4(sp)
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a0)
	fmul	fa2, fa2, fa0
	flw	fa3, 4(a1)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a0)
	fmul	fa0, fa3, fa0
	flw	fa3, 8(a1)
	fadd	fa0, fa0, fa3
	li	a0, 0
	lw	a1, 12(sp)
	lw	s11, 0(sp)
	fmv	ft11, fa2
	fmv	fa2, fa0
	fmv	fa0, fa1
	fmv	fa1, ft11
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9874
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_and_group_2633_ret
beq_else_9874:
	li	a0, 1
shadow_check_and_group_2633_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
shadow_check_one_or_group_2636:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	slli	a4, a0, 2
	add	t6, a1, a4
	lw	a4, 0(t6)
	li	t6, -1
	bne	a4, t6, beq_else_9875
	li	a0, 0
	b	shadow_check_one_or_group_2636_ret
beq_else_9875:
	slli	a4, a4, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	li	a4, 0
	sw	a1, 0(sp)
	sw	s11, 4(sp)
	sw	a0, 8(sp)
	mv	a1, a3
	mv	a0, a4
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9876
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_group_2636_ret
beq_else_9876:
	li	a0, 1
shadow_check_one_or_group_2636_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
shadow_check_one_or_matrix_2639:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	lw	a2, 20(s11)
	lw	a3, 16(s11)
	lw	a4, 12(s11)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	slli	a7, a0, 2
	add	t6, a1, a7
	lw	a7, 0(t6)
	lw	s1, 0(a7)
	li	t6, -1
	bne	s1, t6, beq_else_9877
	li	a0, 0
	b	shadow_check_one_or_matrix_2639_ret
beq_else_9877:
	sw	a7, 0(sp)
	sw	a4, 4(sp)
	sw	a1, 8(sp)
	sw	s11, 12(sp)
	sw	a0, 16(sp)
	li	t6, 99
	bne	s1, t6, beq_else_9878
	li	a0, 1
	b	beq_cont_9879
beq_else_9878:
	sw	a3, 20(sp)
	mv	a1, a5
	mv	a0, s1
	mv	s11, a2
	mv	a2, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9880
	li	a0, 0
	b	beq_cont_9881
beq_else_9880:
	fli	fa0, l_8037
	lw	a0, 20(sp)
	flw	fa1, 0(a0)
	fle	t6, fa0, fa1
	beq	t6, zero, bne_else_9882
	li	a0, 0
	b	bne_cont_9883
bne_else_9882:
	li	a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9884
	li	a0, 0
	b	beq_cont_9885
beq_else_9884:
	li	a0, 1
beq_cont_9885:
bne_cont_9883:
beq_cont_9881:
beq_cont_9879:
	bne	a0, zero, beq_else_9886
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix_2639_ret
beq_else_9886:
	li	a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9887
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix_2639_ret
beq_else_9887:
	li	a0, 1
shadow_check_one_or_matrix_2639_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
solve_each_element_2642:
	addi	sp, sp, -100
	sw	ra, 96(sp)
	sw	fp, 92(sp)
	addi	fp, sp, 100
	lw	a3, 36(s11)
	lw	a4, 32(s11)
	lw	a5, 28(s11)
	lw	a6, 24(s11)
	lw	a7, 20(s11)
	lw	s1, 16(s11)
	lw	s2, 12(s11)
	lw	s3, 8(s11)
	lw	s4, 4(s11)
	slli	s5, a0, 2
	add	t6, a1, s5
	lw	s5, 0(t6)
	li	t6, -1
	bne	s5, t6, beq_else_9888
	b	solve_each_element_2642_ret
beq_else_9888:
	sw	s1, 0(sp)
	sw	s3, 4(sp)
	sw	s2, 8(sp)
	sw	s4, 12(sp)
	sw	a4, 16(sp)
	sw	a3, 20(sp)
	sw	a5, 24(sp)
	sw	a2, 28(sp)
	sw	a1, 32(sp)
	sw	s11, 36(sp)
	sw	a0, 40(sp)
	sw	a7, 44(sp)
	sw	s5, 48(sp)
	mv	a1, a2
	mv	a0, s5
	mv	s11, a6
	mv	a2, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9890
	lw	a0, 48(sp)
	slli	a0, a0, 2
	lw	a1, 44(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_9891
	b	solve_each_element_2642_ret
beq_else_9891:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solve_each_element_2642_ret
beq_else_9890:
	lw	a1, 24(sp)
	flw	fa0, 0(a1)
	fli	fa1, l_7670
	fle	t6, fa0, fa1
	beq	t6, zero, bne_else_9893
	b	bne_cont_9894
bne_else_9893:
	lw	a1, 20(sp)
	flw	fa1, 0(a1)
	fle	t6, fa1, fa0
	beq	t6, zero, bne_else_9895
	b	bne_cont_9896
bne_else_9895:
	fli	fa1, l_8025
	fadd	fa0, fa0, fa1
	lw	a2, 28(sp)
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	lw	a3, 16(sp)
	flw	fa2, 0(a3)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a2)
	fmul	fa2, fa2, fa0
	flw	fa3, 4(a3)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a2)
	fmul	fa3, fa3, fa0
	flw	fa4, 8(a3)
	fadd	fa3, fa3, fa4
	li	a3, 0
	lw	a4, 32(sp)
	lw	s11, 12(sp)
	sw	a0, 52(sp)
	fsw	fa3, 56(sp)
	fsw	fa2, 64(sp)
	fsw	fa1, 72(sp)
	fsw	fa0, 80(sp)
	mv	a1, a4
	mv	a0, a3
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9897
	b	beq_cont_9898
beq_else_9897:
	lw	a0, 20(sp)
	flw	fa0, 80(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 72(sp)
	flw	fa1, 64(sp)
	flw	fa2, 56(sp)
	lw	a0, 8(sp)
	call	vecset_2372
	lw	a0, 4(sp)
	lw	a1, 48(sp)
	sw	a1, 0(a0)
	lw	a0, 0(sp)
	lw	a1, 52(sp)
	sw	a1, 0(a0)
beq_cont_9898:
bne_cont_9896:
bne_cont_9894:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solve_each_element_2642_ret:
	lw	ra, 96(sp)
	lw	fp, 92(sp)
	addi	sp, sp, 100
	jr	ra
solve_one_or_network_2646:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	slli	a5, a0, 2
	add	t6, a1, a5
	lw	a5, 0(t6)
	li	t6, -1
	bne	a5, t6, beq_else_9899
	b	solve_one_or_network_2646_ret
beq_else_9899:
	slli	a5, a5, 2
	add	t6, a4, a5
	lw	a4, 0(t6)
	li	a5, 0
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	mv	a1, a4
	mv	a0, a5
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solve_one_or_network_2646_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
trace_or_matrix_2650:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a3, 20(s11)
	lw	a4, 16(s11)
	lw	a5, 12(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	slli	s1, a0, 2
	add	t6, a1, s1
	lw	s1, 0(t6)
	lw	s2, 0(s1)
	li	t6, -1
	bne	s2, t6, beq_else_9901
	b	trace_or_matrix_2650_ret
beq_else_9901:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	li	t6, 99
	bne	s2, t6, beq_else_9903
	li	a3, 1
	mv	a1, s1
	mv	a0, a3
	mv	s11, a7
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_9904
beq_else_9903:
	sw	s1, 16(sp)
	sw	a7, 20(sp)
	sw	a3, 24(sp)
	sw	a5, 28(sp)
	mv	a1, a2
	mv	a0, s2
	mv	s11, a6
	mv	a2, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9905
	b	beq_cont_9906
beq_else_9905:
	lw	a0, 28(sp)
	flw	fa0, 0(a0)
	lw	a0, 24(sp)
	flw	fa1, 0(a0)
	fle	t6, fa1, fa0
	beq	t6, zero, bne_else_9907
	b	bne_cont_9908
bne_else_9907:
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bne_cont_9908:
beq_cont_9906:
beq_cont_9904:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_or_matrix_2650_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
judge_intersection_2654:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	fli	fa0, l_8058
	fsw	fa0, 0(a2)
	li	a4, 0
	lw	a3, 0(a3)
	sw	a2, 0(sp)
	mv	a2, a0
	mv	s11, a1
	mv	a1, a3
	mv	a0, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 0(sp)
	flw	fa0, 0(a0)
	fli	fa1, l_8037
	fle	t6, fa0, fa1
	beq	t6, zero, bne_else_9909
	li	a0, 0
	b	judge_intersection_2654_ret
bne_else_9909:
	fli	fa1, l_8062
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
judge_intersection_2654_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
solve_each_element_fast_2656:
	addi	sp, sp, -108
	sw	ra, 104(sp)
	sw	fp, 100(sp)
	addi	fp, sp, 108
	lw	a3, 36(s11)
	lw	a4, 32(s11)
	lw	a5, 28(s11)
	lw	a6, 24(s11)
	lw	a7, 20(s11)
	lw	s1, 16(s11)
	lw	s2, 12(s11)
	lw	s3, 8(s11)
	lw	s4, 4(s11)
	lw	s5, 0(a2)
	slli	s6, a0, 2
	add	t6, a1, s6
	lw	s6, 0(t6)
	li	t6, -1
	bne	s6, t6, beq_else_9910
	b	solve_each_element_fast_2656_ret
beq_else_9910:
	sw	s1, 0(sp)
	sw	s3, 4(sp)
	sw	s2, 8(sp)
	sw	s4, 12(sp)
	sw	a4, 16(sp)
	sw	s5, 20(sp)
	sw	a3, 24(sp)
	sw	a6, 28(sp)
	sw	a2, 32(sp)
	sw	a1, 36(sp)
	sw	s11, 40(sp)
	sw	a0, 44(sp)
	sw	a7, 48(sp)
	sw	s6, 52(sp)
	mv	a1, a2
	mv	a0, s6
	mv	s11, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9912
	lw	a0, 52(sp)
	slli	a0, a0, 2
	lw	a1, 48(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_9913
	b	solve_each_element_fast_2656_ret
beq_else_9913:
	lw	a0, 44(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solve_each_element_fast_2656_ret
beq_else_9912:
	lw	a1, 28(sp)
	flw	fa0, 0(a1)
	fli	fa1, l_7670
	fle	t6, fa0, fa1
	beq	t6, zero, bne_else_9915
	b	bne_cont_9916
bne_else_9915:
	lw	a1, 24(sp)
	flw	fa1, 0(a1)
	fle	t6, fa1, fa0
	beq	t6, zero, bne_else_9917
	b	bne_cont_9918
bne_else_9917:
	fli	fa1, l_8025
	fadd	fa0, fa0, fa1
	lw	a2, 20(sp)
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	lw	a3, 16(sp)
	flw	fa2, 0(a3)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a2)
	fmul	fa2, fa2, fa0
	flw	fa3, 4(a3)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a2)
	fmul	fa3, fa3, fa0
	flw	fa4, 8(a3)
	fadd	fa3, fa3, fa4
	li	a2, 0
	lw	a3, 36(sp)
	lw	s11, 12(sp)
	sw	a0, 56(sp)
	fsw	fa3, 64(sp)
	fsw	fa2, 72(sp)
	fsw	fa1, 80(sp)
	fsw	fa0, 88(sp)
	mv	a1, a3
	mv	a0, a2
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9920
	b	beq_cont_9921
beq_else_9920:
	lw	a0, 24(sp)
	flw	fa0, 88(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 80(sp)
	flw	fa1, 72(sp)
	flw	fa2, 64(sp)
	lw	a0, 8(sp)
	call	vecset_2372
	lw	a0, 4(sp)
	lw	a1, 52(sp)
	sw	a1, 0(a0)
	lw	a0, 0(sp)
	lw	a1, 56(sp)
	sw	a1, 0(a0)
beq_cont_9921:
bne_cont_9918:
bne_cont_9916:
	lw	a0, 44(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solve_each_element_fast_2656_ret:
	lw	ra, 104(sp)
	lw	fp, 100(sp)
	addi	sp, sp, 108
	jr	ra
solve_one_or_network_fast_2660:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	slli	a5, a0, 2
	add	t6, a1, a5
	lw	a5, 0(t6)
	li	t6, -1
	bne	a5, t6, beq_else_9922
	b	solve_one_or_network_fast_2660_ret
beq_else_9922:
	slli	a5, a5, 2
	add	t6, a4, a5
	lw	a4, 0(t6)
	li	a5, 0
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	mv	a1, a4
	mv	a0, a5
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solve_one_or_network_fast_2660_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
trace_or_matrix_fast_2664:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a3, 16(s11)
	lw	a4, 12(s11)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	slli	a7, a0, 2
	add	t6, a1, a7
	lw	a7, 0(t6)
	lw	s1, 0(a7)
	li	t6, -1
	bne	s1, t6, beq_else_9924
	b	trace_or_matrix_fast_2664_ret
beq_else_9924:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	li	t6, 99
	bne	s1, t6, beq_else_9926
	li	a3, 1
	mv	a1, a7
	mv	a0, a3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_9927
beq_else_9926:
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a3, 24(sp)
	sw	a5, 28(sp)
	mv	a1, a2
	mv	a0, s1
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9928
	b	beq_cont_9929
beq_else_9928:
	lw	a0, 28(sp)
	flw	fa0, 0(a0)
	lw	a0, 24(sp)
	flw	fa1, 0(a0)
	fle	t6, fa1, fa0
	beq	t6, zero, bne_else_9930
	b	bne_cont_9931
bne_else_9930:
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bne_cont_9931:
beq_cont_9929:
beq_cont_9927:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_or_matrix_fast_2664_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
judge_intersection_fast_2668:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	fli	fa0, l_8058
	fsw	fa0, 0(a2)
	li	a4, 0
	lw	a3, 0(a3)
	sw	a2, 0(sp)
	mv	a2, a0
	mv	s11, a1
	mv	a1, a3
	mv	a0, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 0(sp)
	flw	fa0, 0(a0)
	fli	fa1, l_8037
	fle	t6, fa0, fa1
	beq	t6, zero, bne_else_9932
	li	a0, 0
	b	judge_intersection_fast_2668_ret
bne_else_9932:
	fli	fa1, l_8062
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
judge_intersection_fast_2668_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
get_nvector_rect_2670:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	lw	a2, 0(a2)
	fli	fa0, l_7670
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	mv	a0, a1
	call	vecfill_2377
	lw	a0, 8(sp)
	addi	a0, a0, -1
	slli	a1, a0, 2
	lw	a2, 4(sp)
	add	t6, a2, a1
	flw	fa0, 0(t6)
	sw	a0, 12(sp)
	call	sgn_2364
	fneg	fa0, fa0
	lw	a0, 12(sp)
	slli	a0, a0, 2
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
get_nvector_rect_2670_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
get_nvector_plane_2672:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a1, 4(s11)
	lw	a0, 16(a0)
	flw	fa0, 0(a0)
	fneg	fa0, fa0
	fsw	fa0, 0(a1)
	flw	fa0, 4(a0)
	fneg	fa0, fa0
	fsw	fa0, 4(a1)
	flw	fa0, 8(a0)
	fneg	fa0, fa0
	fsw	fa0, 8(a1)
get_nvector_plane_2672_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
get_nvector_second_2674:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	flw	fa0, 0(a2)
	lw	a3, 36(a0)
	lw	a4, 24(a0)
	lw	a5, 20(a0)
	lw	a6, 16(a0)
	lw	a0, 12(a0)
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a2)
	flw	fa2, 4(a5)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a2)
	flw	fa3, 8(a5)
	fsub	fa2, fa2, fa3
	flw	fa3, 0(a6)
	fmul	fa3, fa0, fa3
	flw	fa4, 4(a6)
	fmul	fa4, fa1, fa4
	flw	fa5, 8(a6)
	fmul	fa5, fa2, fa5
	bne	a0, zero, beq_else_9935
	fsw	fa3, 0(a1)
	fsw	fa4, 4(a1)
	fsw	fa5, 8(a1)
	b	beq_cont_9936
beq_else_9935:
	flw	fa6, 8(a3)
	fmul	fa6, fa1, fa6
	flw	fa7, 4(a3)
	fmul	fa7, fa2, fa7
	fadd	fa6, fa6, fa7
	fli	fa7, l_7782
	fdiv	fa6, fa6, fa7
	fadd	fa3, fa3, fa6
	fsw	fa3, 0(a1)
	flw	fa3, 8(a3)
	fmul	fa3, fa0, fa3
	flw	fa6, 0(a3)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa3, fa2
	fdiv	fa2, fa2, fa7
	fadd	fa2, fa4, fa2
	fsw	fa2, 4(a1)
	flw	fa2, 4(a3)
	fmul	fa0, fa0, fa2
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fdiv	fa0, fa0, fa7
	fadd	fa0, fa5, fa0
	fsw	fa0, 8(a1)
beq_cont_9936:
	mv	a0, a1
	mv	a1, a4
	call	vecunit_sgn_2385
get_nvector_second_2674_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
get_nvector_2676:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	s11, 4(s11)
	lw	a4, 4(a0)
	li	t6, 1
	bne	a4, t6, beq_else_9937
	mv	a0, a1
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	get_nvector_2676_ret
beq_else_9937:
	li	t6, 2
	bne	a4, t6, beq_else_9938
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	get_nvector_2676_ret
beq_else_9938:
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
get_nvector_2676_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
utexture_2679:
	addi	sp, sp, -164
	sw	ra, 160(sp)
	sw	fp, 156(sp)
	addi	fp, sp, 164
	lw	a2, 4(s11)
	lw	a3, 32(a0)
	lw	a4, 20(a0)
	lw	a5, 16(a0)
	lw	a0, 0(a0)
	flw	fa0, 0(a3)
	fsw	fa0, 0(a2)
	flw	fa0, 4(a3)
	fsw	fa0, 4(a2)
	flw	fa0, 8(a3)
	fsw	fa0, 8(a2)
	li	t6, 1
	bne	a0, t6, beq_else_9939
	flw	fa0, 0(a1)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	fli	fa1, l_8153
	fmul	fa2, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa1, 8(sp)
	sw	a4, 16(sp)
	sw	a1, 20(sp)
	fsw	fa0, 24(sp)
	fmv	fa0, fa2
	call	min_caml_floor
	fli	fa1, l_8154
	fmul	fa0, fa0, fa1
	fli	fa2, l_8143
	flw	fa3, 24(sp)
	fsub	fa0, fa3, fa0
	fle	a0, fa2, fa0
	xori	a0, a0, 1	# boolean not
	lw	a1, 20(sp)
	flw	fa0, 8(a1)
	lw	a1, 16(sp)
	flw	fa3, 8(a1)
	fsub	fa0, fa0, fa3
	flw	fa3, 8(sp)
	fmul	fa3, fa0, fa3
	sw	a0, 32(sp)
	fsw	fa2, 40(sp)
	fsw	fa0, 48(sp)
	fsw	fa1, 56(sp)
	fmv	fa0, fa3
	call	min_caml_floor
	flw	fa1, 56(sp)
	fmul	fa0, fa0, fa1
	flw	fa1, 48(sp)
	fsub	fa0, fa1, fa0
	flw	fa1, 40(sp)
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	lw	a1, 32(sp)
	bne	a1, zero, beq_else_9942
	bne	a0, zero, beq_else_9944
	fli	fa0, l_8136
	b	beq_cont_9945
beq_else_9944:
	fli	fa0, l_7670
beq_cont_9945:
	b	beq_cont_9943
beq_else_9942:
	bne	a0, zero, beq_else_9946
	fli	fa0, l_7670
	b	beq_cont_9947
beq_else_9946:
	fli	fa0, l_8136
beq_cont_9947:
beq_cont_9943:
	lw	a0, 0(sp)
	fsw	fa0, 4(a0)
	b	utexture_2679_ret
beq_else_9939:
	li	t6, 2
	bne	a0, t6, beq_else_9949
	flw	fa0, 4(a1)
	fli	fa1, l_8147
	fmul	fa0, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa1, 64(sp)
	sw	a1, 20(sp)
	call	min_caml_sin
	lw	a0, 20(sp)
	flw	fa1, 4(a0)
	flw	fa2, 64(sp)
	fmul	fa1, fa1, fa2
	fsw	fa0, 72(sp)
	fmv	fa0, fa1
	call	min_caml_sin
	flw	fa1, 72(sp)
	fmul	fa0, fa1, fa0
	fli	fa1, l_8136
	fmul	fa2, fa1, fa0
	lw	a0, 0(sp)
	fsw	fa2, 0(a0)
	fli	fa2, l_7671
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0)
	b	utexture_2679_ret
beq_else_9949:
	li	t6, 3
	bne	a0, t6, beq_else_9951
	flw	fa0, 0(a1)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a4)
	fsub	fa1, fa1, fa2
	fmul	fa0, fa0, fa0
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	fli	fa1, l_8143
	fdiv	fa0, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa0, 80(sp)
	call	min_caml_floor
	flw	fa1, 80(sp)
	fsub	fa0, fa1, fa0
	fli	fa1, l_8130
	fmul	fa0, fa0, fa1
	fsw	fa0, 88(sp)
	call	min_caml_cos
	flw	fa1, 88(sp)
	fsw	fa0, 96(sp)
	fmv	fa0, fa1
	call	min_caml_cos
	flw	fa1, 96(sp)
	fmul	fa0, fa1, fa0
	fli	fa1, l_8136
	fmul	fa2, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa2, 4(a0)
	fli	fa2, l_7671
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0)
	b	utexture_2679_ret
beq_else_9951:
	li	t6, 4
	bne	a0, t6, utexture_2679_ret
	flw	fa0, 0(a1)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	flw	fa1, 0(a5)
	fsqrt	fa1, fa1
	fmul	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a4)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a5)
	fsqrt	fa2, fa2
	fmul	fa1, fa1, fa2
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	fli	fa3, l_8127
	fabs	fa4, fa0
	sw	a2, 0(sp)
	fsw	fa3, 104(sp)
	fsw	fa2, 112(sp)
	sw	a5, 120(sp)
	sw	a4, 16(sp)
	sw	a1, 20(sp)
	fle	t6, fa3, fa4
	beq	t6, zero, bne_else_9953
	fdiv	fa0, fa1, fa0
	fabs	fa0, fa0
	call	min_caml_atan
	fli	fa1, l_8129
	fmul	fa0, fa0, fa1
	fli	fa1, l_8130
	fdiv	fa0, fa0, fa1
	b	bne_cont_9954
bne_else_9953:
	fli	fa0, l_8128
bne_cont_9954:
	fsw	fa0, 128(sp)
	call	min_caml_floor
	flw	fa1, 128(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 20(sp)
	flw	fa1, 4(a0)
	lw	a0, 16(sp)
	flw	fa2, 4(a0)
	fsub	fa1, fa1, fa2
	lw	a0, 120(sp)
	flw	fa2, 4(a0)
	fsqrt	fa2, fa2
	fmul	fa1, fa1, fa2
	flw	fa2, 112(sp)
	fabs	fa3, fa2
	flw	fa4, 104(sp)
	fsw	fa0, 136(sp)
	fle	t6, fa4, fa3
	beq	t6, zero, bne_else_9956
	fdiv	fa1, fa1, fa2
	fabs	fa1, fa1
	fmv	fa0, fa1
	call	min_caml_atan
	fli	fa1, l_8129
	fmul	fa0, fa0, fa1
	fli	fa1, l_8130
	fdiv	fa0, fa0, fa1
	b	bne_cont_9957
bne_else_9956:
	fli	fa0, l_8128
bne_cont_9957:
	fsw	fa0, 144(sp)
	call	min_caml_floor
	flw	fa1, 144(sp)
	fsub	fa0, fa1, fa0
	fli	fa1, l_8134
	fli	fa2, l_8135
	flw	fa3, 136(sp)
	fsub	fa3, fa2, fa3
	fmul	fa3, fa3, fa3
	fsub	fa1, fa1, fa3
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa1, fa0
	fli	fa1, l_7670
	fle	t6, fa1, fa0
	beq	t6, zero, bne_else_9958
	b	bne_cont_9959
bne_else_9958:
	fli	fa0, l_7670
bne_cont_9959:
	fli	fa1, l_8136
	fmul	fa0, fa1, fa0
	fli	fa1, l_8137
	fdiv	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 8(a0)
utexture_2679_ret:
	lw	ra, 160(sp)
	lw	fp, 156(sp)
	addi	sp, sp, 164
	jr	ra
add_light_2682:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a1, 8(s11)
	lw	a0, 4(s11)
	fli	fa3, l_7670
	sw	a0, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa3, 16(sp)
	fsw	fa1, 24(sp)
	fle	t6, fa0, fa3
	beq	t6, zero, bne_else_9962
	b	bne_cont_9963
bne_else_9962:
	call	vecaccum_2396
bne_cont_9963:
	flw	fa0, 16(sp)
	flw	fa1, 24(sp)
	fle	t6, fa1, fa0
	beq	t6, zero, bne_else_9964
	b	add_light_2682_ret
bne_else_9964:
	fmul	fa0, fa1, fa1
	fmul	fa0, fa0, fa0
	flw	fa1, 8(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 0(sp)
	flw	fa1, 0(a0)
	fadd	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fadd	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0)
add_light_2682_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
trace_reflections_2686:
	addi	sp, sp, -92
	sw	ra, 88(sp)
	sw	fp, 84(sp)
	addi	fp, sp, 92
	lw	a2, 32(s11)
	lw	a3, 28(s11)
	lw	a4, 24(s11)
	lw	a5, 20(s11)
	lw	a6, 16(s11)
	lw	a7, 12(s11)
	lw	s1, 8(s11)
	lw	s2, 4(s11)
	blt	a0, zero, trace_reflections_2686_ret
	slli	s3, a0, 2
	add	t6, a3, s3
	lw	a3, 0(t6)
	flw	fa2, 8(a3)
	lw	s3, 4(a3)
	lw	a3, 0(a3)
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	fsw	fa1, 8(sp)
	sw	s2, 16(sp)
	sw	a1, 20(sp)
	fsw	fa0, 24(sp)
	fsw	fa2, 32(sp)
	sw	a5, 40(sp)
	sw	s3, 44(sp)
	sw	a2, 48(sp)
	sw	a4, 52(sp)
	sw	a3, 56(sp)
	sw	a7, 60(sp)
	sw	s1, 64(sp)
	mv	a0, s3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9967
	b	beq_cont_9968
beq_else_9967:
	lw	a0, 64(sp)
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, 60(sp)
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 56(sp)
	bne	a0, a1, beq_cont_9969
	li	a0, 0
	lw	a1, 52(sp)
	lw	a1, 0(a1)
	lw	s11, 48(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_cont_9970
	lw	a0, 44(sp)
	lw	a1, 0(a0)
	lw	a0, 40(sp)
	sw	a1, 68(sp)
	call	veciprod_2388
	flw	fa1, 24(sp)
	flw	fa2, 32(sp)
	fmul	fa3, fa2, fa1
	fmul	fa0, fa3, fa0
	lw	a0, 20(sp)
	lw	a1, 68(sp)
	fsw	fa0, 72(sp)
	call	veciprod_2388
	flw	fa1, 32(sp)
	fmul	fa1, fa1, fa0
	flw	fa0, 72(sp)
	flw	fa2, 8(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_9970:
beq_cont_9969:
beq_cont_9968:
	lw	a0, 4(sp)
	addi	a0, a0, -1
	flw	fa0, 24(sp)
	flw	fa1, 8(sp)
	lw	a1, 20(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_reflections_2686_ret:
	lw	ra, 88(sp)
	lw	fp, 84(sp)
	addi	sp, sp, 92
	jr	ra
trace_ray_2691:
	addi	sp, sp, -204
	sw	ra, 200(sp)
	sw	fp, 196(sp)
	addi	fp, sp, 204
	lw	a3, 80(s11)
	lw	a4, 76(s11)
	lw	a5, 72(s11)
	lw	a6, 68(s11)
	lw	a7, 64(s11)
	lw	s1, 60(s11)
	lw	s2, 56(s11)
	lw	s3, 52(s11)
	lw	s4, 48(s11)
	lw	s5, 44(s11)
	lw	s6, 40(s11)
	lw	s7, 36(s11)
	lw	s8, 32(s11)
	lw	s9, 28(s11)
	lw	s10, 24(s11)
	lw	t0, 20(s11)
	lw	t1, 16(s11)
	lw	t2, 12(s11)
	lw	t3, 8(s11)
	lw	t4, 4(s11)
	li	t6, 4
	bgt	a0, t6, trace_ray_2691_ret
	lw	t5, 28(a2)
	lw	t6, 16(a2)
	sw	s11, 0(sp)
	lw	s11, 12(a2)
	sw	a5, 4(sp)
	lw	a5, 8(a2)
	sw	a2, 8(sp)
	lw	a2, 4(a2)
	fsw	fa1, 16(sp)
	sw	a4, 24(sp)
	sw	s7, 28(sp)
	sw	s2, 32(sp)
	sw	t4, 36(sp)
	sw	s1, 40(sp)
	sw	s4, 44(sp)
	sw	s6, 48(sp)
	sw	t5, 52(sp)
	sw	a6, 56(sp)
	sw	t6, 60(sp)
	sw	s11, 64(sp)
	sw	a2, 68(sp)
	sw	s10, 72(sp)
	sw	a3, 76(sp)
	sw	t0, 80(sp)
	sw	a7, 84(sp)
	sw	t2, 88(sp)
	sw	s5, 92(sp)
	sw	t1, 96(sp)
	sw	s3, 100(sp)
	sw	t3, 104(sp)
	fsw	fa0, 112(sp)
	sw	s8, 120(sp)
	sw	a1, 124(sp)
	sw	a5, 128(sp)
	sw	a0, 132(sp)
	mv	a0, a1
	mv	s11, s9
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9973
	li	a0, -1
	lw	a1, 132(sp)
	slli	a2, a1, 2
	lw	a3, 128(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	bne	a1, zero, beq_else_9974
	b	trace_ray_2691_ret
beq_else_9974:
	lw	a0, 124(sp)
	lw	a1, 120(sp)
	call	veciprod_2388
	fneg	fa0, fa0
	fli	fa1, l_7670
	fle	t6, fa0, fa1
	beq	t6, zero, bne_else_9976
	b	trace_ray_2691_ret
bne_else_9976:
	fmul	fa1, fa0, fa0
	fmul	fa0, fa1, fa0
	flw	fa1, 112(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 104(sp)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 100(sp)
	flw	fa1, 0(a0)
	fadd	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fadd	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0)
	b	trace_ray_2691_ret
beq_else_9973:
	lw	a0, 96(sp)
	lw	a0, 0(a0)
	slli	a1, a0, 2
	lw	a2, 92(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 28(a1)
	lw	a3, 8(a1)
	flw	fa0, 0(a2)
	flw	fa1, 112(sp)
	fmul	fa0, fa0, fa1
	lw	a4, 124(sp)
	lw	s11, 88(sp)
	sw	a3, 136(sp)
	fsw	fa0, 144(sp)
	sw	a2, 152(sp)
	sw	a0, 156(sp)
	sw	a1, 160(sp)
	mv	a0, a1
	mv	a1, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 84(sp)
	lw	a1, 80(sp)
	call	veccpy_2382
	lw	a0, 160(sp)
	lw	a1, 80(sp)
	lw	s11, 76(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 156(sp)
	slli	a0, a0, 2
	lw	a1, 72(sp)
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 132(sp)
	slli	a2, a1, 2
	lw	a3, 128(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	slli	a0, a1, 2
	lw	a2, 68(sp)
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a2, 80(sp)
	mv	a1, a2
	call	veccpy_2382
	fli	fa0, l_8135
	lw	a0, 152(sp)
	flw	fa1, 0(a0)
	fle	t6, fa0, fa1
	beq	t6, zero, bne_else_9980
	li	a1, 1
	lw	a2, 132(sp)
	slli	a3, a2, 2
	lw	a4, 64(sp)
	add	t6, a4, a3
	sw	a1, 0(t6)
	slli	a1, a2, 2
	lw	a3, 60(sp)
	add	t6, a3, a1
	lw	a1, 0(t6)
	lw	a4, 56(sp)
	mv	a0, a1
	mv	a1, a4
	call	veccpy_2382
	lw	a0, 132(sp)
	slli	a1, a0, 2
	lw	a2, 60(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa0, l_8179
	flw	fa1, 144(sp)
	fmul	fa0, fa0, fa1
	mv	a0, a1
	call	vecscale_2403
	lw	a0, 132(sp)
	slli	a1, a0, 2
	lw	a2, 52(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 48(sp)
	mv	a0, a1
	mv	a1, a2
	call	veccpy_2382
	b	bne_cont_9981
bne_else_9980:
	li	a1, 0
	lw	a2, 132(sp)
	slli	a3, a2, 2
	lw	a4, 64(sp)
	add	t6, a4, a3
	sw	a1, 0(t6)
bne_cont_9981:
	fli	fa0, l_8181
	lw	a0, 124(sp)
	lw	a1, 48(sp)
	fsw	fa0, 168(sp)
	call	veciprod_2388
	flw	fa1, 168(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 124(sp)
	lw	a1, 48(sp)
	call	vecaccum_2396
	lw	a0, 152(sp)
	flw	fa0, 4(a0)
	flw	fa1, 112(sp)
	fmul	fa0, fa1, fa0
	li	a1, 0
	lw	a2, 44(sp)
	lw	a2, 0(a2)
	lw	s11, 40(sp)
	fsw	fa0, 176(sp)
	mv	a0, a1
	mv	a1, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_cont_9983
	lw	a0, 48(sp)
	lw	a1, 120(sp)
	call	veciprod_2388
	fneg	fa0, fa0
	flw	fa1, 144(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 124(sp)
	lw	a1, 120(sp)
	fsw	fa0, 184(sp)
	call	veciprod_2388
	fneg	fa1, fa0
	flw	fa0, 184(sp)
	flw	fa2, 176(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_9983:
	lw	a0, 80(sp)
	lw	s11, 32(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 28(sp)
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, 144(sp)
	flw	fa1, 176(sp)
	lw	a1, 124(sp)
	lw	s11, 24(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	fli	fa0, l_8185
	flw	fa1, 112(sp)
	fle	t6, fa1, fa0
	beq	t6, zero, bne_else_9984
	b	trace_ray_2691_ret
bne_else_9984:
	lw	a0, 132(sp)
	li	t6, 4
	blt	a0, t6, bge_else_9986
	b	bge_cont_9987
bge_else_9986:
	addi	a1, a0, 1
	li	a2, -1
	slli	a1, a1, 2
	lw	a3, 128(sp)
	add	t6, a3, a1
	sw	a2, 0(t6)
bge_cont_9987:
	lw	a1, 136(sp)
	li	t6, 2
	bne	a1, t6, beq_cont_9988
	fli	fa0, l_7671
	lw	a1, 152(sp)
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	lw	a1, 4(sp)
	flw	fa1, 0(a1)
	flw	fa2, 16(sp)
	fadd	fa1, fa2, fa1
	lw	a1, 124(sp)
	lw	a2, 8(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_9988:
trace_ray_2691_ret:
	lw	ra, 200(sp)
	lw	fp, 196(sp)
	addi	sp, sp, 204
	jr	ra
trace_diffuse_ray_2697:
	addi	sp, sp, -72
	sw	ra, 68(sp)
	sw	fp, 64(sp)
	addi	fp, sp, 72
	lw	a1, 48(s11)
	lw	a2, 44(s11)
	lw	a3, 40(s11)
	lw	a4, 36(s11)
	lw	a5, 32(s11)
	lw	a6, 28(s11)
	lw	a7, 24(s11)
	lw	s1, 20(s11)
	lw	s2, 16(s11)
	lw	s3, 12(s11)
	lw	s4, 8(s11)
	lw	s5, 4(s11)
	sw	a2, 0(sp)
	sw	s5, 4(sp)
	fsw	fa0, 8(sp)
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a3, 24(sp)
	sw	a4, 28(sp)
	sw	s2, 32(sp)
	sw	a1, 36(sp)
	sw	s4, 40(sp)
	sw	a0, 44(sp)
	sw	a5, 48(sp)
	sw	s3, 52(sp)
	mv	s11, s1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9990
	b	trace_diffuse_ray_2697_ret
beq_else_9990:
	lw	a0, 52(sp)
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, 48(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 44(sp)
	lw	a1, 0(a1)
	lw	s11, 40(sp)
	sw	a0, 56(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 56(sp)
	lw	a1, 32(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 0
	lw	a1, 28(sp)
	lw	a1, 0(a1)
	lw	s11, 24(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, trace_diffuse_ray_2697_ret
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	call	veciprod_2388
	fneg	fa0, fa0
	fli	fa1, l_7670
	fle	t6, fa0, fa1
	beq	t6, zero, bne_cont_9992
	fli	fa0, l_7670
bne_cont_9992:
	flw	fa1, 8(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 56(sp)
	lw	a0, 28(a0)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 4(sp)
	lw	a1, 0(sp)
	call	vecaccum_2396
trace_diffuse_ray_2697_ret:
	lw	ra, 68(sp)
	lw	fp, 64(sp)
	addi	sp, sp, 72
	jr	ra
iter_trace_diffuse_rays_2700:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	lw	a4, 4(s11)
	blt	a3, zero, iter_trace_diffuse_rays_2700_ret
	slli	a5, a3, 2
	add	t6, a0, a5
	lw	a5, 0(t6)
	lw	a5, 0(a5)
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a4, 12(sp)
	sw	a0, 16(sp)
	sw	a3, 20(sp)
	mv	a0, a5
	call	veciprod_2388
	fli	fa1, l_7670
	fle	t6, fa1, fa0
	beq	t6, zero, bne_else_9993
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l_8205
	fdiv	fa0, fa0, fa1
	lw	s11, 12(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	bne_cont_9994
bne_else_9993:
	lw	a0, 20(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l_8203
	fdiv	fa0, fa0, fa1
	lw	s11, 12(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bne_cont_9994:
	lw	a0, 20(sp)
	addi	a3, a0, -2
	lw	a0, 16(sp)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
iter_trace_diffuse_rays_2700_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
trace_diffuse_ray_80percent_2709:
	addi	sp, sp, -56
	sw	ra, 52(sp)
	sw	fp, 48(sp)
	addi	fp, sp, 56
	lw	a3, 12(s11)
	lw	a4, 8(s11)
	lw	a5, 4(s11)
	sw	a1, 0(sp)
	sw	a4, 4(sp)
	sw	a2, 8(sp)
	sw	a3, 12(sp)
	sw	a5, 16(sp)
	sw	a0, 20(sp)
	bne	a0, zero, beq_else_9995
	b	beq_cont_9996
beq_else_9995:
	lw	a6, 0(a5)
	sw	a6, 24(sp)
	mv	a0, a2
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 24(sp)
	lw	a1, 0(sp)
	lw	a2, 8(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_9996:
	lw	a0, 20(sp)
	li	t6, 1
	bne	a0, t6, beq_else_9997
	b	beq_cont_9998
beq_else_9997:
	lw	a1, 16(sp)
	lw	a2, 4(a1)
	lw	a3, 8(sp)
	lw	s11, 12(sp)
	sw	a2, 28(sp)
	mv	a0, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 28(sp)
	lw	a1, 0(sp)
	lw	a2, 8(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_9998:
	lw	a0, 20(sp)
	li	t6, 2
	bne	a0, t6, beq_else_9999
	b	beq_cont_10000
beq_else_9999:
	lw	a1, 16(sp)
	lw	a2, 8(a1)
	lw	a3, 8(sp)
	lw	s11, 12(sp)
	sw	a2, 32(sp)
	mv	a0, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 32(sp)
	lw	a1, 0(sp)
	lw	a2, 8(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10000:
	lw	a0, 20(sp)
	li	t6, 3
	bne	a0, t6, beq_else_10001
	b	beq_cont_10002
beq_else_10001:
	lw	a1, 16(sp)
	lw	a2, 12(a1)
	lw	a3, 8(sp)
	lw	s11, 12(sp)
	sw	a2, 36(sp)
	mv	a0, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 36(sp)
	lw	a1, 0(sp)
	lw	a2, 8(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10002:
	lw	a0, 20(sp)
	li	t6, 4
	bne	a0, t6, beq_else_10003
	b	trace_diffuse_ray_80percent_2709_ret
beq_else_10003:
	lw	a0, 16(sp)
	lw	a0, 16(a0)
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	sw	a0, 40(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 40(sp)
	lw	a1, 0(sp)
	lw	a2, 8(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_diffuse_ray_80percent_2709_ret:
	lw	ra, 52(sp)
	lw	fp, 48(sp)
	addi	sp, sp, 56
	jr	ra
calc_diffuse_using_1point_2713:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	lw	a5, 28(a0)
	lw	a6, 24(a0)
	lw	a7, 20(a0)
	lw	s1, 16(a0)
	lw	a0, 4(a0)
	slli	s2, a1, 2
	add	t6, a7, s2
	lw	a7, 0(t6)
	sw	a4, 0(sp)
	sw	a3, 4(sp)
	sw	s1, 8(sp)
	sw	a2, 12(sp)
	sw	a0, 16(sp)
	sw	a5, 20(sp)
	sw	a1, 24(sp)
	sw	a6, 28(sp)
	mv	a1, a7
	mv	a0, a4
	call	veccpy_2382
	lw	a0, 28(sp)
	lw	a0, 0(a0)
	lw	a1, 24(sp)
	slli	a2, a1, 2
	lw	a3, 20(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	slli	a3, a1, 2
	lw	a4, 16(sp)
	add	t6, a4, a3
	lw	a3, 0(t6)
	lw	s11, 12(sp)
	mv	a1, a2
	mv	a2, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 24(sp)
	slli	a0, a0, 2
	lw	a1, 8(sp)
	add	t6, a1, a0
	lw	a1, 0(t6)
	lw	a0, 4(sp)
	lw	a2, 0(sp)
	call	vecaccumv_2406
calc_diffuse_using_1point_2713_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
calc_diffuse_using_5points_2716:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	lw	a5, 8(s11)
	lw	a6, 4(s11)
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
	call	veccpy_2382
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 28(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2400
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 20(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2400
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2400
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 12(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2400
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
	call	vecaccumv_2406
calc_diffuse_using_5points_2716_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
do_without_neighbors_2722:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a2, 4(s11)
	li	t6, 4
	bgt	a1, t6, do_without_neighbors_2722_ret
	lw	a3, 12(a0)
	lw	a4, 8(a0)
	slli	a5, a1, 2
	add	t6, a4, a5
	lw	a4, 0(t6)
	blt	a4, zero, do_without_neighbors_2722_ret
	slli	a4, a1, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	bne	a3, zero, beq_else_10005
	b	beq_cont_10006
beq_else_10005:
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10006:
	lw	a0, 8(sp)
	addi	a1, a0, 1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
do_without_neighbors_2722_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
neighbors_exist_2725:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a2, 4(s11)
	lw	a3, 4(a2)
	addi	a4, a1, 1
	bgt	a3, a4, ble_else_10007
	li	a0, 0
	b	neighbors_exist_2725_ret
ble_else_10007:
	bgt	a1, zero, ble_else_10008
	li	a0, 0
	b	neighbors_exist_2725_ret
ble_else_10008:
	lw	a1, 0(a2)
	addi	a2, a0, 1
	bgt	a1, a2, ble_else_10009
	li	a0, 0
	b	neighbors_exist_2725_ret
ble_else_10009:
	bgt	a0, zero, ble_else_10010
	li	a0, 0
	b	neighbors_exist_2725_ret
ble_else_10010:
	li	a0, 1
neighbors_exist_2725_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
neighbors_are_available_2732:
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
	bne	a1, a5, beq_else_10011
	slli	a1, a0, 2
	add	t6, a3, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, beq_else_10012
	addi	a1, a0, -1
	slli	a1, a1, 2
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, beq_else_10013
	addi	a0, a0, 1
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a0, 8(a0)
	slli	a1, a4, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	bne	a0, a5, beq_else_10014
	li	a0, 1
	b	neighbors_are_available_2732_ret
beq_else_10014:
	li	a0, 0
	b	neighbors_are_available_2732_ret
beq_else_10013:
	li	a0, 0
	b	neighbors_are_available_2732_ret
beq_else_10012:
	li	a0, 0
	b	neighbors_are_available_2732_ret
beq_else_10011:
	li	a0, 0
neighbors_are_available_2732_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
try_exploit_neighbors_2738:
	addi	sp, sp, -52
	sw	ra, 48(sp)
	sw	fp, 44(sp)
	addi	fp, sp, 52
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	slli	s1, a0, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	li	t6, 4
	bgt	a5, t6, try_exploit_neighbors_2738_ret
	lw	s2, 12(s1)
	lw	s1, 8(s1)
	slli	s3, a5, 2
	add	t6, s1, s3
	lw	s1, 0(t6)
	blt	s1, zero, try_exploit_neighbors_2738_ret
	sw	a1, 0(sp)
	sw	s11, 4(sp)
	sw	a4, 8(sp)
	sw	a2, 12(sp)
	sw	a7, 16(sp)
	sw	s2, 20(sp)
	sw	a5, 24(sp)
	sw	a6, 28(sp)
	sw	a3, 32(sp)
	sw	a0, 36(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	call	neighbors_are_available_2732
	bne	a0, zero, beq_else_10015
	lw	a0, 36(sp)
	slli	a0, a0, 2
	lw	a1, 32(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 24(sp)
	lw	s11, 28(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	try_exploit_neighbors_2738_ret
beq_else_10015:
	lw	a4, 24(sp)
	slli	a0, a4, 2
	lw	a1, 20(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	bne	a0, zero, beq_else_10016
	b	beq_cont_10017
beq_else_10016:
	lw	a0, 36(sp)
	lw	a1, 12(sp)
	lw	a2, 32(sp)
	lw	a3, 8(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10017:
	lw	a0, 24(sp)
	addi	a5, a0, 1
	lw	a0, 36(sp)
	lw	a1, 0(sp)
	lw	a2, 12(sp)
	lw	a3, 32(sp)
	lw	a4, 8(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
try_exploit_neighbors_2738_ret:
	lw	ra, 48(sp)
	lw	fp, 44(sp)
	addi	sp, sp, 52
	jr	ra
write_ppm_header_2745:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	lw	a0, 4(s11)
	li	a1, 80
	sw	a0, 0(sp)
	mv	a0, a1
	call	min_caml_print_char
	li	a0, 51
	call	min_caml_print_char
	li	a0, 10
	call	min_caml_print_char
	lw	a0, 0(sp)
	lw	a1, 0(a0)
	mv	a0, a1
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 0(sp)
	lw	a0, 4(a0)
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	li	a0, 255
	call	min_caml_print_int
	li	a0, 10
	call	min_caml_print_char
write_ppm_header_2745_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
write_rgb_element_2747:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	call	min_caml_int_of_float
	li	t6, 255
	bgt	a0, t6, ble_else_10018
	blt	a0, zero, bge_else_10020
	b	bge_cont_10021
bge_else_10020:
	li	a0, 0
bge_cont_10021:
	b	ble_cont_10019
ble_else_10018:
	li	a0, 255
ble_cont_10019:
	call	min_caml_print_int
write_rgb_element_2747_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
write_rgb_2749:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	lw	a0, 4(s11)
	flw	fa0, 0(a0)
	sw	a0, 0(sp)
	call	write_rgb_element_2747
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 0(sp)
	flw	fa0, 4(a0)
	call	write_rgb_element_2747
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 0(sp)
	flw	fa0, 8(a0)
	call	write_rgb_element_2747
	li	a0, 10
	call	min_caml_print_char
write_rgb_2749_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
pretrace_diffuse_rays_2751:
	addi	sp, sp, -68
	sw	ra, 64(sp)
	sw	fp, 60(sp)
	addi	fp, sp, 68
	lw	a2, 16(s11)
	lw	a3, 12(s11)
	lw	a4, 8(s11)
	lw	a5, 4(s11)
	li	t6, 4
	bgt	a1, t6, pretrace_diffuse_rays_2751_ret
	lw	a6, 28(a0)
	lw	a7, 24(a0)
	lw	s1, 20(a0)
	lw	s2, 12(a0)
	lw	s3, 8(a0)
	lw	s4, 4(a0)
	slli	s5, a1, 2
	add	t6, s3, s5
	lw	s3, 0(t6)
	blt	s3, zero, pretrace_diffuse_rays_2751_ret
	slli	s3, a1, 2
	add	t6, s2, s3
	lw	s2, 0(t6)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	bne	s2, zero, beq_else_10022
	b	beq_cont_10023
beq_else_10022:
	lw	a7, 0(a7)
	fli	fa0, l_7670
	sw	a5, 12(sp)
	sw	s1, 16(sp)
	sw	a3, 20(sp)
	sw	a2, 24(sp)
	sw	s4, 28(sp)
	sw	a6, 32(sp)
	sw	a4, 36(sp)
	sw	a7, 40(sp)
	mv	a0, a5
	call	vecfill_2377
	lw	a0, 40(sp)
	slli	a0, a0, 2
	lw	a1, 36(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 32(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	slli	a3, a1, 2
	lw	a4, 28(sp)
	add	t6, a4, a3
	lw	a3, 0(t6)
	lw	s11, 24(sp)
	sw	a3, 44(sp)
	sw	a2, 48(sp)
	sw	a0, 52(sp)
	mv	a0, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 52(sp)
	lw	a1, 48(sp)
	lw	a2, 44(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 8(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 12(sp)
	mv	a0, a1
	mv	a1, a2
	call	veccpy_2382
beq_cont_10023:
	lw	a0, 8(sp)
	addi	a1, a0, 1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
pretrace_diffuse_rays_2751_ret:
	lw	ra, 64(sp)
	lw	fp, 60(sp)
	addi	sp, sp, 68
	jr	ra
pretrace_pixels_2754:
	addi	sp, sp, -112
	sw	ra, 108(sp)
	sw	fp, 104(sp)
	addi	fp, sp, 112
	lw	a3, 36(s11)
	lw	a4, 32(s11)
	lw	a5, 28(s11)
	lw	a6, 24(s11)
	lw	a7, 20(s11)
	lw	s1, 16(s11)
	lw	s2, 12(s11)
	lw	s3, 8(s11)
	lw	s4, 4(s11)
	blt	a1, zero, pretrace_pixels_2754_ret
	flw	fa3, 0(a7)
	lw	a7, 0(s4)
	sub	a7, a1, a7
	sw	s11, 0(sp)
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
	fmul	fa0, fa1, fa0
	lw	a0, 72(sp)
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	flw	fa2, 64(sp)
	fadd	fa1, fa1, fa2
	lw	a1, 56(sp)
	fsw	fa1, 0(a1)
	flw	fa1, 4(a0)
	fmul	fa1, fa0, fa1
	flw	fa3, 48(sp)
	fadd	fa1, fa1, fa3
	fsw	fa1, 4(a1)
	flw	fa1, 8(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, 40(sp)
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a1)
	li	a0, 0
	mv	t5, a1
	mv	a1, a0
	mv	a0, t5
	call	vecunit_sgn_2385
	fli	fa0, l_7670
	lw	a0, 32(sp)
	fsw	fa0, 88(sp)
	call	vecfill_2377
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	call	veccpy_2382
	li	a0, 0
	fli	fa0, l_7671
	lw	a1, 20(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	flw	fa1, 88(sp)
	lw	a4, 56(sp)
	lw	s11, 12(sp)
	mv	a1, a4
	lw	ra, 0(s11)
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
	call	veccpy_2382
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 24(a1)
	lw	a3, 8(sp)
	sw	a3, 0(a1)
	slli	a1, a0, 2
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a4, 0
	lw	s11, 4(sp)
	mv	a0, a1
	mv	a1, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 20(sp)
	addi	a0, a0, -1
	li	a1, 1
	lw	a2, 8(sp)
	sw	a0, 96(sp)
	mv	a0, a2
	call	add_mod5_2369
	mv	a2, a0
	flw	fa0, 64(sp)
	flw	fa1, 48(sp)
	flw	fa2, 40(sp)
	lw	a0, 16(sp)
	lw	a1, 96(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
pretrace_pixels_2754_ret:
	lw	ra, 108(sp)
	lw	fp, 104(sp)
	addi	sp, sp, 112
	jr	ra
pretrace_line_2761:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a3, 24(s11)
	lw	a4, 20(s11)
	lw	a5, 16(s11)
	lw	a6, 12(s11)
	lw	a7, 8(s11)
	lw	s1, 4(s11)
	flw	fa0, 0(a5)
	lw	a5, 4(s1)
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
	fmul	fa0, fa1, fa0
	lw	a0, 20(sp)
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	lw	a1, 16(sp)
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a0)
	fmul	fa2, fa0, fa2
	flw	fa3, 4(a1)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a0)
	fmul	fa0, fa0, fa3
	flw	fa3, 8(a1)
	fadd	fa0, fa0, fa3
	lw	a0, 12(sp)
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	fmv	ft11, fa2
	fmv	fa2, fa0
	fmv	fa0, fa1
	fmv	fa1, ft11
	lw	ra, 0(s11)
	jalr	ra, ra, 0
pretrace_line_2761_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
scan_pixel_2765:
	addi	sp, sp, -52
	sw	ra, 48(sp)
	sw	fp, 44(sp)
	addi	fp, sp, 52
	lw	a5, 24(s11)
	lw	a6, 20(s11)
	lw	a7, 16(s11)
	lw	s1, 12(s11)
	lw	s2, 8(s11)
	lw	s3, 4(s11)
	lw	s2, 0(s2)
	bgt	s2, a0, ble_else_10027
	b	scan_pixel_2765_ret
ble_else_10027:
	slli	s2, a0, 2
	add	t6, a3, s2
	lw	s2, 0(t6)
	lw	s2, 0(s2)
	sw	s11, 0(sp)
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
	call	veccpy_2382
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10029
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 20(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, 0
	lw	s11, 16(sp)
	mv	a0, a1
	mv	a1, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10030
beq_else_10029:
	li	a5, 0
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 8(sp)
	lw	a3, 20(sp)
	lw	a4, 24(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10030:
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 32(sp)
	addi	a0, a0, 1
	lw	a1, 28(sp)
	lw	a2, 8(sp)
	lw	a3, 20(sp)
	lw	a4, 24(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
scan_pixel_2765_ret:
	lw	ra, 48(sp)
	lw	fp, 44(sp)
	addi	sp, sp, 52
	jr	ra
scan_line_2771:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a5, 12(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	lw	s1, 4(a7)
	bgt	s1, a0, ble_else_10031
	b	scan_line_2771_ret
ble_else_10031:
	lw	a7, 4(a7)
	addi	a7, a7, -1
	sw	s11, 0(sp)
	sw	a4, 4(sp)
	sw	a3, 8(sp)
	sw	a2, 12(sp)
	sw	a1, 16(sp)
	sw	a0, 20(sp)
	sw	a5, 24(sp)
	bgt	a7, a0, ble_else_10033
	b	ble_cont_10034
ble_else_10033:
	addi	a7, a0, 1
	mv	a2, a4
	mv	a1, a7
	mv	a0, a3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
ble_cont_10034:
	li	a0, 0
	lw	a1, 20(sp)
	lw	a2, 16(sp)
	lw	a3, 12(sp)
	lw	a4, 8(sp)
	lw	s11, 24(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 20(sp)
	addi	a0, a0, 1
	li	a1, 2
	lw	a2, 4(sp)
	sw	a0, 28(sp)
	mv	a0, a2
	call	add_mod5_2369
	mv	a4, a0
	lw	a0, 28(sp)
	lw	a1, 12(sp)
	lw	a2, 8(sp)
	lw	a3, 16(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
scan_line_2771_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
create_float5x3array_2777:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	li	a0, 3
	fli	fa0, l_7670
	fsw	fa0, 0(sp)
	call	min_caml_create_array
	mv	a1, a0
	li	a0, 5
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 8(sp)
	mv	a0, a1
	call	min_caml_create_array
	lw	a1, 8(sp)
	sw	a0, 4(a1)
	li	a0, 3
	flw	fa0, 0(sp)
	call	min_caml_create_array
	lw	a1, 8(sp)
	sw	a0, 8(a1)
	li	a0, 3
	flw	fa0, 0(sp)
	call	min_caml_create_array
	lw	a1, 8(sp)
	sw	a0, 12(a1)
	li	a0, 3
	flw	fa0, 0(sp)
	call	min_caml_create_array
	lw	a1, 8(sp)
	sw	a0, 16(a1)
	mv	a0, a1
create_float5x3array_2777_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
create_pixel_2779:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	sw	fp, 32(sp)
	addi	fp, sp, 40
	li	a0, 3
	fli	fa0, l_7670
	call	min_caml_create_array
	sw	a0, 0(sp)
	call	create_float5x3array_2777
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
	call	create_float5x3array_2777
	sw	a0, 16(sp)
	call	create_float5x3array_2777
	li	a1, 1
	li	a2, 0
	sw	a0, 20(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	sw	a0, 24(sp)
	call	create_float5x3array_2777
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
create_pixel_2779_ret:
	lw	ra, 36(sp)
	lw	fp, 32(sp)
	addi	sp, sp, 40
	jr	ra
init_line_elements_2781:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	blt	a1, zero, bge_else_10036
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	create_pixel_2779
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 0(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_2781
	b	init_line_elements_2781_ret
bge_else_10036:
init_line_elements_2781_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
create_pixelline_2784:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	lw	a0, 4(s11)
	lw	a1, 0(a0)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	create_pixel_2779
	mv	a1, a0
	lw	a0, 4(sp)
	call	min_caml_create_array
	lw	a1, 0(sp)
	lw	a1, 0(a1)
	addi	a1, a1, -2
	call	init_line_elements_2781
create_pixelline_2784_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
adjust_position_2788:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	fmul	fa0, fa0, fa0
	fli	fa2, l_8185
	fadd	fa0, fa0, fa2
	fsqrt	fa0, fa0
	fli	fa2, l_7671
	fdiv	fa2, fa2, fa0
	fsw	fa0, 0(sp)
	fsw	fa1, 8(sp)
	fmv	fa0, fa2
	call	min_caml_atan
	flw	fa1, 8(sp)
	fmul	fa0, fa0, fa1
	fsw	fa0, 16(sp)
	call	min_caml_sin
	flw	fa1, 16(sp)
	fsw	fa0, 24(sp)
	fmv	fa0, fa1
	call	min_caml_cos
	flw	fa1, 24(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, 0(sp)
	fmul	fa0, fa0, fa1
adjust_position_2788_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
calc_dirvec_2791:
	addi	sp, sp, -112
	sw	ra, 108(sp)
	sw	fp, 104(sp)
	addi	fp, sp, 112
	lw	a3, 4(s11)
	li	t6, 5
	blt	a0, t6, bge_else_10037
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	fli	fa3, l_7671
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fdiv	fa0, fa0, fa2
	fdiv	fa1, fa1, fa2
	fdiv	fa2, fa3, fa2
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
	call	vecset_2372
	lw	a0, 28(sp)
	addi	a1, a0, 40
	slli	a1, a1, 2
	lw	a2, 24(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	flw	fa0, 16(sp)
	fneg	fa2, fa0
	flw	fa1, 8(sp)
	flw	fa3, 0(sp)
	fsw	fa2, 32(sp)
	mv	a0, a1
	fmv	fa0, fa1
	fmv	fa1, fa3
	call	vecset_2372
	lw	a0, 28(sp)
	addi	a1, a0, 80
	slli	a1, a1, 2
	lw	a2, 24(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	flw	fa0, 8(sp)
	fneg	fa1, fa0
	flw	fa2, 0(sp)
	flw	fa3, 32(sp)
	fsw	fa1, 40(sp)
	mv	a0, a1
	fmv	fa0, fa2
	fmv	fa2, fa3
	call	vecset_2372
	lw	a0, 28(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 24(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	flw	fa0, 0(sp)
	fneg	fa2, fa0
	flw	fa0, 40(sp)
	flw	fa1, 32(sp)
	fsw	fa2, 48(sp)
	mv	a0, a1
	call	vecset_2372
	lw	a0, 28(sp)
	addi	a1, a0, 41
	slli	a1, a1, 2
	lw	a2, 24(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	flw	fa0, 40(sp)
	flw	fa1, 48(sp)
	flw	fa2, 16(sp)
	mv	a0, a1
	call	vecset_2372
	lw	a0, 28(sp)
	addi	a0, a0, 81
	slli	a0, a0, 2
	lw	a1, 24(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 0(a0)
	flw	fa0, 48(sp)
	flw	fa1, 8(sp)
	flw	fa2, 16(sp)
	call	vecset_2372
	b	calc_dirvec_2791_ret
bge_else_10037:
	fsw	fa2, 56(sp)
	sw	a2, 28(sp)
	sw	a1, 64(sp)
	sw	s11, 68(sp)
	fsw	fa3, 72(sp)
	sw	a0, 80(sp)
	fmv	fa0, fa1
	fmv	fa1, fa2
	call	adjust_position_2788
	lw	a0, 80(sp)
	addi	a0, a0, 1
	flw	fa1, 72(sp)
	fsw	fa0, 88(sp)
	sw	a0, 96(sp)
	call	adjust_position_2788
	fmv	fa1, fa0
	flw	fa0, 88(sp)
	flw	fa2, 56(sp)
	flw	fa3, 72(sp)
	lw	a0, 96(sp)
	lw	a1, 64(sp)
	lw	a2, 28(sp)
	lw	s11, 68(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
calc_dirvec_2791_ret:
	lw	ra, 108(sp)
	lw	fp, 104(sp)
	addi	sp, sp, 112
	jr	ra
calc_dirvecs_2799:
	addi	sp, sp, -64
	sw	ra, 60(sp)
	sw	fp, 56(sp)
	addi	fp, sp, 64
	lw	a3, 4(s11)
	blt	a0, zero, calc_dirvecs_2799_ret
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	fsw	fa0, 8(sp)
	sw	a2, 16(sp)
	sw	a1, 20(sp)
	sw	a3, 24(sp)
	call	min_caml_float_of_int
	fli	fa1, l_8308
	fmul	fa0, fa0, fa1
	fli	fa2, l_8309
	fsub	fa2, fa0, fa2
	li	a0, 0
	fli	fa0, l_7670
	flw	fa3, 8(sp)
	lw	a1, 20(sp)
	lw	a2, 16(sp)
	lw	s11, 24(sp)
	fsw	fa0, 32(sp)
	fsw	fa1, 40(sp)
	fmv	fa1, fa0
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	call	min_caml_float_of_int
	flw	fa1, 40(sp)
	fmul	fa0, fa0, fa1
	fli	fa1, l_8185
	fadd	fa2, fa0, fa1
	li	a0, 0
	lw	a1, 16(sp)
	addi	a2, a1, 2
	flw	fa0, 32(sp)
	flw	fa3, 8(sp)
	lw	a3, 20(sp)
	lw	s11, 24(sp)
	mv	a1, a3
	fmv	fa1, fa0
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	addi	a0, a0, -1
	li	a1, 1
	lw	a2, 20(sp)
	sw	a0, 48(sp)
	mv	a0, a2
	call	add_mod5_2369
	mv	a1, a0
	flw	fa0, 8(sp)
	lw	a0, 48(sp)
	lw	a2, 16(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
calc_dirvecs_2799_ret:
	lw	ra, 60(sp)
	lw	fp, 56(sp)
	addi	sp, sp, 64
	jr	ra
calc_dirvec_rows_2804:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	lw	a3, 4(s11)
	blt	a0, zero, calc_dirvec_rows_2804_ret
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	sw	a1, 12(sp)
	sw	a3, 16(sp)
	call	min_caml_float_of_int
	fli	fa1, l_8308
	fmul	fa0, fa0, fa1
	fli	fa1, l_8309
	fsub	fa0, fa0, fa1
	li	a0, 4
	lw	a1, 12(sp)
	lw	a2, 8(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	addi	a0, a0, -1
	li	a1, 2
	lw	a2, 12(sp)
	sw	a0, 20(sp)
	mv	a0, a2
	call	add_mod5_2369
	mv	a1, a0
	lw	a0, 8(sp)
	addi	a2, a0, 4
	lw	a0, 20(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
calc_dirvec_rows_2804_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
create_dirvec_2808:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	lw	a0, 4(s11)
	li	a1, 3
	fli	fa0, l_7670
	sw	a0, 0(sp)
	mv	a0, a1
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 0(sp)
	lw	a0, 0(a0)
	sw	a1, 4(sp)
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 4(sp)
	sw	a0, 0(a1)
	mv	a0, a1
create_dirvec_2808_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
create_dirvec_elements_2810:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a2, 4(s11)
	blt	a1, zero, create_dirvec_elements_2810_ret
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	sw	a1, 8(sp)
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 4(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	lw	s11, 0(sp)
	mv	a0, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
create_dirvec_elements_2810_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
create_dirvecs_2813:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	fp, 24(sp)
	addi	fp, sp, 32
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	blt	a0, zero, create_dirvecs_2813_ret
	li	a4, 120
	sw	s11, 0(sp)
	sw	a2, 4(sp)
	sw	a1, 8(sp)
	sw	a0, 12(sp)
	sw	a4, 16(sp)
	mv	s11, a3
	lw	ra, 0(s11)
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
	lw	s11, 4(sp)
	mv	a1, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 12(sp)
	addi	a0, a0, -1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
create_dirvecs_2813_ret:
	lw	ra, 28(sp)
	lw	fp, 24(sp)
	addi	sp, sp, 32
	jr	ra
init_dirvec_constants_2815:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a2, 4(s11)
	blt	a1, zero, init_dirvec_constants_2815_ret
	slli	a3, a1, 2
	add	t6, a0, a3
	lw	a3, 0(t6)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	mv	a0, a3
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 8(sp)
	addi	a1, a0, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
init_dirvec_constants_2815_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
init_vecset_constants_2818:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	blt	a0, zero, init_vecset_constants_2818_ret
	slli	a3, a0, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	li	a3, 119
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	mv	a0, a2
	mv	s11, a1
	mv	a1, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	addi	a0, a0, -1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
init_vecset_constants_2818_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
init_dirvecs_2820:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	lw	a0, 12(s11)
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	li	a3, 4
	sw	a0, 0(sp)
	sw	a2, 4(sp)
	mv	a0, a3
	mv	s11, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 9
	li	a1, 0
	li	a2, 0
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 4
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
init_dirvecs_2820_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
add_reflection_2822:
	addi	sp, sp, -72
	sw	ra, 68(sp)
	sw	fp, 64(sp)
	addi	fp, sp, 72
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	s11, 4(s11)
	sw	a3, 0(sp)
	sw	a0, 4(sp)
	sw	a1, 8(sp)
	fsw	fa0, 16(sp)
	sw	a2, 24(sp)
	fsw	fa3, 32(sp)
	fsw	fa2, 40(sp)
	fsw	fa1, 48(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a1, 0(a0)
	flw	fa0, 48(sp)
	flw	fa1, 40(sp)
	flw	fa2, 32(sp)
	sw	a0, 56(sp)
	mv	a0, a1
	call	vecset_2372
	lw	a0, 56(sp)
	lw	s11, 24(sp)
	lw	ra, 0(s11)
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
add_reflection_2822_ret:
	lw	ra, 68(sp)
	lw	fp, 64(sp)
	addi	sp, sp, 72
	jr	ra
setup_rect_reflection_2829:
	addi	sp, sp, -68
	sw	ra, 64(sp)
	sw	fp, 60(sp)
	addi	fp, sp, 68
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	s11, 4(s11)
	slli	a0, a0, 2
	lw	a4, 0(a2)
	fli	fa0, l_7671
	lw	a1, 28(a1)
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	flw	fa1, 0(a3)
	fneg	fa1, fa1
	flw	fa2, 4(a3)
	fneg	fa2, fa2
	flw	fa3, 8(a3)
	fneg	fa3, fa3
	addi	a1, a0, 1
	flw	fa4, 0(a3)
	sw	a2, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa3, 16(sp)
	fsw	fa1, 24(sp)
	fsw	fa0, 32(sp)
	sw	s11, 40(sp)
	sw	a3, 44(sp)
	sw	a0, 48(sp)
	sw	a4, 52(sp)
	mv	a0, a4
	fmv	fa1, fa4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 52(sp)
	addi	a1, a0, 1
	lw	a2, 48(sp)
	addi	a3, a2, 2
	lw	a4, 44(sp)
	flw	fa2, 4(a4)
	flw	fa0, 32(sp)
	flw	fa1, 24(sp)
	flw	fa3, 16(sp)
	lw	s11, 40(sp)
	mv	a0, a1
	mv	a1, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 52(sp)
	addi	a1, a0, 2
	lw	a2, 48(sp)
	addi	a2, a2, 3
	lw	a3, 44(sp)
	flw	fa3, 8(a3)
	flw	fa0, 32(sp)
	flw	fa1, 24(sp)
	flw	fa2, 8(sp)
	lw	s11, 40(sp)
	mv	a0, a1
	mv	a1, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 52(sp)
	addi	a0, a0, 3
	lw	a1, 0(sp)
	sw	a0, 0(a1)
setup_rect_reflection_2829_ret:
	lw	ra, 64(sp)
	lw	fp, 60(sp)
	addi	sp, sp, 68
	jr	ra
setup_surface_reflection_2832:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	slli	a0, a0, 2
	addi	a0, a0, 1
	lw	a5, 0(a2)
	fli	fa0, l_7671
	lw	a6, 28(a1)
	lw	a1, 16(a1)
	flw	fa1, 0(a6)
	fsub	fa0, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa0, 8(sp)
	sw	a0, 16(sp)
	sw	a5, 20(sp)
	sw	a4, 24(sp)
	sw	a3, 28(sp)
	sw	a1, 32(sp)
	mv	a0, a3
	call	veciprod_2388
	fli	fa1, l_7782
	lw	a0, 32(sp)
	flw	fa2, 0(a0)
	fmul	fa2, fa1, fa2
	fmul	fa2, fa2, fa0
	lw	a1, 28(sp)
	flw	fa3, 0(a1)
	fsub	fa2, fa2, fa3
	flw	fa3, 4(a0)
	fmul	fa3, fa1, fa3
	fmul	fa3, fa3, fa0
	flw	fa4, 4(a1)
	fsub	fa3, fa3, fa4
	flw	fa4, 8(a0)
	fmul	fa1, fa1, fa4
	fmul	fa0, fa1, fa0
	flw	fa1, 8(a1)
	fsub	fa0, fa0, fa1
	flw	fa1, 8(sp)
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	lw	s11, 24(sp)
	fmv	ft11, fa3
	fmv	fa3, fa0
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, ft11
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 0(sp)
	sw	a0, 0(a1)
setup_surface_reflection_2832_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
setup_reflections_2835:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	blt	a0, zero, setup_reflections_2835_ret
	slli	a4, a0, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	lw	a4, 28(a3)
	lw	a5, 8(a3)
	lw	a6, 4(a3)
	li	t6, 2
	bne	a5, t6, setup_reflections_2835_ret
	fli	fa0, l_7671
	flw	fa1, 0(a4)
	fle	t6, fa0, fa1
	beq	t6, zero, bne_else_10047
	b	setup_reflections_2835_ret
bne_else_10047:
	li	t6, 1
	bne	a6, t6, beq_else_10049
	mv	a1, a3
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	setup_reflections_2835_ret
beq_else_10049:
	li	t6, 2
	bne	a6, t6, setup_reflections_2835_ret
	mv	s11, a1
	mv	a1, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
setup_reflections_2835_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
rt_2837:
	addi	sp, sp, -88
	sw	ra, 84(sp)
	sw	fp, 80(sp)
	addi	fp, sp, 88
	lw	a2, 60(s11)
	lw	a3, 56(s11)
	lw	a4, 52(s11)
	lw	a5, 48(s11)
	lw	a6, 44(s11)
	lw	a7, 40(s11)
	lw	s1, 36(s11)
	lw	s2, 32(s11)
	lw	s3, 28(s11)
	lw	s4, 24(s11)
	lw	s5, 20(s11)
	lw	s6, 16(s11)
	lw	s7, 12(s11)
	lw	s8, 8(s11)
	lw	s9, 4(s11)
	sw	a0, 0(s7)
	sw	a1, 4(s7)
	srai	s7, a0, 1
	sw	s7, 0(s8)
	srai	a1, a1, 1
	sw	a1, 4(s8)
	fli	fa0, l_8348
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
	fdiv	fa0, fa1, fa0
	lw	a0, 48(sp)
	fsw	fa0, 0(a0)
	lw	s11, 44(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 44(sp)
	sw	a0, 64(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 44(sp)
	sw	a0, 68(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 40(sp)
	sw	a0, 72(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 32(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	call	veccpy_2382
	lw	a0, 16(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 12(sp)
	lw	a0, 0(a0)
	addi	a0, a0, -1
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a1, 0
	li	a2, 0
	lw	a0, 68(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 0
	li	a4, 2
	lw	a1, 64(sp)
	lw	a2, 68(sp)
	lw	a3, 72(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
rt_2837_ret:
	lw	ra, 84(sp)
	lw	fp, 80(sp)
	addi	sp, sp, 88
	jr	ra
end:
	j	end
	.data
l_8348:	# 128.000000
	.word	1124073472
l_8309:	# 0.900000
	.word	1063675494
l_8308:	# 0.200000
	.word	1045220557
l_8205:	# 150.000000
	.word	1125515264
l_8203:	# -150.000000
	.word	-1021968384
l_8185:	# 0.100000
	.word	1036831949
l_8181:	# -2.000000
	.word	-1073741824
l_8179:	# 0.003906
	.word	998244352
l_8154:	# 20.000000
	.word	1101004800
l_8153:	# 0.050000
	.word	1028443341
l_8147:	# 0.250000
	.word	1048576000
l_8143:	# 10.000000
	.word	1092616192
l_8137:	# 0.300000
	.word	1050253722
l_8136:	# 255.000000
	.word	1132396544
l_8135:	# 0.500000
	.word	1056964608
l_8134:	# 0.150000
	.word	1041865114
l_8130:	# 3.141593
	.word	1078530011
l_8129:	# 30.000000
	.word	1106247680
l_8128:	# 15.000000
	.word	1097859072
l_8127:	# 0.000100
	.word	953267991
l_8062:	# 100000000.000000
	.word	1287568416
l_8058:	# 1000000000.000000
	.word	1315859240
l_8037:	# -0.100000
	.word	-1110651699
l_8025:	# 0.010000
	.word	1008981770
l_8024:	# -0.200000
	.word	-1102263091
l_7782:	# 2.000000
	.word	1073741824
l_7748:	# -200.000000
	.word	-1018691584
l_7746:	# 200.000000
	.word	1128792064
l_7745:	# 0.017453
	.word	1016003125
l_7672:	# -1.000000
	.word	-1082130432
l_7671:	# 1.000000
	.word	1065353216
l_7670:	# 0.000000
	.word	0
