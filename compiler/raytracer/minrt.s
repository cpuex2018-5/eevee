	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
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
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9740
	fli	fa0, l_7670
	b	sgn_2364_ret
bne_else_9740:
	fle.s	t6, fa0, fa1
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
	fmul.s	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a0)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a0)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	fsqrt.s	fa0, fa0
	fli	fa1, l_7670
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9746
	fli	fa0, l_7671
	b	bne_cont_9747
bne_else_9746:
	bne	a1, zero, beq_else_9748
	fli	fa1, l_7671
	fdiv.s	fa0, fa1, fa0
	b	beq_cont_9749
beq_else_9748:
	fli	fa1, l_7672
	fdiv.s	fa0, fa1, fa0
beq_cont_9749:
bne_cont_9747:
	flw	fa1, 0(a0)
	fmul.s	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fmul.s	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fmul.s	fa0, fa1, fa0
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
	fmul.s	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a1)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a1)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
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
	fmul.s	fa0, fa3, fa0
	flw	fa3, 4(a0)
	fmul.s	fa1, fa3, fa1
	fadd.s	fa0, fa0, fa1
	flw	fa1, 8(a0)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
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
	fmul.s	fa2, fa0, fa2
	fadd.s	fa1, fa1, fa2
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	flw	fa2, 4(a1)
	fmul.s	fa2, fa0, fa2
	fadd.s	fa1, fa1, fa2
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	flw	fa2, 8(a1)
	fmul.s	fa0, fa0, fa2
	fadd.s	fa0, fa1, fa0
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
	fadd.s	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	flw	fa0, 4(a0)
	flw	fa1, 4(a1)
	fadd.s	fa0, fa0, fa1
	fsw	fa0, 4(a0)
	flw	fa0, 8(a0)
	flw	fa1, 8(a1)
	fadd.s	fa0, fa0, fa1
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
	fmul.s	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fmul.s	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fmul.s	fa0, fa1, fa0
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
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	flw	fa0, 4(a0)
	flw	fa1, 4(a1)
	flw	fa2, 4(a2)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	fsw	fa0, 4(a0)
	flw	fa0, 8(a0)
	flw	fa1, 8(a1)
	flw	fa2, 8(a2)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
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
	fmul.s	fa0, fa0, fa1
	fsw	fa1, 24(sp)
	fsw	fa0, 32(sp)
	call	min_caml_cos
	flw	fa1, 32(sp)
	fsw	fa0, 40(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	fsw	fa0, 48(sp)
	call	min_caml_read_float
	flw	fa1, 24(sp)
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 56(sp)
	call	min_caml_cos
	flw	fa1, 56(sp)
	fsw	fa0, 64(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	flw	fa1, 40(sp)
	fmul.s	fa2, fa1, fa0
	fli	fa3, l_7746
	fmul.s	fa2, fa2, fa3
	lw	a0, 12(sp)
	fsw	fa2, 0(a0)
	fli	fa2, l_7748
	flw	fa4, 48(sp)
	fmul.s	fa2, fa4, fa2
	fsw	fa2, 4(a0)
	flw	fa2, 64(sp)
	fmul.s	fa5, fa1, fa2
	fmul.s	fa3, fa5, fa3
	fsw	fa3, 8(a0)
	lw	a1, 8(sp)
	fsw	fa2, 0(a1)
	fli	fa3, l_7670
	fsw	fa3, 4(a1)
	fneg.s	fa3, fa0
	fsw	fa3, 8(a1)
	fneg.s	fa3, fa4
	fmul.s	fa0, fa3, fa0
	lw	a1, 4(sp)
	fsw	fa0, 0(a1)
	fneg.s	fa0, fa1
	fsw	fa0, 4(a1)
	fmul.s	fa0, fa3, fa2
	fsw	fa0, 8(a1)
	lw	a1, 16(sp)
	flw	fa0, 0(a1)
	flw	fa1, 0(a0)
	fsub.s	fa0, fa0, fa1
	lw	a2, 0(sp)
	fsw	fa0, 0(a2)
	flw	fa0, 4(a1)
	flw	fa1, 4(a0)
	fsub.s	fa0, fa0, fa1
	fsw	fa0, 4(a2)
	flw	fa0, 8(a1)
	flw	fa1, 8(a0)
	fsub.s	fa0, fa0, fa1
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
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 8(sp)
	fsw	fa1, 16(sp)
	call	min_caml_sin
	fneg.s	fa0, fa0
	lw	a0, 4(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	flw	fa1, 16(sp)
	fmul.s	fa0, fa0, fa1
	flw	fa1, 8(sp)
	fsw	fa0, 24(sp)
	fmv.s	fa0, fa1
	call	min_caml_cos
	flw	fa1, 24(sp)
	fsw	fa0, 32(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	flw	fa1, 32(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 24(sp)
	call	min_caml_cos
	flw	fa1, 32(sp)
	fmul.s	fa0, fa1, fa0
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
	fmv.s	fa0, fa1
	call	min_caml_sin
	lw	a0, 4(sp)
	flw	fa1, 4(a0)
	fsw	fa0, 16(sp)
	fmv.s	fa0, fa1
	call	min_caml_cos
	lw	a0, 4(sp)
	flw	fa1, 4(a0)
	fsw	fa0, 24(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	lw	a0, 4(sp)
	flw	fa1, 8(a0)
	fsw	fa0, 32(sp)
	fmv.s	fa0, fa1
	call	min_caml_cos
	lw	a0, 4(sp)
	flw	fa1, 8(a0)
	fsw	fa0, 40(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	flw	fa1, 40(sp)
	flw	fa2, 24(sp)
	fmul.s	fa3, fa2, fa1
	flw	fa4, 32(sp)
	flw	fa5, 16(sp)
	fmul.s	fa6, fa5, fa4
	fmul.s	fa7, fa6, fa1
	flw	fs1, 8(sp)
	fmul.s	fs2, fs1, fa0
	fsub.s	fa7, fa7, fs2
	fmul.s	fs2, fs1, fa4
	fmul.s	fs3, fs2, fa1
	fmul.s	fs4, fa5, fa0
	fadd.s	fs3, fs3, fs4
	fmul.s	fs4, fa2, fa0
	fmul.s	fa6, fa6, fa0
	fmul.s	fs5, fs1, fa1
	fadd.s	fa6, fa6, fs5
	fmul.s	fa0, fs2, fa0
	fmul.s	fa1, fa5, fa1
	fsub.s	fa0, fa0, fa1
	fneg.s	fa1, fa4
	fmul.s	fa4, fa5, fa2
	fmul.s	fa2, fs1, fa2
	lw	a0, 0(sp)
	flw	fa5, 0(a0)
	flw	fs1, 4(a0)
	flw	fs2, 8(a0)
	fmul.s	fs5, fa3, fa3
	fmul.s	fs5, fa5, fs5
	fmul.s	fs6, fs4, fs4
	fmul.s	fs6, fs1, fs6
	fadd.s	fs5, fs5, fs6
	fmul.s	fs6, fa1, fa1
	fmul.s	fs6, fs2, fs6
	fadd.s	fs5, fs5, fs6
	fsw	fs5, 0(a0)
	fmul.s	fs5, fa7, fa7
	fmul.s	fs5, fa5, fs5
	fmul.s	fs6, fa6, fa6
	fmul.s	fs6, fs1, fs6
	fadd.s	fs5, fs5, fs6
	fmul.s	fs6, fa4, fa4
	fmul.s	fs6, fs2, fs6
	fadd.s	fs5, fs5, fs6
	fsw	fs5, 4(a0)
	fmul.s	fs5, fs3, fs3
	fmul.s	fs5, fa5, fs5
	fmul.s	fs6, fa0, fa0
	fmul.s	fs6, fs1, fs6
	fadd.s	fs5, fs5, fs6
	fmul.s	fs6, fa2, fa2
	fmul.s	fs6, fs2, fs6
	fadd.s	fs5, fs5, fs6
	fsw	fs5, 8(a0)
	fli	fs5, l_7782
	fmul.s	fs6, fa5, fa7
	fmul.s	fs6, fs6, fs3
	fmul.s	fs7, fs1, fa6
	fmul.s	fs7, fs7, fa0
	fadd.s	fs6, fs6, fs7
	fmul.s	fs7, fs2, fa4
	fmul.s	fs7, fs7, fa2
	fadd.s	fs6, fs6, fs7
	fmul.s	fs6, fs5, fs6
	lw	a0, 4(sp)
	fsw	fs6, 0(a0)
	fmul.s	fa3, fa5, fa3
	fmul.s	fa5, fa3, fs3
	fmul.s	fs1, fs1, fs4
	fmul.s	fa0, fs1, fa0
	fadd.s	fa0, fa5, fa0
	fmul.s	fa1, fs2, fa1
	fmul.s	fa2, fa1, fa2
	fadd.s	fa0, fa0, fa2
	fmul.s	fa0, fs5, fa0
	fsw	fa0, 4(a0)
	fmul.s	fa0, fa3, fa7
	fmul.s	fa2, fs1, fa6
	fadd.s	fa0, fa0, fa2
	fmul.s	fa1, fa1, fa4
	fadd.s	fa0, fa0, fa1
	fmul.s	fa0, fs5, fa0
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
	fle.s	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	li	a1, 2
	sw	a0, 40(sp)
	mv	a0, a1
	fmv.s	fa0, fa1
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
	fmul.s	fa0, fa0, fa1
	lw	a0, 52(sp)
	fsw	fa0, 0(a0)
	fsw	fa1, 56(sp)
	call	min_caml_read_float
	flw	fa1, 56(sp)
	fmul.s	fa0, fa0, fa1
	lw	a0, 52(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	flw	fa1, 56(sp)
	fmul.s	fa0, fa0, fa1
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
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9766
	fli	fa0, l_7670
	b	bne_cont_9767
bne_else_9766:
	fsw	fa0, 72(sp)
	call	sgn_2364
	flw	fa1, 72(sp)
	fmul.s	fa1, fa1, fa1
	fdiv.s	fa0, fa0, fa1
bne_cont_9767:
	lw	a0, 32(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 4(a0)
	flw	fa1, 24(sp)
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9769
	fli	fa0, l_7670
	b	bne_cont_9770
bne_else_9769:
	fsw	fa0, 80(sp)
	call	sgn_2364
	flw	fa1, 80(sp)
	fmul.s	fa1, fa1, fa1
	fdiv.s	fa0, fa0, fa1
bne_cont_9770:
	lw	a0, 32(sp)
	fsw	fa0, 4(a0)
	flw	fa0, 8(a0)
	flw	fa1, 24(sp)
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9771
	fli	fa0, l_7670
	b	bne_cont_9772
bne_else_9771:
	fsw	fa0, 88(sp)
	call	sgn_2364
	flw	fa1, 88(sp)
	fmul.s	fa1, fa1, fa1
	fdiv.s	fa0, fa0, fa1
bne_cont_9772:
	lw	a0, 32(sp)
	fsw	fa0, 8(a0)
	b	beq_cont_9765
beq_else_9764:
	li	t6, 2
	bne	a4, t6, beq_else_9773
	lw	a1, 40(sp)
	xori	a1, a1, 1	# boolean not
	mv	a0, a2
	call	vecunit_sgn_2385
	b	beq_cont_9774
beq_else_9773:
beq_cont_9774:
beq_cont_9765:
	lw	a0, 20(sp)
	bne	a0, zero, beq_else_9775
	b	beq_cont_9776
beq_else_9775:
	lw	a0, 32(sp)
	lw	a1, 52(sp)
	call	rotate_quadratic_matrix_2487
beq_cont_9776:
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
	blt	a0, t6, bge_else_9777
	b	read_object_2492_ret
bge_else_9777:
	sw	s11, 0(sp)
	sw	a2, 4(sp)
	sw	a0, 8(sp)
	mv	s11, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9779
	lw	a0, 4(sp)
	lw	a1, 8(sp)
	sw	a1, 0(a0)
	b	read_object_2492_ret
beq_else_9779:
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
	bne	a0, t6, beq_else_9781
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_net_item_2496_ret
beq_else_9781:
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
	bne	a0, t6, beq_else_9782
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_or_network_2498_ret
beq_else_9782:
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
	bne	a1, t6, beq_else_9783
	b	read_and_network_2500_ret
beq_else_9783:
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
	feq.s	t6, fa3, fa4
	beq	t6, zero, bne_else_9786
	li	a0, 0
	b	solver_rect_surface_2504_ret
bne_else_9786:
	lw	a6, 24(a0)
	lw	a0, 16(a0)
	slli	a7, a2, 2
	add	t6, a1, a7
	flw	fa3, 0(t6)
	fle.s	a7, fa4, fa3
	xori	a7, a7, 1	# boolean not
	xor	a6, a6, a7
	slli	a7, a2, 2
	add	t6, a0, a7
	flw	fa3, 0(t6)
	bne	a6, zero, beq_else_9787
	fneg.s	fa3, fa3
	b	beq_cont_9788
beq_else_9787:
beq_cont_9788:
	fsub.s	fa0, fa3, fa0
	slli	a2, a2, 2
	add	t6, a1, a2
	flw	fa3, 0(t6)
	fdiv.s	fa0, fa0, fa3
	slli	a2, a3, 2
	add	t6, a0, a2
	flw	fa3, 0(t6)
	slli	a2, a3, 2
	add	t6, a1, a2
	flw	fa4, 0(t6)
	fmul.s	fa4, fa0, fa4
	fadd.s	fa1, fa4, fa1
	fabs.s	fa1, fa1
	fle.s	t6, fa3, fa1
	beq	t6, zero, bne_else_9789
	li	a0, 0
	b	solver_rect_surface_2504_ret
bne_else_9789:
	slli	a2, a4, 2
	add	t6, a0, a2
	flw	fa1, 0(t6)
	slli	a0, a4, 2
	add	t6, a1, a0
	flw	fa3, 0(t6)
	fmul.s	fa3, fa0, fa3
	fadd.s	fa2, fa3, fa2
	fabs.s	fa2, fa2
	fle.s	t6, fa1, fa2
	beq	t6, zero, bne_else_9790
	li	a0, 0
	b	solver_rect_surface_2504_ret
bne_else_9790:
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
	bne	a0, zero, beq_else_9791
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
	bne	a0, zero, beq_else_9792
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
	bne	a0, zero, beq_else_9793
	li	a0, 0
	b	solver_rect_2513_ret
beq_else_9793:
	li	a0, 3
	b	solver_rect_2513_ret
beq_else_9792:
	li	a0, 2
	b	solver_rect_2513_ret
beq_else_9791:
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
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9795
	li	a0, 0
	b	solver_surface_2519_ret
bne_else_9795:
	flw	fa1, 24(sp)
	flw	fa2, 16(sp)
	flw	fa3, 8(sp)
	lw	a0, 32(sp)
	fsw	fa0, 40(sp)
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	call	veciprod2_2391
	fneg.s	fa0, fa0
	flw	fa1, 40(sp)
	fdiv.s	fa0, fa0, fa1
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
	fmul.s	fa3, fa0, fa0
	lw	a1, 36(a0)
	lw	a2, 16(a0)
	lw	a0, 12(a0)
	flw	fa4, 0(a2)
	fmul.s	fa3, fa3, fa4
	fmul.s	fa4, fa1, fa1
	flw	fa5, 4(a2)
	fmul.s	fa4, fa4, fa5
	fadd.s	fa3, fa3, fa4
	fmul.s	fa4, fa2, fa2
	flw	fa5, 8(a2)
	fmul.s	fa4, fa4, fa5
	fadd.s	fa3, fa3, fa4
	bne	a0, zero, beq_else_9797
	fmv.s	fa0, fa3
	b	quadratic_2525_ret
beq_else_9797:
	fmul.s	fa4, fa1, fa2
	flw	fa5, 0(a1)
	fmul.s	fa4, fa4, fa5
	fadd.s	fa3, fa3, fa4
	fmul.s	fa2, fa2, fa0
	flw	fa4, 4(a1)
	fmul.s	fa2, fa2, fa4
	fadd.s	fa2, fa3, fa2
	fmul.s	fa0, fa0, fa1
	flw	fa1, 8(a1)
	fmul.s	fa0, fa0, fa1
	fadd.s	fa0, fa2, fa0
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
	fmul.s	fa6, fa0, fa3
	lw	a1, 36(a0)
	lw	a2, 16(a0)
	lw	a0, 12(a0)
	flw	fa7, 0(a2)
	fmul.s	fa6, fa6, fa7
	fmul.s	fa7, fa1, fa4
	flw	fs1, 4(a2)
	fmul.s	fa7, fa7, fs1
	fadd.s	fa6, fa6, fa7
	fmul.s	fa7, fa2, fa5
	flw	fs1, 8(a2)
	fmul.s	fa7, fa7, fs1
	fadd.s	fa6, fa6, fa7
	bne	a0, zero, beq_else_9798
	fmv.s	fa0, fa6
	b	bilinear_2530_ret
beq_else_9798:
	fmul.s	fa7, fa2, fa4
	fmul.s	fs1, fa1, fa5
	fadd.s	fa7, fa7, fs1
	flw	fs1, 0(a1)
	fmul.s	fa7, fa7, fs1
	fmul.s	fa5, fa0, fa5
	fmul.s	fa2, fa2, fa3
	fadd.s	fa2, fa5, fa2
	flw	fa5, 4(a1)
	fmul.s	fa2, fa2, fa5
	fadd.s	fa2, fa7, fa2
	fmul.s	fa0, fa0, fa4
	fmul.s	fa1, fa1, fa3
	fadd.s	fa0, fa0, fa1
	flw	fa1, 8(a1)
	fmul.s	fa0, fa0, fa1
	fadd.s	fa0, fa2, fa0
	fli	fa1, l_7782
	fdiv.s	fa0, fa0, fa1
	fadd.s	fa0, fa6, fa0
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
	fmv.s	fa2, fa5
	fmv.s	fa1, fa4
	fmv.s	fa0, fa3
	call	quadratic_2525
	fli	fa1, l_7670
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9800
	li	a0, 0
	b	solver_second_2538_ret
bne_else_9800:
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
	fmv.s	fa1, fa3
	fmv.s	fa0, fa2
	fmv.s	fa3, fa5
	fmv.s	fa2, fa4
	fmv.s	fa5, fa7
	fmv.s	fa4, fa6
	call	bilinear_2530
	flw	fa1, 24(sp)
	flw	fa2, 16(sp)
	flw	fa3, 8(sp)
	lw	a0, 32(sp)
	fsw	fa0, 56(sp)
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	call	quadratic_2525
	lw	a0, 32(sp)
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, beq_else_9801
	fli	fa1, l_7671
	fsub.s	fa0, fa0, fa1
	b	beq_cont_9802
beq_else_9801:
beq_cont_9802:
	flw	fa1, 56(sp)
	fmul.s	fa2, fa1, fa1
	flw	fa3, 48(sp)
	fmul.s	fa0, fa3, fa0
	fsub.s	fa0, fa2, fa0
	flw	fa2, 40(sp)
	fle.s	t6, fa0, fa2
	beq	t6, zero, bne_else_9803
	li	a0, 0
	b	solver_second_2538_ret
bne_else_9803:
	fsqrt.s	fa0, fa0
	bne	a1, zero, beq_else_9804
	fneg.s	fa0, fa0
	b	beq_cont_9805
beq_else_9804:
beq_cont_9805:
	fsub.s	fa0, fa0, fa1
	fdiv.s	fa0, fa0, fa3
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
	fsub.s	fa0, fa0, fa1
	flw	fa1, 4(a2)
	flw	fa2, 4(a6)
	fsub.s	fa1, fa1, fa2
	flw	fa2, 8(a2)
	flw	fa3, 8(a6)
	fsub.s	fa2, fa2, fa3
	li	t6, 1
	bne	a7, t6, beq_else_9806
	mv	s11, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_2544_ret
beq_else_9806:
	li	t6, 2
	bne	a7, t6, beq_else_9807
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_2544_ret
beq_else_9807:
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
	fsub.s	fa3, fa3, fa0
	flw	fa4, 4(a2)
	fmul.s	fa3, fa3, fa4
	lw	a0, 16(a0)
	flw	fa4, 4(a0)
	flw	fa5, 4(a1)
	fmul.s	fa5, fa3, fa5
	fadd.s	fa5, fa5, fa1
	fabs.s	fa5, fa5
	fle.s	t6, fa4, fa5
	beq	t6, zero, bne_else_9808
	li	a4, 0
	b	bne_cont_9809
bne_else_9808:
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul.s	fa5, fa3, fa5
	fadd.s	fa5, fa5, fa2
	fabs.s	fa5, fa5
	fle.s	t6, fa4, fa5
	beq	t6, zero, bne_else_9810
	li	a4, 0
	b	bne_cont_9811
bne_else_9810:
	flw	fa4, 4(a2)
	fli	fa5, l_7670
	feq.s	a4, fa4, fa5
	xori	a4, a4, 1	# boolean not
bne_cont_9811:
bne_cont_9809:
	bne	a4, zero, beq_else_9812
	flw	fa3, 8(a2)
	fsub.s	fa3, fa3, fa1
	flw	fa4, 12(a2)
	fmul.s	fa3, fa3, fa4
	flw	fa4, 0(a0)
	flw	fa5, 0(a1)
	fmul.s	fa5, fa3, fa5
	fadd.s	fa5, fa5, fa0
	fabs.s	fa5, fa5
	fle.s	t6, fa4, fa5
	beq	t6, zero, bne_else_9813
	li	a4, 0
	b	bne_cont_9814
bne_else_9813:
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul.s	fa5, fa3, fa5
	fadd.s	fa5, fa5, fa2
	fabs.s	fa5, fa5
	fle.s	t6, fa4, fa5
	beq	t6, zero, bne_else_9815
	li	a4, 0
	b	bne_cont_9816
bne_else_9815:
	flw	fa4, 12(a2)
	fli	fa5, l_7670
	feq.s	a4, fa4, fa5
	xori	a4, a4, 1	# boolean not
bne_cont_9816:
bne_cont_9814:
	bne	a4, zero, beq_else_9817
	flw	fa3, 16(a2)
	fsub.s	fa2, fa3, fa2
	flw	fa3, 20(a2)
	fmul.s	fa2, fa2, fa3
	flw	fa3, 0(a0)
	flw	fa4, 0(a1)
	fmul.s	fa4, fa2, fa4
	fadd.s	fa0, fa4, fa0
	fabs.s	fa0, fa0
	fle.s	t6, fa3, fa0
	beq	t6, zero, bne_else_9818
	li	a0, 0
	b	bne_cont_9819
bne_else_9818:
	flw	fa0, 4(a0)
	flw	fa3, 4(a1)
	fmul.s	fa3, fa2, fa3
	fadd.s	fa1, fa3, fa1
	fabs.s	fa1, fa1
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9820
	li	a0, 0
	b	bne_cont_9821
bne_else_9820:
	flw	fa0, 20(a2)
	fli	fa1, l_7670
	feq.s	a0, fa0, fa1
	xori	a0, a0, 1	# boolean not
bne_cont_9821:
bne_cont_9819:
	bne	a0, zero, beq_else_9822
	li	a0, 0
	b	solver_rect_fast_2548_ret
beq_else_9822:
	fsw	fa2, 0(a3)
	li	a0, 3
	b	solver_rect_fast_2548_ret
beq_else_9817:
	fsw	fa3, 0(a3)
	li	a0, 2
	b	solver_rect_fast_2548_ret
beq_else_9812:
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
	fle.s	t6, fa3, fa4
	beq	t6, zero, bne_else_9823
	li	a0, 0
	b	solver_surface_fast_2555_ret
bne_else_9823:
	flw	fa3, 4(a1)
	fmul.s	fa0, fa3, fa0
	flw	fa3, 8(a1)
	fmul.s	fa1, fa3, fa1
	fadd.s	fa0, fa0, fa1
	flw	fa1, 12(a1)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
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
	feq.s	t6, fa3, fa4
	beq	t6, zero, bne_else_9824
	li	a0, 0
	b	solver_second_fast_2561_ret
bne_else_9824:
	flw	fa5, 4(a1)
	fmul.s	fa5, fa5, fa0
	flw	fa6, 8(a1)
	fmul.s	fa6, fa6, fa1
	fadd.s	fa5, fa5, fa6
	flw	fa6, 12(a1)
	fmul.s	fa6, fa6, fa2
	fadd.s	fa5, fa5, fa6
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
	bne	a0, t6, beq_else_9825
	fli	fa1, l_7671
	fsub.s	fa0, fa0, fa1
	b	beq_cont_9826
beq_else_9825:
beq_cont_9826:
	flw	fa1, 24(sp)
	fmul.s	fa2, fa1, fa1
	flw	fa3, 16(sp)
	fmul.s	fa0, fa3, fa0
	fsub.s	fa0, fa2, fa0
	flw	fa2, 8(sp)
	fle.s	t6, fa0, fa2
	beq	t6, zero, bne_else_9827
	li	a0, 0
	b	solver_second_fast_2561_ret
bne_else_9827:
	bne	a1, zero, beq_else_9828
	fsqrt.s	fa0, fa0
	fsub.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 16(a0)
	fmul.s	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	b	beq_cont_9829
beq_else_9828:
	fsqrt.s	fa0, fa0
	fadd.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 16(a0)
	fmul.s	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
beq_cont_9829:
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
	fsub.s	fa0, fa0, fa1
	flw	fa1, 4(a2)
	flw	fa2, 4(a7)
	fsub.s	fa1, fa1, fa2
	flw	fa2, 8(a2)
	flw	fa3, 8(a7)
	fsub.s	fa2, fa2, fa3
	lw	a2, 4(a1)
	lw	a1, 0(a1)
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a2, 0(t6)
	li	t6, 1
	bne	s1, t6, beq_else_9830
	mv	a0, a6
	mv	s11, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast_2567_ret
beq_else_9830:
	li	t6, 2
	bne	s1, t6, beq_else_9831
	mv	a1, a2
	mv	a0, a6
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast_2567_ret
beq_else_9831:
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
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9832
	li	a0, 0
	b	solver_surface_fast2_2571_ret
bne_else_9832:
	flw	fa0, 0(a1)
	flw	fa1, 12(a2)
	fmul.s	fa0, fa0, fa1
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
	feq.s	t6, fa3, fa4
	beq	t6, zero, bne_else_9833
	li	a0, 0
	b	solver_second_fast2_2578_ret
bne_else_9833:
	flw	fa5, 4(a1)
	fmul.s	fa0, fa5, fa0
	flw	fa5, 8(a1)
	fmul.s	fa1, fa5, fa1
	fadd.s	fa0, fa0, fa1
	flw	fa1, 12(a1)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	flw	fa1, 12(a2)
	fmul.s	fa2, fa0, fa0
	fmul.s	fa1, fa3, fa1
	fsub.s	fa1, fa2, fa1
	fle.s	t6, fa1, fa4
	beq	t6, zero, bne_else_9834
	li	a0, 0
	b	solver_second_fast2_2578_ret
bne_else_9834:
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_9835
	fsqrt.s	fa1, fa1
	fsub.s	fa0, fa0, fa1
	flw	fa1, 16(a1)
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 0(a3)
	b	beq_cont_9836
beq_else_9835:
	fsqrt.s	fa1, fa1
	fadd.s	fa0, fa0, fa1
	flw	fa1, 16(a1)
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 0(a3)
beq_cont_9836:
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
	bne	a7, t6, beq_else_9837
	mv	a2, a0
	mv	s11, a4
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast2_2585_ret
beq_else_9837:
	li	t6, 2
	bne	a7, t6, beq_else_9838
	mv	a1, a0
	mv	s11, a2
	mv	a2, a6
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast2_2585_ret
beq_else_9838:
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
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9840
	fsw	fa1, 4(a0)
	b	bne_cont_9841
bne_else_9840:
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a4, 16(a2)
	flw	fa0, 0(a1)
	fle.s	a5, fa1, fa0
	xori	a5, a5, 1	# boolean not
	xor	a3, a3, a5
	flw	fa0, 0(a4)
	bne	a3, zero, beq_else_9842
	fneg.s	fa0, fa0
	b	beq_cont_9843
beq_else_9842:
beq_cont_9843:
	fsw	fa0, 0(a0)
	fli	fa0, l_7671
	flw	fa2, 0(a1)
	fdiv.s	fa0, fa0, fa2
	fsw	fa0, 4(a0)
bne_cont_9841:
	flw	fa0, 4(a1)
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9844
	fsw	fa1, 12(a0)
	b	bne_cont_9845
bne_else_9844:
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a4, 16(a2)
	flw	fa0, 4(a1)
	fle.s	a5, fa1, fa0
	xori	a5, a5, 1	# boolean not
	xor	a3, a3, a5
	flw	fa0, 4(a4)
	bne	a3, zero, beq_else_9846
	fneg.s	fa0, fa0
	b	beq_cont_9847
beq_else_9846:
beq_cont_9847:
	fsw	fa0, 8(a0)
	fli	fa0, l_7671
	flw	fa2, 4(a1)
	fdiv.s	fa0, fa0, fa2
	fsw	fa0, 12(a0)
bne_cont_9845:
	flw	fa0, 8(a1)
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9848
	fsw	fa1, 20(a0)
	b	bne_cont_9849
bne_else_9848:
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a2, 16(a2)
	flw	fa0, 8(a1)
	fle.s	a4, fa1, fa0
	xori	a4, a4, 1	# boolean not
	xor	a3, a3, a4
	flw	fa0, 8(a2)
	bne	a3, zero, beq_else_9850
	fneg.s	fa0, fa0
	b	beq_cont_9851
beq_else_9850:
beq_cont_9851:
	fsw	fa0, 16(a0)
	fli	fa0, l_7671
	flw	fa1, 8(a1)
	fdiv.s	fa0, fa0, fa1
	fsw	fa0, 20(a0)
bne_cont_9849:
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
	fmul.s	fa0, fa0, fa1
	flw	fa1, 4(a1)
	flw	fa2, 4(a2)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a2)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	flw	fa1, 0(sp)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9852
	fsw	fa1, 0(a0)
	b	bne_cont_9853
bne_else_9852:
	fli	fa1, l_7672
	fdiv.s	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 0(a2)
	fdiv.s	fa1, fa1, fa0
	fneg.s	fa1, fa1
	fsw	fa1, 4(a0)
	flw	fa1, 4(a2)
	fdiv.s	fa1, fa1, fa0
	fneg.s	fa1, fa1
	fsw	fa1, 8(a0)
	flw	fa1, 8(a2)
	fdiv.s	fa0, fa1, fa0
	fneg.s	fa0, fa0
	fsw	fa0, 12(a0)
bne_cont_9853:
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
	fmul.s	fa1, fa1, fa2
	fneg.s	fa1, fa1
	flw	fa2, 4(a0)
	flw	fa3, 4(a3)
	fmul.s	fa2, fa2, fa3
	fneg.s	fa2, fa2
	flw	fa3, 8(a0)
	flw	fa4, 8(a3)
	fmul.s	fa3, fa3, fa4
	fneg.s	fa3, fa3
	lw	a3, 16(sp)
	fsw	fa0, 0(a3)
	bne	a1, zero, beq_else_9854
	fsw	fa1, 4(a3)
	fsw	fa2, 8(a3)
	fsw	fa3, 12(a3)
	b	beq_cont_9855
beq_else_9854:
	flw	fa4, 8(a0)
	flw	fa5, 4(a2)
	fmul.s	fa4, fa4, fa5
	flw	fa5, 4(a0)
	flw	fa6, 8(a2)
	fmul.s	fa5, fa5, fa6
	fadd.s	fa4, fa4, fa5
	fli	fa5, l_7782
	fdiv.s	fa4, fa4, fa5
	fsub.s	fa1, fa1, fa4
	fsw	fa1, 4(a3)
	flw	fa1, 8(a0)
	flw	fa4, 0(a2)
	fmul.s	fa1, fa1, fa4
	flw	fa4, 0(a0)
	flw	fa6, 8(a2)
	fmul.s	fa4, fa4, fa6
	fadd.s	fa1, fa1, fa4
	fdiv.s	fa1, fa1, fa5
	fsub.s	fa1, fa2, fa1
	fsw	fa1, 8(a3)
	flw	fa1, 4(a0)
	flw	fa2, 0(a2)
	fmul.s	fa1, fa1, fa2
	flw	fa2, 0(a0)
	flw	fa4, 4(a2)
	fmul.s	fa2, fa2, fa4
	fadd.s	fa1, fa1, fa2
	fdiv.s	fa1, fa1, fa5
	fsub.s	fa1, fa3, fa1
	fsw	fa1, 12(a3)
beq_cont_9855:
	flw	fa1, 0(sp)
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9856
	b	bne_cont_9857
bne_else_9856:
	fli	fa1, l_7671
	fdiv.s	fa0, fa1, fa0
	fsw	fa0, 16(a3)
bne_cont_9857:
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
	blt	a1, zero, bge_else_9858
	slli	a3, a1, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	li	t6, 1
	bne	a5, t6, beq_else_9859
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
	b	beq_cont_9860
beq_else_9859:
	li	t6, 2
	bne	a5, t6, beq_else_9861
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
	b	beq_cont_9862
beq_else_9861:
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
beq_cont_9862:
beq_cont_9860:
	addi	a1, a1, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_9858:
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
	blt	a1, zero, bge_else_9864
	slli	a3, a1, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	lw	a3, 40(a2)
	lw	a4, 20(a2)
	lw	a5, 16(a2)
	lw	a6, 4(a2)
	flw	fa0, 0(a0)
	flw	fa1, 0(a4)
	fsub.s	fa0, fa0, fa1
	fsw	fa0, 0(a3)
	flw	fa0, 4(a0)
	flw	fa1, 4(a4)
	fsub.s	fa0, fa0, fa1
	fsw	fa0, 4(a3)
	flw	fa0, 8(a0)
	flw	fa1, 8(a4)
	fsub.s	fa0, fa0, fa1
	fsw	fa0, 8(a3)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	li	t6, 2
	bne	a6, t6, beq_else_9865
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	sw	a3, 12(sp)
	mv	a0, a5
	call	veciprod2_2391
	lw	a0, 12(sp)
	fsw	fa0, 12(a0)
	b	beq_cont_9866
beq_else_9865:
	li	t6, 2
	bgt	a6, t6, ble_else_9867
	b	ble_cont_9868
ble_else_9867:
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	sw	a3, 12(sp)
	sw	a6, 16(sp)
	mv	a0, a2
	call	quadratic_2525
	lw	a0, 16(sp)
	li	t6, 3
	bne	a0, t6, beq_else_9869
	fli	fa1, l_7671
	fsub.s	fa0, fa0, fa1
	b	beq_cont_9870
beq_else_9869:
beq_cont_9870:
	lw	a0, 12(sp)
	fsw	fa0, 12(a0)
ble_cont_9868:
beq_cont_9866:
	lw	a0, 8(sp)
	addi	a1, a0, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_9864:
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
	fabs.s	fa0, fa0
	fle.s	t6, fa3, fa0
	beq	t6, zero, bne_else_9872
	li	a0, 0
	b	bne_cont_9873
bne_else_9872:
	flw	fa0, 4(a0)
	fabs.s	fa1, fa1
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9874
	li	a0, 0
	b	bne_cont_9875
bne_else_9874:
	flw	fa0, 8(a0)
	fabs.s	fa1, fa2
	fle.s	a0, fa0, fa1
	xori	a0, a0, 1	# boolean not
bne_cont_9875:
bne_cont_9873:
	bne	a0, zero, beq_else_9876
	xori	a0, a1, 1	# boolean not
	b	is_rect_outside_2607_ret
beq_else_9876:
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
	fle.s	a0, fa1, fa0
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
	bne	a0, t6, beq_else_9877
	fli	fa1, l_7671
	fsub.s	fa0, fa0, fa1
	b	beq_cont_9878
beq_else_9877:
beq_cont_9878:
	fli	fa1, l_7670
	fle.s	a0, fa1, fa0
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
	fsub.s	fa0, fa0, fa3
	flw	fa3, 4(a1)
	fsub.s	fa1, fa1, fa3
	flw	fa3, 8(a1)
	fsub.s	fa2, fa2, fa3
	li	t6, 1
	bne	a2, t6, beq_else_9879
	call	is_rect_outside_2607
	b	is_outside_2622_ret
beq_else_9879:
	li	t6, 2
	bne	a2, t6, beq_else_9880
	call	is_plane_outside_2612
	b	is_outside_2622_ret
beq_else_9880:
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
	bne	a3, t6, beq_else_9881
	li	a0, 1
	b	check_all_inside_2627_ret
beq_else_9881:
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
	bne	a0, zero, beq_else_9882
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
beq_else_9882:
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
	bne	s2, t6, beq_else_9883
	li	a0, 0
	b	shadow_check_and_group_2633_ret
beq_else_9883:
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
	bne	a0, zero, beq_else_9884
	li	a0, 0
	b	beq_cont_9885
beq_else_9884:
	fli	fa1, l_8024
	fle.s	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
beq_cont_9885:
	bne	a0, zero, beq_else_9886
	lw	a0, 28(sp)
	slli	a0, a0, 2
	lw	a1, 24(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_9887
	li	a0, 0
	b	shadow_check_and_group_2633_ret
beq_else_9887:
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_and_group_2633_ret
beq_else_9886:
	fli	fa1, l_8025
	fadd.s	fa0, fa0, fa1
	lw	a0, 8(sp)
	flw	fa1, 0(a0)
	fmul.s	fa1, fa1, fa0
	lw	a1, 4(sp)
	flw	fa2, 0(a1)
	fadd.s	fa1, fa1, fa2
	flw	fa2, 4(a0)
	fmul.s	fa2, fa2, fa0
	flw	fa3, 4(a1)
	fadd.s	fa2, fa2, fa3
	flw	fa3, 8(a0)
	fmul.s	fa0, fa3, fa0
	flw	fa3, 8(a1)
	fadd.s	fa0, fa0, fa3
	li	a0, 0
	lw	a1, 12(sp)
	lw	s11, 0(sp)
	fmv.s	ft11, fa2
	fmv.s	fa2, fa0
	fmv.s	fa0, fa1
	fmv.s	fa1, ft11
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9888
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_and_group_2633_ret
beq_else_9888:
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
	bne	a4, t6, beq_else_9889
	li	a0, 0
	b	shadow_check_one_or_group_2636_ret
beq_else_9889:
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
	bne	a0, zero, beq_else_9890
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_group_2636_ret
beq_else_9890:
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
	bne	s1, t6, beq_else_9891
	li	a0, 0
	b	shadow_check_one_or_matrix_2639_ret
beq_else_9891:
	sw	a7, 0(sp)
	sw	a4, 4(sp)
	sw	a1, 8(sp)
	sw	s11, 12(sp)
	sw	a0, 16(sp)
	li	t6, 99
	bne	s1, t6, beq_else_9892
	li	a0, 1
	b	beq_cont_9893
beq_else_9892:
	sw	a3, 20(sp)
	mv	a1, a5
	mv	a0, s1
	mv	s11, a2
	mv	a2, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9894
	li	a0, 0
	b	beq_cont_9895
beq_else_9894:
	fli	fa0, l_8037
	lw	a0, 20(sp)
	flw	fa1, 0(a0)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9896
	li	a0, 0
	b	bne_cont_9897
bne_else_9896:
	li	a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9898
	li	a0, 0
	b	beq_cont_9899
beq_else_9898:
	li	a0, 1
beq_cont_9899:
bne_cont_9897:
beq_cont_9895:
beq_cont_9893:
	bne	a0, zero, beq_else_9900
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix_2639_ret
beq_else_9900:
	li	a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9901
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix_2639_ret
beq_else_9901:
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
	bne	s5, t6, beq_else_9902
	b	solve_each_element_2642_ret
beq_else_9902:
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
	bne	a0, zero, beq_else_9904
	lw	a0, 48(sp)
	slli	a0, a0, 2
	lw	a1, 44(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_9905
	b	solve_each_element_2642_ret
beq_else_9905:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solve_each_element_2642_ret
beq_else_9904:
	lw	a1, 24(sp)
	flw	fa0, 0(a1)
	fli	fa1, l_7670
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9907
	b	bne_cont_9908
bne_else_9907:
	lw	a1, 20(sp)
	flw	fa1, 0(a1)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_9909
	b	bne_cont_9910
bne_else_9909:
	fli	fa1, l_8025
	fadd.s	fa0, fa0, fa1
	lw	a2, 28(sp)
	flw	fa1, 0(a2)
	fmul.s	fa1, fa1, fa0
	lw	a3, 16(sp)
	flw	fa2, 0(a3)
	fadd.s	fa1, fa1, fa2
	flw	fa2, 4(a2)
	fmul.s	fa2, fa2, fa0
	flw	fa3, 4(a3)
	fadd.s	fa2, fa2, fa3
	flw	fa3, 8(a2)
	fmul.s	fa3, fa3, fa0
	flw	fa4, 8(a3)
	fadd.s	fa3, fa3, fa4
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
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9911
	b	beq_cont_9912
beq_else_9911:
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
beq_cont_9912:
bne_cont_9910:
bne_cont_9908:
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
	bne	a5, t6, beq_else_9913
	b	solve_one_or_network_2646_ret
beq_else_9913:
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
	bne	s2, t6, beq_else_9915
	b	trace_or_matrix_2650_ret
beq_else_9915:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	li	t6, 99
	bne	s2, t6, beq_else_9917
	li	a3, 1
	mv	a1, s1
	mv	a0, a3
	mv	s11, a7
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_9918
beq_else_9917:
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
	bne	a0, zero, beq_else_9919
	b	beq_cont_9920
beq_else_9919:
	lw	a0, 28(sp)
	flw	fa0, 0(a0)
	lw	a0, 24(sp)
	flw	fa1, 0(a0)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_9921
	b	bne_cont_9922
bne_else_9921:
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bne_cont_9922:
beq_cont_9920:
beq_cont_9918:
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
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9923
	li	a0, 0
	b	judge_intersection_2654_ret
bne_else_9923:
	fli	fa1, l_8062
	fle.s	a0, fa1, fa0
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
	bne	s6, t6, beq_else_9924
	b	solve_each_element_fast_2656_ret
beq_else_9924:
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
	bne	a0, zero, beq_else_9926
	lw	a0, 52(sp)
	slli	a0, a0, 2
	lw	a1, 48(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_9927
	b	solve_each_element_fast_2656_ret
beq_else_9927:
	lw	a0, 44(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solve_each_element_fast_2656_ret
beq_else_9926:
	lw	a1, 28(sp)
	flw	fa0, 0(a1)
	fli	fa1, l_7670
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9929
	b	bne_cont_9930
bne_else_9929:
	lw	a1, 24(sp)
	flw	fa1, 0(a1)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_9931
	b	bne_cont_9932
bne_else_9931:
	fli	fa1, l_8025
	fadd.s	fa0, fa0, fa1
	lw	a2, 20(sp)
	flw	fa1, 0(a2)
	fmul.s	fa1, fa1, fa0
	lw	a3, 16(sp)
	flw	fa2, 0(a3)
	fadd.s	fa1, fa1, fa2
	flw	fa2, 4(a2)
	fmul.s	fa2, fa2, fa0
	flw	fa3, 4(a3)
	fadd.s	fa2, fa2, fa3
	flw	fa3, 8(a2)
	fmul.s	fa3, fa3, fa0
	flw	fa4, 8(a3)
	fadd.s	fa3, fa3, fa4
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
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9934
	b	beq_cont_9935
beq_else_9934:
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
beq_cont_9935:
bne_cont_9932:
bne_cont_9930:
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
	bne	a5, t6, beq_else_9936
	b	solve_one_or_network_fast_2660_ret
beq_else_9936:
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
	bne	s1, t6, beq_else_9938
	b	trace_or_matrix_fast_2664_ret
beq_else_9938:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	li	t6, 99
	bne	s1, t6, beq_else_9940
	li	a3, 1
	mv	a1, a7
	mv	a0, a3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_9941
beq_else_9940:
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a3, 24(sp)
	sw	a5, 28(sp)
	mv	a1, a2
	mv	a0, s1
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9942
	b	beq_cont_9943
beq_else_9942:
	lw	a0, 28(sp)
	flw	fa0, 0(a0)
	lw	a0, 24(sp)
	flw	fa1, 0(a0)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_9944
	b	bne_cont_9945
bne_else_9944:
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bne_cont_9945:
beq_cont_9943:
beq_cont_9941:
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
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9946
	li	a0, 0
	b	judge_intersection_fast_2668_ret
bne_else_9946:
	fli	fa1, l_8062
	fle.s	a0, fa1, fa0
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
	fneg.s	fa0, fa0
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
	fneg.s	fa0, fa0
	fsw	fa0, 0(a1)
	flw	fa0, 4(a0)
	fneg.s	fa0, fa0
	fsw	fa0, 4(a1)
	flw	fa0, 8(a0)
	fneg.s	fa0, fa0
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
	fsub.s	fa0, fa0, fa1
	flw	fa1, 4(a2)
	flw	fa2, 4(a5)
	fsub.s	fa1, fa1, fa2
	flw	fa2, 8(a2)
	flw	fa3, 8(a5)
	fsub.s	fa2, fa2, fa3
	flw	fa3, 0(a6)
	fmul.s	fa3, fa0, fa3
	flw	fa4, 4(a6)
	fmul.s	fa4, fa1, fa4
	flw	fa5, 8(a6)
	fmul.s	fa5, fa2, fa5
	bne	a0, zero, beq_else_9949
	fsw	fa3, 0(a1)
	fsw	fa4, 4(a1)
	fsw	fa5, 8(a1)
	b	beq_cont_9950
beq_else_9949:
	flw	fa6, 8(a3)
	fmul.s	fa6, fa1, fa6
	flw	fa7, 4(a3)
	fmul.s	fa7, fa2, fa7
	fadd.s	fa6, fa6, fa7
	fli	fa7, l_7782
	fdiv.s	fa6, fa6, fa7
	fadd.s	fa3, fa3, fa6
	fsw	fa3, 0(a1)
	flw	fa3, 8(a3)
	fmul.s	fa3, fa0, fa3
	flw	fa6, 0(a3)
	fmul.s	fa2, fa2, fa6
	fadd.s	fa2, fa3, fa2
	fdiv.s	fa2, fa2, fa7
	fadd.s	fa2, fa4, fa2
	fsw	fa2, 4(a1)
	flw	fa2, 4(a3)
	fmul.s	fa0, fa0, fa2
	flw	fa2, 0(a3)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	fdiv.s	fa0, fa0, fa7
	fadd.s	fa0, fa5, fa0
	fsw	fa0, 8(a1)
beq_cont_9950:
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
	bne	a4, t6, beq_else_9951
	mv	a0, a1
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	get_nvector_2676_ret
beq_else_9951:
	li	t6, 2
	bne	a4, t6, beq_else_9952
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	get_nvector_2676_ret
beq_else_9952:
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
	bne	a0, t6, beq_else_9953
	flw	fa0, 0(a1)
	flw	fa1, 0(a4)
	fsub.s	fa0, fa0, fa1
	fli	fa1, l_8153
	fmul.s	fa2, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa1, 8(sp)
	sw	a4, 16(sp)
	sw	a1, 20(sp)
	fsw	fa0, 24(sp)
	fmv.s	fa0, fa2
	call	min_caml_floor
	fli	fa1, l_8154
	fmul.s	fa0, fa0, fa1
	fli	fa2, l_8143
	flw	fa3, 24(sp)
	fsub.s	fa0, fa3, fa0
	fle.s	a0, fa2, fa0
	xori	a0, a0, 1	# boolean not
	lw	a1, 20(sp)
	flw	fa0, 8(a1)
	lw	a1, 16(sp)
	flw	fa3, 8(a1)
	fsub.s	fa0, fa0, fa3
	flw	fa3, 8(sp)
	fmul.s	fa3, fa0, fa3
	sw	a0, 32(sp)
	fsw	fa2, 40(sp)
	fsw	fa0, 48(sp)
	fsw	fa1, 56(sp)
	fmv.s	fa0, fa3
	call	min_caml_floor
	flw	fa1, 56(sp)
	fmul.s	fa0, fa0, fa1
	flw	fa1, 48(sp)
	fsub.s	fa0, fa1, fa0
	flw	fa1, 40(sp)
	fle.s	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	lw	a1, 32(sp)
	bne	a1, zero, beq_else_9956
	bne	a0, zero, beq_else_9958
	fli	fa0, l_8136
	b	beq_cont_9959
beq_else_9958:
	fli	fa0, l_7670
beq_cont_9959:
	b	beq_cont_9957
beq_else_9956:
	bne	a0, zero, beq_else_9960
	fli	fa0, l_7670
	b	beq_cont_9961
beq_else_9960:
	fli	fa0, l_8136
beq_cont_9961:
beq_cont_9957:
	lw	a0, 0(sp)
	fsw	fa0, 4(a0)
	b	utexture_2679_ret
beq_else_9953:
	li	t6, 2
	bne	a0, t6, beq_else_9963
	flw	fa0, 4(a1)
	fli	fa1, l_8147
	fmul.s	fa0, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa1, 64(sp)
	sw	a1, 20(sp)
	call	min_caml_sin
	lw	a0, 20(sp)
	flw	fa1, 4(a0)
	flw	fa2, 64(sp)
	fmul.s	fa1, fa1, fa2
	fsw	fa0, 72(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	flw	fa1, 72(sp)
	fmul.s	fa0, fa1, fa0
	fli	fa1, l_8136
	fmul.s	fa2, fa1, fa0
	lw	a0, 0(sp)
	fsw	fa2, 0(a0)
	fli	fa2, l_7671
	fsub.s	fa0, fa2, fa0
	fmul.s	fa0, fa1, fa0
	fsw	fa0, 4(a0)
	b	utexture_2679_ret
beq_else_9963:
	li	t6, 3
	bne	a0, t6, beq_else_9965
	flw	fa0, 0(a1)
	flw	fa1, 0(a4)
	fsub.s	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a4)
	fsub.s	fa1, fa1, fa2
	fmul.s	fa0, fa0, fa0
	fmul.s	fa1, fa1, fa1
	fadd.s	fa0, fa0, fa1
	fsqrt.s	fa0, fa0
	fli	fa1, l_8143
	fdiv.s	fa0, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa0, 80(sp)
	call	min_caml_floor
	flw	fa1, 80(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l_8130
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 88(sp)
	call	min_caml_cos
	flw	fa1, 88(sp)
	fsw	fa0, 96(sp)
	fmv.s	fa0, fa1
	call	min_caml_cos
	flw	fa1, 96(sp)
	fmul.s	fa0, fa1, fa0
	fli	fa1, l_8136
	fmul.s	fa2, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa2, 4(a0)
	fli	fa2, l_7671
	fsub.s	fa0, fa2, fa0
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 8(a0)
	b	utexture_2679_ret
beq_else_9965:
	li	t6, 4
	bne	a0, t6, beq_else_9967
	flw	fa0, 0(a1)
	flw	fa1, 0(a4)
	fsub.s	fa0, fa0, fa1
	flw	fa1, 0(a5)
	fsqrt.s	fa1, fa1
	fmul.s	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a4)
	fsub.s	fa1, fa1, fa2
	flw	fa2, 8(a5)
	fsqrt.s	fa2, fa2
	fmul.s	fa1, fa1, fa2
	fmul.s	fa2, fa0, fa0
	fmul.s	fa3, fa1, fa1
	fadd.s	fa2, fa2, fa3
	fli	fa3, l_8127
	fabs.s	fa4, fa0
	sw	a2, 0(sp)
	fsw	fa3, 104(sp)
	fsw	fa2, 112(sp)
	sw	a5, 120(sp)
	sw	a4, 16(sp)
	sw	a1, 20(sp)
	fle.s	t6, fa3, fa4
	beq	t6, zero, bne_else_9968
	fdiv.s	fa0, fa1, fa0
	fabs.s	fa0, fa0
	call	min_caml_atan
	fli	fa1, l_8129
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_8130
	fdiv.s	fa0, fa0, fa1
	b	bne_cont_9969
bne_else_9968:
	fli	fa0, l_8128
bne_cont_9969:
	fsw	fa0, 128(sp)
	call	min_caml_floor
	flw	fa1, 128(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 20(sp)
	flw	fa1, 4(a0)
	lw	a0, 16(sp)
	flw	fa2, 4(a0)
	fsub.s	fa1, fa1, fa2
	lw	a0, 120(sp)
	flw	fa2, 4(a0)
	fsqrt.s	fa2, fa2
	fmul.s	fa1, fa1, fa2
	flw	fa2, 112(sp)
	fabs.s	fa3, fa2
	flw	fa4, 104(sp)
	fsw	fa0, 136(sp)
	fle.s	t6, fa4, fa3
	beq	t6, zero, bne_else_9971
	fdiv.s	fa1, fa1, fa2
	fabs.s	fa1, fa1
	fmv.s	fa0, fa1
	call	min_caml_atan
	fli	fa1, l_8129
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_8130
	fdiv.s	fa0, fa0, fa1
	b	bne_cont_9972
bne_else_9971:
	fli	fa0, l_8128
bne_cont_9972:
	fsw	fa0, 144(sp)
	call	min_caml_floor
	flw	fa1, 144(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l_8134
	fli	fa2, l_8135
	flw	fa3, 136(sp)
	fsub.s	fa3, fa2, fa3
	fmul.s	fa3, fa3, fa3
	fsub.s	fa1, fa1, fa3
	fsub.s	fa0, fa2, fa0
	fmul.s	fa0, fa0, fa0
	fsub.s	fa0, fa1, fa0
	fli	fa1, l_7670
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_9973
	b	bne_cont_9974
bne_else_9973:
	fli	fa0, l_7670
bne_cont_9974:
	fli	fa1, l_8136
	fmul.s	fa0, fa1, fa0
	fli	fa1, l_8137
	fdiv.s	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 8(a0)
beq_else_9967:
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
	fle.s	t6, fa0, fa3
	beq	t6, zero, bne_else_9978
	b	bne_cont_9979
bne_else_9978:
	call	vecaccum_2396
bne_cont_9979:
	flw	fa0, 16(sp)
	flw	fa1, 24(sp)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_9980
	b	add_light_2682_ret
bne_else_9980:
	fmul.s	fa0, fa1, fa1
	fmul.s	fa0, fa0, fa0
	flw	fa1, 8(sp)
	fmul.s	fa0, fa0, fa1
	lw	a0, 0(sp)
	flw	fa1, 0(a0)
	fadd.s	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fadd.s	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fadd.s	fa0, fa1, fa0
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
	blt	a0, zero, bge_else_9983
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
	bne	a0, zero, beq_else_9984
	b	beq_cont_9985
beq_else_9984:
	lw	a0, 64(sp)
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, 60(sp)
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 56(sp)
	bne	a0, a1, beq_else_9986
	li	a0, 0
	lw	a1, 52(sp)
	lw	a1, 0(a1)
	lw	s11, 48(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9988
	lw	a0, 44(sp)
	lw	a1, 0(a0)
	lw	a0, 40(sp)
	sw	a1, 68(sp)
	call	veciprod_2388
	flw	fa1, 24(sp)
	flw	fa2, 32(sp)
	fmul.s	fa3, fa2, fa1
	fmul.s	fa0, fa3, fa0
	lw	a0, 20(sp)
	lw	a1, 68(sp)
	fsw	fa0, 72(sp)
	call	veciprod_2388
	flw	fa1, 32(sp)
	fmul.s	fa1, fa1, fa0
	flw	fa0, 72(sp)
	flw	fa2, 8(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_9989
beq_else_9988:
beq_cont_9989:
	b	beq_cont_9987
beq_else_9986:
beq_cont_9987:
beq_cont_9985:
	lw	a0, 4(sp)
	addi	a0, a0, -1
	flw	fa0, 24(sp)
	flw	fa1, 8(sp)
	lw	a1, 20(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_9983:
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
	bgt	a0, t6, ble_else_9991
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
	bne	a0, zero, beq_else_9994
	li	a0, -1
	lw	a1, 132(sp)
	slli	a2, a1, 2
	lw	a3, 128(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	bne	a1, zero, beq_else_9995
	b	trace_ray_2691_ret
beq_else_9995:
	lw	a0, 124(sp)
	lw	a1, 120(sp)
	call	veciprod_2388
	fneg.s	fa0, fa0
	fli	fa1, l_7670
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9997
	b	trace_ray_2691_ret
bne_else_9997:
	fmul.s	fa1, fa0, fa0
	fmul.s	fa0, fa1, fa0
	flw	fa1, 112(sp)
	fmul.s	fa0, fa0, fa1
	lw	a0, 104(sp)
	flw	fa1, 0(a0)
	fmul.s	fa0, fa0, fa1
	lw	a0, 100(sp)
	flw	fa1, 0(a0)
	fadd.s	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fadd.s	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fadd.s	fa0, fa1, fa0
	fsw	fa0, 8(a0)
	b	trace_ray_2691_ret
beq_else_9994:
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
	fmul.s	fa0, fa0, fa1
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
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10001
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
	fmul.s	fa0, fa0, fa1
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
	b	bne_cont_10002
bne_else_10001:
	li	a1, 0
	lw	a2, 132(sp)
	slli	a3, a2, 2
	lw	a4, 64(sp)
	add	t6, a4, a3
	sw	a1, 0(t6)
bne_cont_10002:
	fli	fa0, l_8181
	lw	a0, 124(sp)
	lw	a1, 48(sp)
	fsw	fa0, 168(sp)
	call	veciprod_2388
	flw	fa1, 168(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 124(sp)
	lw	a1, 48(sp)
	call	vecaccum_2396
	lw	a0, 152(sp)
	flw	fa0, 4(a0)
	flw	fa1, 112(sp)
	fmul.s	fa0, fa1, fa0
	li	a1, 0
	lw	a2, 44(sp)
	lw	a2, 0(a2)
	lw	s11, 40(sp)
	fsw	fa0, 176(sp)
	mv	a0, a1
	mv	a1, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10004
	lw	a0, 48(sp)
	lw	a1, 120(sp)
	call	veciprod_2388
	fneg.s	fa0, fa0
	flw	fa1, 144(sp)
	fmul.s	fa0, fa0, fa1
	lw	a0, 124(sp)
	lw	a1, 120(sp)
	fsw	fa0, 184(sp)
	call	veciprod_2388
	fneg.s	fa1, fa0
	flw	fa0, 184(sp)
	flw	fa2, 176(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10005
beq_else_10004:
beq_cont_10005:
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
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10006
	b	trace_ray_2691_ret
bne_else_10006:
	lw	a0, 132(sp)
	li	t6, 4
	blt	a0, t6, bge_else_10008
	b	bge_cont_10009
bge_else_10008:
	addi	a1, a0, 1
	li	a2, -1
	slli	a1, a1, 2
	lw	a3, 128(sp)
	add	t6, a3, a1
	sw	a2, 0(t6)
bge_cont_10009:
	lw	a1, 136(sp)
	li	t6, 2
	bne	a1, t6, beq_else_10010
	fli	fa0, l_7671
	lw	a1, 152(sp)
	flw	fa2, 0(a1)
	fsub.s	fa0, fa0, fa2
	fmul.s	fa0, fa1, fa0
	addi	a0, a0, 1
	lw	a1, 4(sp)
	flw	fa1, 0(a1)
	flw	fa2, 16(sp)
	fadd.s	fa1, fa2, fa1
	lw	a1, 124(sp)
	lw	a2, 8(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10011
beq_else_10010:
beq_cont_10011:
ble_else_9991:
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
	bne	a0, zero, beq_else_10014
	b	trace_diffuse_ray_2697_ret
beq_else_10014:
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
	bne	a0, zero, beq_else_10016
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	call	veciprod_2388
	fneg.s	fa0, fa0
	fli	fa1, l_7670
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10017
	fli	fa0, l_7670
	b	bne_cont_10018
bne_else_10017:
bne_cont_10018:
	flw	fa1, 8(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 56(sp)
	lw	a0, 28(a0)
	flw	fa1, 0(a0)
	fmul.s	fa0, fa0, fa1
	lw	a0, 4(sp)
	lw	a1, 0(sp)
	call	vecaccum_2396
beq_else_10016:
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
	blt	a3, zero, bge_else_10020
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
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10021
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l_8205
	fdiv.s	fa0, fa0, fa1
	lw	s11, 12(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	bne_cont_10022
bne_else_10021:
	lw	a0, 20(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l_8203
	fdiv.s	fa0, fa0, fa1
	lw	s11, 12(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bne_cont_10022:
	lw	a0, 20(sp)
	addi	a3, a0, -2
	lw	a0, 16(sp)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_10020:
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
	bne	a0, zero, beq_else_10024
	b	beq_cont_10025
beq_else_10024:
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
beq_cont_10025:
	lw	a0, 20(sp)
	li	t6, 1
	bne	a0, t6, beq_else_10026
	b	beq_cont_10027
beq_else_10026:
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
beq_cont_10027:
	lw	a0, 20(sp)
	li	t6, 2
	bne	a0, t6, beq_else_10028
	b	beq_cont_10029
beq_else_10028:
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
beq_cont_10029:
	lw	a0, 20(sp)
	li	t6, 3
	bne	a0, t6, beq_else_10030
	b	beq_cont_10031
beq_else_10030:
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
beq_cont_10031:
	lw	a0, 20(sp)
	li	t6, 4
	bne	a0, t6, beq_else_10032
	b	trace_diffuse_ray_80percent_2709_ret
beq_else_10032:
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
	bgt	a1, t6, ble_else_10034
	lw	a3, 12(a0)
	lw	a4, 8(a0)
	slli	a5, a1, 2
	add	t6, a4, a5
	lw	a4, 0(t6)
	blt	a4, zero, bge_else_10035
	slli	a4, a1, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	bne	a3, zero, beq_else_10036
	b	beq_cont_10037
beq_else_10036:
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10037:
	lw	a0, 8(sp)
	addi	a1, a0, 1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_10035:
ble_else_10034:
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
	bgt	a3, a4, ble_else_10040
	li	a0, 0
	b	neighbors_exist_2725_ret
ble_else_10040:
	bgt	a1, zero, ble_else_10041
	li	a0, 0
	b	neighbors_exist_2725_ret
ble_else_10041:
	lw	a1, 0(a2)
	addi	a2, a0, 1
	bgt	a1, a2, ble_else_10042
	li	a0, 0
	b	neighbors_exist_2725_ret
ble_else_10042:
	bgt	a0, zero, ble_else_10043
	li	a0, 0
	b	neighbors_exist_2725_ret
ble_else_10043:
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
	bne	a1, a5, beq_else_10044
	slli	a1, a0, 2
	add	t6, a3, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, beq_else_10045
	addi	a1, a0, -1
	slli	a1, a1, 2
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, beq_else_10046
	addi	a0, a0, 1
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a0, 8(a0)
	slli	a1, a4, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	bne	a0, a5, beq_else_10047
	li	a0, 1
	b	neighbors_are_available_2732_ret
beq_else_10047:
	li	a0, 0
	b	neighbors_are_available_2732_ret
beq_else_10046:
	li	a0, 0
	b	neighbors_are_available_2732_ret
beq_else_10045:
	li	a0, 0
	b	neighbors_are_available_2732_ret
beq_else_10044:
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
	bgt	a5, t6, ble_else_10048
	lw	s2, 12(s1)
	lw	s1, 8(s1)
	slli	s3, a5, 2
	add	t6, s1, s3
	lw	s1, 0(t6)
	blt	s1, zero, bge_else_10049
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
	bne	a0, zero, beq_else_10050
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
beq_else_10050:
	lw	a4, 24(sp)
	slli	a0, a4, 2
	lw	a1, 20(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	bne	a0, zero, beq_else_10051
	b	beq_cont_10052
beq_else_10051:
	lw	a0, 36(sp)
	lw	a1, 12(sp)
	lw	a2, 32(sp)
	lw	a3, 8(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10052:
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
bge_else_10049:
ble_else_10048:
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
	bgt	a0, t6, ble_else_10055
	blt	a0, zero, bge_else_10057
	b	bge_cont_10058
bge_else_10057:
	li	a0, 0
bge_cont_10058:
	b	ble_cont_10056
ble_else_10055:
	li	a0, 255
ble_cont_10056:
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
	bgt	a1, t6, ble_else_10059
	lw	a6, 28(a0)
	lw	a7, 24(a0)
	lw	s1, 20(a0)
	lw	s2, 12(a0)
	lw	s3, 8(a0)
	lw	s4, 4(a0)
	slli	s5, a1, 2
	add	t6, s3, s5
	lw	s3, 0(t6)
	blt	s3, zero, bge_else_10060
	slli	s3, a1, 2
	add	t6, s2, s3
	lw	s2, 0(t6)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	bne	s2, zero, beq_else_10061
	b	beq_cont_10062
beq_else_10061:
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
beq_cont_10062:
	lw	a0, 8(sp)
	addi	a1, a0, 1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_10060:
ble_else_10059:
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
	blt	a1, zero, bge_else_10065
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
	fmul.s	fa0, fa1, fa0
	lw	a0, 72(sp)
	flw	fa1, 0(a0)
	fmul.s	fa1, fa0, fa1
	flw	fa2, 64(sp)
	fadd.s	fa1, fa1, fa2
	lw	a1, 56(sp)
	fsw	fa1, 0(a1)
	flw	fa1, 4(a0)
	fmul.s	fa1, fa0, fa1
	flw	fa3, 48(sp)
	fadd.s	fa1, fa1, fa3
	fsw	fa1, 4(a1)
	flw	fa1, 8(a0)
	fmul.s	fa0, fa0, fa1
	flw	fa1, 40(sp)
	fadd.s	fa0, fa0, fa1
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
bge_else_10065:
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
	fmul.s	fa0, fa1, fa0
	lw	a0, 20(sp)
	flw	fa1, 0(a0)
	fmul.s	fa1, fa0, fa1
	lw	a1, 16(sp)
	flw	fa2, 0(a1)
	fadd.s	fa1, fa1, fa2
	flw	fa2, 4(a0)
	fmul.s	fa2, fa0, fa2
	flw	fa3, 4(a1)
	fadd.s	fa2, fa2, fa3
	flw	fa3, 8(a0)
	fmul.s	fa0, fa0, fa3
	flw	fa3, 8(a1)
	fadd.s	fa0, fa0, fa3
	lw	a0, 12(sp)
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	fmv.s	ft11, fa2
	fmv.s	fa2, fa0
	fmv.s	fa0, fa1
	fmv.s	fa1, ft11
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
	bgt	s2, a0, ble_else_10070
	b	scan_pixel_2765_ret
ble_else_10070:
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
	bne	a0, zero, beq_else_10072
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
	b	beq_cont_10073
beq_else_10072:
	li	a5, 0
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 8(sp)
	lw	a3, 20(sp)
	lw	a4, 24(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10073:
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
	bgt	s1, a0, ble_else_10074
	b	scan_line_2771_ret
ble_else_10074:
	lw	a7, 4(a7)
	addi	a7, a7, -1
	sw	s11, 0(sp)
	sw	a4, 4(sp)
	sw	a3, 8(sp)
	sw	a2, 12(sp)
	sw	a1, 16(sp)
	sw	a0, 20(sp)
	sw	a5, 24(sp)
	bgt	a7, a0, ble_else_10076
	b	ble_cont_10077
ble_else_10076:
	addi	a7, a0, 1
	mv	a2, a4
	mv	a1, a7
	mv	a0, a3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
ble_cont_10077:
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
	blt	a1, zero, bge_else_10079
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
bge_else_10079:
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
	fmul.s	fa0, fa0, fa0
	fli	fa2, l_8185
	fadd.s	fa0, fa0, fa2
	fsqrt.s	fa0, fa0
	fli	fa2, l_7671
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
	blt	a0, t6, bge_else_10080
	fmul.s	fa2, fa0, fa0
	fmul.s	fa3, fa1, fa1
	fadd.s	fa2, fa2, fa3
	fli	fa3, l_7671
	fadd.s	fa2, fa2, fa3
	fsqrt.s	fa2, fa2
	fdiv.s	fa0, fa0, fa2
	fdiv.s	fa1, fa1, fa2
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
	call	vecset_2372
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
	fsw	fa2, 32(sp)
	mv	a0, a1
	fmv.s	fa0, fa1
	fmv.s	fa1, fa3
	call	vecset_2372
	lw	a0, 28(sp)
	addi	a1, a0, 80
	slli	a1, a1, 2
	lw	a2, 24(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	flw	fa0, 8(sp)
	fneg.s	fa1, fa0
	flw	fa2, 0(sp)
	flw	fa3, 32(sp)
	fsw	fa1, 40(sp)
	mv	a0, a1
	fmv.s	fa0, fa2
	fmv.s	fa2, fa3
	call	vecset_2372
	lw	a0, 28(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 24(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	flw	fa0, 0(sp)
	fneg.s	fa2, fa0
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
bge_else_10080:
	fsw	fa2, 56(sp)
	sw	a2, 28(sp)
	sw	a1, 64(sp)
	sw	s11, 68(sp)
	fsw	fa3, 72(sp)
	sw	a0, 80(sp)
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	call	adjust_position_2788
	lw	a0, 80(sp)
	addi	a0, a0, 1
	flw	fa1, 72(sp)
	fsw	fa0, 88(sp)
	sw	a0, 96(sp)
	call	adjust_position_2788
	fmv.s	fa1, fa0
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
	blt	a0, zero, bge_else_10082
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	fsw	fa0, 8(sp)
	sw	a2, 16(sp)
	sw	a1, 20(sp)
	sw	a3, 24(sp)
	call	min_caml_float_of_int
	fli	fa1, l_8308
	fmul.s	fa0, fa0, fa1
	fli	fa2, l_8309
	fsub.s	fa2, fa0, fa2
	li	a0, 0
	fli	fa0, l_7670
	flw	fa3, 8(sp)
	lw	a1, 20(sp)
	lw	a2, 16(sp)
	lw	s11, 24(sp)
	fsw	fa0, 32(sp)
	fsw	fa1, 40(sp)
	fmv.s	fa1, fa0
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	call	min_caml_float_of_int
	flw	fa1, 40(sp)
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_8185
	fadd.s	fa2, fa0, fa1
	li	a0, 0
	lw	a1, 16(sp)
	addi	a2, a1, 2
	flw	fa0, 32(sp)
	flw	fa3, 8(sp)
	lw	a3, 20(sp)
	lw	s11, 24(sp)
	mv	a1, a3
	fmv.s	fa1, fa0
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
bge_else_10082:
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
	blt	a0, zero, bge_else_10085
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	sw	a1, 12(sp)
	sw	a3, 16(sp)
	call	min_caml_float_of_int
	fli	fa1, l_8308
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_8309
	fsub.s	fa0, fa0, fa1
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
bge_else_10085:
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
	blt	a1, zero, bge_else_10087
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
bge_else_10087:
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
	blt	a0, zero, bge_else_10089
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
bge_else_10089:
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
	blt	a1, zero, bge_else_10091
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
bge_else_10091:
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
	blt	a0, zero, bge_else_10093
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
bge_else_10093:
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
	fsub.s	fa0, fa0, fa1
	flw	fa1, 0(a3)
	fneg.s	fa1, fa1
	flw	fa2, 4(a3)
	fneg.s	fa2, fa2
	flw	fa3, 8(a3)
	fneg.s	fa3, fa3
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
	fmv.s	fa1, fa4
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
	fsub.s	fa0, fa0, fa1
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
	fmul.s	fa2, fa1, fa2
	fmul.s	fa2, fa2, fa0
	lw	a1, 28(sp)
	flw	fa3, 0(a1)
	fsub.s	fa2, fa2, fa3
	flw	fa3, 4(a0)
	fmul.s	fa3, fa1, fa3
	fmul.s	fa3, fa3, fa0
	flw	fa4, 4(a1)
	fsub.s	fa3, fa3, fa4
	flw	fa4, 8(a0)
	fmul.s	fa1, fa1, fa4
	fmul.s	fa0, fa1, fa0
	flw	fa1, 8(a1)
	fsub.s	fa0, fa0, fa1
	flw	fa1, 8(sp)
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	lw	s11, 24(sp)
	fmv.s	ft11, fa3
	fmv.s	fa3, fa0
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, ft11
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
	blt	a0, zero, bge_else_10102
	slli	a4, a0, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	lw	a4, 28(a3)
	lw	a5, 8(a3)
	lw	a6, 4(a3)
	li	t6, 2
	bne	a5, t6, beq_else_10103
	fli	fa0, l_7671
	flw	fa1, 0(a4)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10104
	b	setup_reflections_2835_ret
bne_else_10104:
	li	t6, 1
	bne	a6, t6, beq_else_10106
	mv	a1, a3
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	setup_reflections_2835_ret
beq_else_10106:
	li	t6, 2
	bne	a6, t6, beq_else_10107
	mv	s11, a1
	mv	a1, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_else_10107:
beq_else_10103:
bge_else_10102:
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
	fdiv.s	fa0, fa1, fa0
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
