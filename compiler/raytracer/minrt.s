	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
#	main program starts
	li	a0, 1
	li	a1, 0
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	min_caml_create_array
	fli	fa0, l_7864
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
	fli	fa0, l_8330
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
	lw	a1, 0(a0)
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
	fli	fa0, l_8252
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
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 160(sp)
	sw	a0, 0(a1)
	mv	a0, a1
	li	a1, 180
	mv	a2, gp
	addi	gp, gp, 12
	flw	fa0, 16(sp)
	fsw	fa0, 8(a2)
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
	la	a2, read_screen_settings_2580
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
	la	a7, read_light_2582
	sw	a7, 0(a6)
	lw	a7, 44(sp)
	sw	a7, 8(a6)
	lw	s1, 48(sp)
	sw	s1, 4(a6)
	mv	s2, gp
	addi	gp, gp, 8
	la	s3, read_nth_object_2587
	sw	s3, 0(s2)
	lw	s3, 28(sp)
	sw	s3, 4(s2)
	mv	s4, gp
	addi	gp, gp, 12
	la	s5, read_object_2589
	sw	s5, 0(s4)
	sw	s2, 8(s4)
	lw	s2, 8(sp)
	sw	s2, 4(s4)
	mv	s5, gp
	addi	gp, gp, 8
	la	s6, read_and_network_2597
	sw	s6, 0(s5)
	lw	s6, 56(sp)
	sw	s6, 4(s5)
	mv	s7, gp
	addi	gp, gp, 24
	la	s8, read_parameter_2599
	sw	s8, 0(s7)
	sw	a1, 20(s7)
	sw	s4, 16(s7)
	sw	a6, 12(s7)
	sw	s5, 8(s7)
	lw	a1, 60(sp)
	sw	a1, 4(s7)
	mv	a6, gp
	addi	gp, gp, 8
	la	s4, solver_rect_surface_2601
	sw	s4, 0(a6)
	lw	s4, 64(sp)
	sw	s4, 4(a6)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, solver_rect_2610
	sw	s8, 0(s5)
	sw	a6, 4(s5)
	mv	a6, gp
	addi	gp, gp, 8
	la	s8, solver_surface_2616
	sw	s8, 0(a6)
	sw	s4, 4(a6)
	mv	s8, gp
	addi	gp, gp, 8
	la	s9, solver_second_2635
	sw	s9, 0(s8)
	sw	s4, 4(s8)
	mv	s9, gp
	addi	gp, gp, 20
	la	s10, solver_2641
	sw	s10, 0(s9)
	sw	a6, 16(s9)
	sw	s8, 12(s9)
	sw	s5, 8(s9)
	sw	s3, 4(s9)
	mv	a6, gp
	addi	gp, gp, 8
	la	s5, solver_rect_fast_2645
	sw	s5, 0(a6)
	sw	s4, 4(a6)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, solver_surface_fast_2652
	sw	s8, 0(s5)
	sw	s4, 4(s5)
	mv	s8, gp
	addi	gp, gp, 8
	la	s10, solver_second_fast_2658
	sw	s10, 0(s8)
	sw	s4, 4(s8)
	mv	s10, gp
	addi	gp, gp, 20
	la	s11, solver_fast_2664
	sw	s11, 0(s10)
	sw	s5, 16(s10)
	sw	s8, 12(s10)
	sw	a6, 8(s10)
	sw	s3, 4(s10)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, solver_surface_fast2_2668
	sw	s8, 0(s5)
	sw	s4, 4(s5)
	mv	s8, gp
	addi	gp, gp, 8
	la	s11, solver_second_fast2_2675
	sw	s11, 0(s8)
	sw	s4, 4(s8)
	mv	s11, gp
	addi	gp, gp, 20
	la	t0, solver_fast2_2682
	sw	t0, 0(s11)
	sw	s5, 16(s11)
	sw	s8, 12(s11)
	sw	a6, 8(s11)
	sw	s3, 4(s11)
	mv	a6, gp
	addi	gp, gp, 8
	la	s5, iter_setup_dirvec_constants_2694
	sw	s5, 0(a6)
	sw	s3, 4(a6)
	mv	s5, gp
	addi	gp, gp, 12
	la	s8, setup_dirvec_constants_2697
	sw	s8, 0(s5)
	sw	s2, 8(s5)
	sw	a6, 4(s5)
	mv	a6, gp
	addi	gp, gp, 8
	la	s8, setup_startp_constants_2699
	sw	s8, 0(a6)
	sw	s3, 4(a6)
	mv	s8, gp
	addi	gp, gp, 16
	la	t0, setup_startp_2702
	sw	t0, 0(s8)
	lw	t0, 120(sp)
	sw	t0, 12(s8)
	sw	a6, 8(s8)
	sw	s2, 4(s8)
	mv	a6, gp
	addi	gp, gp, 8
	la	t1, check_all_inside_2724
	sw	t1, 0(a6)
	sw	s3, 4(a6)
	mv	t1, gp
	addi	gp, gp, 32
	la	t2, shadow_check_and_group_2730
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
	la	t5, shadow_check_one_or_group_2733
	sw	t5, 0(t4)
	sw	t1, 8(t4)
	sw	s6, 4(t4)
	mv	t1, gp
	addi	gp, gp, 24
	la	t5, shadow_check_one_or_matrix_2736
	sw	t5, 0(t1)
	sw	s10, 20(t1)
	sw	s4, 16(t1)
	sw	t4, 12(t1)
	sw	t2, 8(t1)
	sw	t3, 4(t1)
	mv	s10, gp
	addi	gp, gp, 40
	la	t4, solve_each_element_2739
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
	la	s5, solve_one_or_network_2743
	sw	s5, 0(s7)
	sw	s10, 8(s7)
	sw	s6, 4(s7)
	mv	s5, gp
	addi	gp, gp, 24
	la	s10, trace_or_matrix_2747
	sw	s10, 0(s5)
	sw	t4, 20(s5)
	sw	t5, 16(s5)
	sw	s4, 12(s5)
	sw	s9, 8(s5)
	sw	s7, 4(s5)
	mv	s7, gp
	addi	gp, gp, 16
	la	s9, judge_intersection_2751
	sw	s9, 0(s7)
	sw	s5, 12(s7)
	sw	t4, 8(s7)
	sw	a1, 4(s7)
	mv	s5, gp
	addi	gp, gp, 40
	la	s9, solve_each_element_fast_2753
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
	la	s9, solve_one_or_network_fast_2757
	sw	s9, 0(a6)
	sw	s5, 8(a6)
	sw	s6, 4(a6)
	mv	s5, gp
	addi	gp, gp, 20
	la	s6, trace_or_matrix_fast_2761
	sw	s6, 0(s5)
	sw	t4, 16(s5)
	sw	s11, 12(s5)
	sw	s4, 8(s5)
	sw	a6, 4(s5)
	mv	a6, gp
	addi	gp, gp, 16
	la	s4, judge_intersection_fast_2765
	sw	s4, 0(a6)
	sw	s5, 12(a6)
	sw	t4, 8(a6)
	sw	a1, 4(a6)
	mv	s4, gp
	addi	gp, gp, 12
	la	s5, get_nvector_rect_2767
	sw	s5, 0(s4)
	lw	s5, 84(sp)
	sw	s5, 8(s4)
	sw	t6, 4(s4)
	mv	s6, gp
	addi	gp, gp, 8
	la	s9, get_nvector_plane_2769
	sw	s9, 0(s6)
	sw	s5, 4(s6)
	mv	s9, gp
	addi	gp, gp, 12
	la	s10, get_nvector_second_2771
	sw	s10, 0(s9)
	sw	s5, 8(s9)
	sw	t3, 4(s9)
	mv	s10, gp
	addi	gp, gp, 16
	la	s11, get_nvector_2773
	sw	s11, 0(s10)
	sw	s9, 12(s10)
	sw	s4, 8(s10)
	sw	s6, 4(s10)
	mv	s4, gp
	addi	gp, gp, 8
	la	s6, utexture_2776
	sw	s6, 0(s4)
	lw	s6, 88(sp)
	sw	s6, 4(s4)
	mv	s9, gp
	addi	gp, gp, 12
	la	s11, add_light_2779
	sw	s11, 0(s9)
	sw	s6, 8(s9)
	lw	s11, 96(sp)
	sw	s11, 4(s9)
	mv	t0, gp
	addi	gp, gp, 36
	la	s2, trace_reflections_2783
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
	la	a4, trace_ray_2788
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
	la	s1, trace_diffuse_ray_2794
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
	la	s1, iter_trace_diffuse_rays_2797
	sw	s1, 0(a6)
	sw	a4, 4(a6)
	mv	a4, gp
	addi	gp, gp, 16
	la	s1, trace_diffuse_ray_80percent_2806
	sw	s1, 0(a4)
	sw	s8, 12(a4)
	sw	a6, 8(a4)
	lw	s1, 144(sp)
	sw	s1, 4(a4)
	mv	s4, gp
	addi	gp, gp, 16
	la	s5, calc_diffuse_using_1point_2810
	sw	s5, 0(s4)
	sw	a4, 12(s4)
	sw	s11, 8(s4)
	sw	a1, 4(s4)
	mv	a4, gp
	addi	gp, gp, 12
	la	s5, calc_diffuse_using_5points_2813
	sw	s5, 0(a4)
	sw	s11, 8(a4)
	sw	a1, 4(a4)
	mv	s5, gp
	addi	gp, gp, 8
	la	s6, do_without_neighbors_2819
	sw	s6, 0(s5)
	sw	s4, 4(s5)
	mv	s4, gp
	addi	gp, gp, 8
	la	s6, neighbors_exist_2822
	sw	s6, 0(s4)
	lw	s6, 104(sp)
	sw	s6, 4(s4)
	mv	s7, gp
	addi	gp, gp, 12
	la	s9, try_exploit_neighbors_2835
	sw	s9, 0(s7)
	sw	s5, 8(s7)
	sw	a4, 4(s7)
	mv	a4, gp
	addi	gp, gp, 8
	la	s9, write_ppm_header_2842
	sw	s9, 0(a4)
	sw	s6, 4(a4)
	mv	s9, gp
	addi	gp, gp, 8
	la	s10, write_rgb_2846
	sw	s10, 0(s9)
	sw	s11, 4(s9)
	mv	s10, gp
	addi	gp, gp, 20
	la	t0, pretrace_diffuse_rays_2848
	sw	t0, 0(s10)
	sw	s8, 16(s10)
	sw	a6, 12(s10)
	sw	s1, 8(s10)
	sw	a1, 4(s10)
	mv	a1, gp
	addi	gp, gp, 40
	la	a6, pretrace_pixels_2851
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
	la	s2, pretrace_line_2858
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
	la	a3, scan_pixel_2862
	sw	a3, 0(a1)
	sw	s9, 24(a1)
	sw	s7, 20(a1)
	sw	s11, 16(a1)
	sw	s4, 12(a1)
	sw	s6, 8(a1)
	sw	s5, 4(a1)
	mv	a3, gp
	addi	gp, gp, 16
	la	s2, scan_line_2868
	sw	s2, 0(a3)
	sw	a1, 12(a3)
	sw	a6, 8(a3)
	sw	s6, 4(a3)
	mv	a1, gp
	addi	gp, gp, 8
	la	s2, create_pixelline_2881
	sw	s2, 0(a1)
	sw	s6, 4(a1)
	mv	s2, gp
	addi	gp, gp, 8
	la	s4, calc_dirvec_2888
	sw	s4, 0(s2)
	sw	s1, 4(s2)
	mv	s4, gp
	addi	gp, gp, 8
	la	s5, calc_dirvecs_2896
	sw	s5, 0(s4)
	sw	s2, 4(s4)
	mv	s2, gp
	addi	gp, gp, 8
	la	s5, calc_dirvec_rows_2901
	sw	s5, 0(s2)
	sw	s4, 4(s2)
	mv	s4, gp
	addi	gp, gp, 8
	la	s5, create_dirvec_2905
	sw	s5, 0(s4)
	lw	s5, 8(sp)
	sw	s5, 4(s4)
	mv	s7, gp
	addi	gp, gp, 8
	la	s8, create_dirvec_elements_2907
	sw	s8, 0(s7)
	sw	s4, 4(s7)
	mv	s8, gp
	addi	gp, gp, 16
	la	s9, create_dirvecs_2910
	sw	s9, 0(s8)
	sw	s1, 12(s8)
	sw	s7, 8(s8)
	sw	s4, 4(s8)
	mv	s7, gp
	addi	gp, gp, 8
	la	s9, init_dirvec_constants_2912
	sw	s9, 0(s7)
	lw	s9, 172(sp)
	sw	s9, 4(s7)
	mv	s10, gp
	addi	gp, gp, 12
	la	s11, init_vecset_constants_2915
	sw	s11, 0(s10)
	sw	s7, 8(s10)
	sw	s1, 4(s10)
	mv	s1, gp
	addi	gp, gp, 16
	la	s7, init_dirvecs_2917
	sw	s7, 0(s1)
	sw	s10, 12(s1)
	sw	s8, 8(s1)
	sw	s2, 4(s1)
	mv	s2, gp
	addi	gp, gp, 16
	la	s7, add_reflection_2919
	sw	s7, 0(s2)
	sw	s9, 12(s2)
	lw	s7, 164(sp)
	sw	s7, 8(s2)
	sw	s4, 4(s2)
	mv	s4, gp
	addi	gp, gp, 16
	la	s7, setup_rect_reflection_2926
	sw	s7, 0(s4)
	sw	a0, 12(s4)
	sw	a7, 8(s4)
	sw	s2, 4(s4)
	mv	s7, gp
	addi	gp, gp, 16
	la	s8, setup_surface_reflection_2929
	sw	s8, 0(s7)
	sw	a0, 12(s7)
	sw	a7, 8(s7)
	sw	s2, 4(s7)
	mv	a0, gp
	addi	gp, gp, 16
	la	s2, setup_reflections_2932
	sw	s2, 0(a0)
	sw	s7, 12(a0)
	sw	s4, 8(a0)
	sw	s3, 4(a0)
	mv	s11, gp
	addi	gp, gp, 64
	la	s2, rt_2934
	sw	s2, 0(s11)
	sw	a4, 60(s11)
	lw	a4, 152(sp)
	sw	a4, 56(s11)
	sw	a0, 52(s11)
	sw	s9, 48(s11)
	sw	a2, 44(s11)
	sw	a3, 40(s11)
	lw	a0, 168(sp)
	sw	a0, 36(s11)
	sw	a6, 32(s11)
	sw	s5, 28(s11)
	lw	a0, 156(sp)
	sw	a0, 24(s11)
	sw	a7, 20(s11)
	sw	s1, 16(s11)
	sw	s6, 12(s11)
	sw	a5, 8(s11)
	sw	a1, 4(s11)
	li	a0, 128
	mv	a1, a0
	lw	ra, 0(s11)
	jalr	ra, ra, 0
#	main program ends
	j	end
xor_2458:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	bne	a0, zero, beq_else_9940
	mv	a0, a1
	b	xor_2458_ret
beq_else_9940:
	bne	a1, zero, beq_else_9941
	li	a0, 1
	b	xor_2458_ret
beq_else_9941:
	li	a0, 0
xor_2458_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
sgn_2461:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fli	fa1, l_7864
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9942
	li	a0, 1
	b	bne_cont_9943
bne_else_9942:
	li	a0, 0
bne_cont_9943:
	bne	a0, zero, beq_else_9944
	fli	fa1, l_7864
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9945
	li	a0, 0
	b	bne_cont_9946
bne_else_9945:
	li	a0, 1
bne_cont_9946:
	bne	a0, zero, beq_else_9947
	fli	fa0, l_7866
	b	sgn_2461_ret
beq_else_9947:
	fli	fa0, l_7865
	b	sgn_2461_ret
beq_else_9944:
	fli	fa0, l_7864
sgn_2461_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
add_mod5_2466:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	add	a0, a0, a1
	li	t6, 5
	blt	a0, t6, bge_else_9948
	addi	a0, a0, -5
	b	add_mod5_2466_ret
bge_else_9948:
add_mod5_2466_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecset_2469:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fsw	fa0, 0(a0)
	fsw	fa1, 4(a0)
	fsw	fa2, 8(a0)
vecset_2469_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecfill_2474:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fsw	fa0, 0(a0)
	fsw	fa0, 4(a0)
	fsw	fa0, 8(a0)
vecfill_2474_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
veccpy_2479:
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
veccpy_2479_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecunit_sgn_2482:
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
	fli	fa1, l_7864
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9952
	li	a2, 1
	b	bne_cont_9953
bne_else_9952:
	li	a2, 0
bne_cont_9953:
	bne	a2, zero, beq_else_9954
	bne	a1, zero, beq_else_9956
	fli	fa1, l_7865
	fdiv.s	fa0, fa1, fa0
	b	beq_cont_9957
beq_else_9956:
	fli	fa1, l_7866
	fdiv.s	fa0, fa1, fa0
beq_cont_9957:
	b	beq_cont_9955
beq_else_9954:
	fli	fa0, l_7865
beq_cont_9955:
	flw	fa1, 0(a0)
	fmul.s	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fmul.s	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fmul.s	fa0, fa1, fa0
	fsw	fa0, 8(a0)
vecunit_sgn_2482_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
veciprod_2485:
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
veciprod_2485_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
veciprod2_2488:
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
veciprod2_2488_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecaccum_2493:
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
vecaccum_2493_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecadd_2497:
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
vecadd_2497_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecscale_2500:
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
vecscale_2500_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
vecaccumv_2503:
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
vecaccumv_2503_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
read_screen_settings_2580:
	addi	sp, sp, -76
	sw	ra, 72(sp)
	sw	fp, 68(sp)
	addi	fp, sp, 76
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
	fli	fa1, l_7939
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 24(sp)
	call	min_caml_cos
	flw	fa1, 24(sp)
	fsw	fa0, 32(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	fsw	fa0, 40(sp)
	call	min_caml_read_float
	fli	fa1, l_7939
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 48(sp)
	call	min_caml_cos
	flw	fa1, 48(sp)
	fsw	fa0, 56(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	flw	fa1, 32(sp)
	fmul.s	fa2, fa1, fa0
	fli	fa3, l_7940
	fmul.s	fa2, fa2, fa3
	lw	a0, 12(sp)
	fsw	fa2, 0(a0)
	fli	fa2, l_7942
	flw	fa3, 40(sp)
	fmul.s	fa2, fa3, fa2
	fsw	fa2, 4(a0)
	flw	fa2, 56(sp)
	fmul.s	fa4, fa1, fa2
	fli	fa5, l_7940
	fmul.s	fa4, fa4, fa5
	fsw	fa4, 8(a0)
	lw	a1, 8(sp)
	fsw	fa2, 0(a1)
	fli	fa4, l_7864
	fsw	fa4, 4(a1)
	fneg.s	fa4, fa0
	fsw	fa4, 8(a1)
	fneg.s	fa4, fa3
	fmul.s	fa0, fa4, fa0
	lw	a1, 4(sp)
	fsw	fa0, 0(a1)
	fneg.s	fa0, fa1
	fsw	fa0, 4(a1)
	fneg.s	fa0, fa3
	fmul.s	fa0, fa0, fa2
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
read_screen_settings_2580_ret:
	lw	ra, 72(sp)
	lw	fp, 68(sp)
	addi	sp, sp, 76
	jr	ra
read_light_2582:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a0, 8(s11)
	lw	a1, 4(s11)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	call	min_caml_read_int
	call	min_caml_read_float
	fli	fa1, l_7939
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 8(sp)
	call	min_caml_sin
	fneg.s	fa0, fa0
	lw	a0, 4(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	fli	fa1, l_7939
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
	lw	a0, 4(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 16(sp)
	call	min_caml_cos
	flw	fa1, 24(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	fsw	fa0, 8(a0)
	call	min_caml_read_float
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
read_light_2582_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
rotate_quadratic_matrix_2584:
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
	lw	a0, 0(sp)
	flw	fa5, 0(a0)
	flw	fa7, 4(a0)
	flw	fs4, 8(a0)
	fmul.s	fs5, fa3, fa3
	fmul.s	fs5, fa5, fs5
	fmul.s	fs6, fs2, fs2
	fmul.s	fs6, fa7, fs6
	fadd.s	fs5, fs5, fs6
	fmul.s	fs6, fa1, fa1
	fmul.s	fs6, fs4, fs6
	fadd.s	fs5, fs5, fs6
	fsw	fs5, 0(a0)
	fmul.s	fs5, fa6, fa6
	fmul.s	fs5, fa5, fs5
	fmul.s	fs6, fs3, fs3
	fmul.s	fs6, fa7, fs6
	fadd.s	fs5, fs5, fs6
	fmul.s	fs6, fa4, fa4
	fmul.s	fs6, fs4, fs6
	fadd.s	fs5, fs5, fs6
	fsw	fs5, 4(a0)
	fmul.s	fs5, fs1, fs1
	fmul.s	fs5, fa5, fs5
	fmul.s	fs6, fa0, fa0
	fmul.s	fs6, fa7, fs6
	fadd.s	fs5, fs5, fs6
	fmul.s	fs6, fa2, fa2
	fmul.s	fs6, fs4, fs6
	fadd.s	fs5, fs5, fs6
	fsw	fs5, 8(a0)
	fli	fs5, l_7976
	fmul.s	fs6, fa5, fa6
	fmul.s	fs6, fs6, fs1
	fmul.s	fs7, fa7, fs3
	fmul.s	fs7, fs7, fa0
	fadd.s	fs6, fs6, fs7
	fmul.s	fs7, fs4, fa4
	fmul.s	fs7, fs7, fa2
	fadd.s	fs6, fs6, fs7
	fmul.s	fs5, fs5, fs6
	lw	a0, 4(sp)
	fsw	fs5, 0(a0)
	fli	fs5, l_7976
	fmul.s	fs6, fa5, fa3
	fmul.s	fs1, fs6, fs1
	fmul.s	fs6, fa7, fs2
	fmul.s	fa0, fs6, fa0
	fadd.s	fa0, fs1, fa0
	fmul.s	fs1, fs4, fa1
	fmul.s	fa2, fs1, fa2
	fadd.s	fa0, fa0, fa2
	fmul.s	fa0, fs5, fa0
	fsw	fa0, 4(a0)
	fli	fa0, l_7976
	fmul.s	fa2, fa5, fa3
	fmul.s	fa2, fa2, fa6
	fmul.s	fa3, fa7, fs2
	fmul.s	fa3, fa3, fs3
	fadd.s	fa2, fa2, fa3
	fmul.s	fa1, fs4, fa1
	fmul.s	fa1, fa1, fa4
	fadd.s	fa1, fa2, fa1
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 8(a0)
rotate_quadratic_matrix_2584_ret:
	lw	ra, 56(sp)
	lw	fp, 52(sp)
	addi	sp, sp, 60
	jr	ra
read_nth_object_2587:
	addi	sp, sp, -100
	sw	ra, 96(sp)
	sw	fp, 92(sp)
	addi	fp, sp, 100
	lw	a1, 4(s11)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	call	min_caml_read_int
	li	t6, -1
	bne	a0, t6, beq_else_9967
	li	a0, 0
	b	read_nth_object_2587_ret
beq_else_9967:
	sw	a0, 8(sp)
	call	min_caml_read_int
	sw	a0, 12(sp)
	call	min_caml_read_int
	sw	a0, 16(sp)
	call	min_caml_read_int
	li	a1, 3
	fli	fa0, l_7864
	sw	a0, 20(sp)
	mv	a0, a1
	call	min_caml_create_array
	sw	a0, 24(sp)
	call	min_caml_read_float
	lw	a0, 24(sp)
	fsw	fa0, 0(a0)
	call	min_caml_read_float
	lw	a0, 24(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	lw	a0, 24(sp)
	fsw	fa0, 8(a0)
	li	a1, 3
	fli	fa0, l_7864
	mv	a0, a1
	call	min_caml_create_array
	sw	a0, 28(sp)
	call	min_caml_read_float
	lw	a0, 28(sp)
	fsw	fa0, 0(a0)
	call	min_caml_read_float
	lw	a0, 28(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	lw	a0, 28(sp)
	fsw	fa0, 8(a0)
	fli	fa0, l_7864
	fsw	fa0, 32(sp)
	call	min_caml_read_float
	flw	fa1, 32(sp)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_9968
	li	a0, 0
	b	bne_cont_9969
bne_else_9968:
	li	a0, 1
bne_cont_9969:
	li	a1, 2
	fli	fa0, l_7864
	sw	a0, 40(sp)
	mv	a0, a1
	call	min_caml_create_array
	sw	a0, 44(sp)
	call	min_caml_read_float
	lw	a0, 44(sp)
	fsw	fa0, 0(a0)
	call	min_caml_read_float
	lw	a0, 44(sp)
	fsw	fa0, 4(a0)
	li	a1, 3
	fli	fa0, l_7864
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
	fli	fa0, l_7864
	mv	a0, a1
	call	min_caml_create_array
	lw	a1, 20(sp)
	bne	a1, zero, beq_else_9970
	b	beq_cont_9971
beq_else_9970:
	sw	a0, 52(sp)
	call	min_caml_read_float
	fli	fa1, l_7939
	fmul.s	fa0, fa0, fa1
	lw	a0, 52(sp)
	fsw	fa0, 0(a0)
	call	min_caml_read_float
	fli	fa1, l_7939
	fmul.s	fa0, fa0, fa1
	lw	a0, 52(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	fli	fa1, l_7939
	fmul.s	fa0, fa0, fa1
	lw	a0, 52(sp)
	fsw	fa0, 8(a0)
beq_cont_9971:
	lw	a1, 12(sp)
	li	t6, 2
	bne	a1, t6, beq_else_9972
	li	a2, 1
	b	beq_cont_9973
beq_else_9972:
	lw	a2, 40(sp)
beq_cont_9973:
	li	a3, 4
	fli	fa0, l_7864
	sw	a2, 56(sp)
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
	lw	a2, 56(sp)
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
	li	t6, 3
	bne	a4, t6, beq_else_9974
	flw	fa0, 0(a2)
	fli	fa1, l_7864
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9976
	li	a1, 1
	b	bne_cont_9977
bne_else_9976:
	li	a1, 0
bne_cont_9977:
	bne	a1, zero, beq_else_9978
	fsw	fa0, 64(sp)
	call	sgn_2461
	flw	fa1, 64(sp)
	fmul.s	fa1, fa1, fa1
	fdiv.s	fa0, fa0, fa1
	b	beq_cont_9979
beq_else_9978:
	fli	fa0, l_7864
beq_cont_9979:
	lw	a0, 24(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 4(a0)
	fli	fa1, l_7864
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9981
	li	a1, 1
	b	bne_cont_9982
bne_else_9981:
	li	a1, 0
bne_cont_9982:
	bne	a1, zero, beq_else_9983
	fsw	fa0, 72(sp)
	call	sgn_2461
	flw	fa1, 72(sp)
	fmul.s	fa1, fa1, fa1
	fdiv.s	fa0, fa0, fa1
	b	beq_cont_9984
beq_else_9983:
	fli	fa0, l_7864
beq_cont_9984:
	lw	a0, 24(sp)
	fsw	fa0, 4(a0)
	flw	fa0, 8(a0)
	fli	fa1, l_7864
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_9985
	li	a1, 1
	b	bne_cont_9986
bne_else_9985:
	li	a1, 0
bne_cont_9986:
	bne	a1, zero, beq_else_9987
	fsw	fa0, 80(sp)
	call	sgn_2461
	flw	fa1, 80(sp)
	fmul.s	fa1, fa1, fa1
	fdiv.s	fa0, fa0, fa1
	b	beq_cont_9988
beq_else_9987:
	fli	fa0, l_7864
beq_cont_9988:
	lw	a0, 24(sp)
	fsw	fa0, 8(a0)
	b	beq_cont_9975
beq_else_9974:
	li	t6, 2
	bne	a4, t6, beq_else_9989
	lw	a1, 40(sp)
	bne	a1, zero, beq_else_9991
	li	a1, 1
	b	beq_cont_9992
beq_else_9991:
	li	a1, 0
beq_cont_9992:
	mv	a0, a2
	call	vecunit_sgn_2482
	b	beq_cont_9990
beq_else_9989:
beq_cont_9990:
beq_cont_9975:
	lw	a0, 20(sp)
	bne	a0, zero, beq_else_9993
	b	beq_cont_9994
beq_else_9993:
	lw	a0, 24(sp)
	lw	a1, 52(sp)
	call	rotate_quadratic_matrix_2584
beq_cont_9994:
	li	a0, 1
read_nth_object_2587_ret:
	lw	ra, 96(sp)
	lw	fp, 92(sp)
	addi	sp, sp, 100
	jr	ra
read_object_2589:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	li	t6, 60
	blt	a0, t6, bge_else_9995
	b	read_object_2589_ret
bge_else_9995:
	sw	s11, 0(sp)
	sw	a2, 4(sp)
	sw	a0, 8(sp)
	mv	s11, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_9997
	lw	a0, 4(sp)
	lw	a1, 8(sp)
	sw	a1, 0(a0)
	b	read_object_2589_ret
beq_else_9997:
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
read_object_2589_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
read_net_item_2593:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	sw	a0, 0(sp)
	call	min_caml_read_int
	li	t6, -1
	bne	a0, t6, beq_else_9999
	lw	a0, 0(sp)
	addi	a0, a0, 1
	li	a1, -1
	call	min_caml_create_array
	b	read_net_item_2593_ret
beq_else_9999:
	lw	a1, 0(sp)
	addi	a2, a1, 1
	sw	a0, 4(sp)
	mv	a0, a2
	call	read_net_item_2593
	lw	a1, 0(sp)
	slli	a1, a1, 2
	lw	a2, 4(sp)
	add	t6, a0, a1
	sw	a2, 0(t6)
read_net_item_2593_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
read_or_network_2595:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	li	a1, 0
	sw	a0, 0(sp)
	mv	a0, a1
	call	read_net_item_2593
	mv	a1, a0
	lw	a0, 0(a1)
	li	t6, -1
	bne	a0, t6, beq_else_10000
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_or_network_2595_ret
beq_else_10000:
	lw	a0, 0(sp)
	addi	a2, a0, 1
	sw	a1, 4(sp)
	mv	a0, a2
	call	read_or_network_2595
	lw	a1, 0(sp)
	slli	a1, a1, 2
	lw	a2, 4(sp)
	add	t6, a0, a1
	sw	a2, 0(t6)
read_or_network_2595_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
read_and_network_2597:
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
	call	read_net_item_2593
	lw	a1, 0(a0)
	li	t6, -1
	bne	a1, t6, beq_else_10001
	b	read_and_network_2597_ret
beq_else_10001:
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 4(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, 1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
read_and_network_2597_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
read_parameter_2599:
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
	call	read_or_network_2595
	lw	a1, 0(sp)
	sw	a0, 0(a1)
read_parameter_2599_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
solver_rect_surface_2601:
	addi	sp, sp, -68
	sw	ra, 64(sp)
	sw	fp, 60(sp)
	addi	fp, sp, 68
	lw	a5, 4(s11)
	slli	a6, a2, 2
	add	t6, a1, a6
	flw	fa3, 0(t6)
	fli	fa4, l_7864
	feq.s	t6, fa3, fa4
	beq	t6, zero, bne_else_10004
	li	a6, 1
	b	bne_cont_10005
bne_else_10004:
	li	a6, 0
bne_cont_10005:
	bne	a6, zero, beq_else_10006
	lw	a6, 16(a0)
	lw	a0, 24(a0)
	fli	fa3, l_7864
	slli	a7, a2, 2
	add	t6, a1, a7
	flw	fa4, 0(t6)
	fle.s	t6, fa3, fa4
	beq	t6, zero, bne_else_10007
	li	a7, 0
	b	bne_cont_10008
bne_else_10007:
	li	a7, 1
bne_cont_10008:
	sw	a5, 0(sp)
	fsw	fa2, 8(sp)
	sw	a4, 16(sp)
	fsw	fa1, 24(sp)
	sw	a3, 32(sp)
	sw	a1, 36(sp)
	fsw	fa0, 40(sp)
	sw	a6, 48(sp)
	sw	a2, 52(sp)
	mv	a1, a7
	call	xor_2458
	lw	a1, 52(sp)
	slli	a2, a1, 2
	lw	a3, 48(sp)
	add	t6, a3, a2
	flw	fa0, 0(t6)
	bne	a0, zero, beq_else_10011
	fneg.s	fa0, fa0
	b	beq_cont_10012
beq_else_10011:
beq_cont_10012:
	flw	fa1, 40(sp)
	fsub.s	fa0, fa0, fa1
	slli	a0, a1, 2
	lw	a1, 36(sp)
	add	t6, a1, a0
	flw	fa1, 0(t6)
	fdiv.s	fa0, fa0, fa1
	lw	a0, 32(sp)
	slli	a2, a0, 2
	add	t6, a3, a2
	flw	fa1, 0(t6)
	slli	a0, a0, 2
	add	t6, a1, a0
	flw	fa2, 0(t6)
	fmul.s	fa2, fa0, fa2
	flw	fa3, 24(sp)
	fadd.s	fa2, fa2, fa3
	fabs.s	fa2, fa2
	fle.s	t6, fa1, fa2
	beq	t6, zero, bne_else_10013
	li	a0, 0
	b	bne_cont_10014
bne_else_10013:
	li	a0, 1
bne_cont_10014:
	bne	a0, zero, beq_else_10015
	li	a0, 0
	b	solver_rect_surface_2601_ret
beq_else_10015:
	lw	a0, 16(sp)
	slli	a2, a0, 2
	add	t6, a3, a2
	flw	fa1, 0(t6)
	slli	a0, a0, 2
	add	t6, a1, a0
	flw	fa2, 0(t6)
	fmul.s	fa2, fa0, fa2
	flw	fa3, 8(sp)
	fadd.s	fa2, fa2, fa3
	fabs.s	fa2, fa2
	fle.s	t6, fa1, fa2
	beq	t6, zero, bne_else_10016
	li	a0, 0
	b	bne_cont_10017
bne_else_10016:
	li	a0, 1
bne_cont_10017:
	bne	a0, zero, beq_else_10018
	li	a0, 0
	b	solver_rect_surface_2601_ret
beq_else_10018:
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_rect_surface_2601_ret
beq_else_10006:
	li	a0, 0
solver_rect_surface_2601_ret:
	lw	ra, 64(sp)
	lw	fp, 60(sp)
	addi	sp, sp, 68
	jr	ra
solver_rect_2610:
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
	bne	a0, zero, beq_else_10019
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
	bne	a0, zero, beq_else_10020
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
	bne	a0, zero, beq_else_10021
	li	a0, 0
	b	solver_rect_2610_ret
beq_else_10021:
	li	a0, 3
	b	solver_rect_2610_ret
beq_else_10020:
	li	a0, 2
	b	solver_rect_2610_ret
beq_else_10019:
	li	a0, 1
solver_rect_2610_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
solver_surface_2616:
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
	call	veciprod_2485
	fli	fa1, l_7864
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10023
	li	a0, 0
	b	bne_cont_10024
bne_else_10023:
	li	a0, 1
bne_cont_10024:
	bne	a0, zero, beq_else_10025
	li	a0, 0
	b	solver_surface_2616_ret
beq_else_10025:
	flw	fa1, 24(sp)
	flw	fa2, 16(sp)
	flw	fa3, 8(sp)
	lw	a0, 32(sp)
	fsw	fa0, 40(sp)
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	call	veciprod2_2488
	fneg.s	fa0, fa0
	flw	fa1, 40(sp)
	fdiv.s	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	li	a0, 1
solver_surface_2616_ret:
	lw	ra, 56(sp)
	lw	fp, 52(sp)
	addi	sp, sp, 60
	jr	ra
quadratic_2622:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fmul.s	fa3, fa0, fa0
	lw	a1, 16(a0)
	flw	fa4, 0(a1)
	fmul.s	fa3, fa3, fa4
	fmul.s	fa4, fa1, fa1
	lw	a1, 16(a0)
	flw	fa5, 4(a1)
	fmul.s	fa4, fa4, fa5
	fadd.s	fa3, fa3, fa4
	fmul.s	fa4, fa2, fa2
	lw	a1, 16(a0)
	flw	fa5, 8(a1)
	fmul.s	fa4, fa4, fa5
	fadd.s	fa3, fa3, fa4
	lw	a1, 12(a0)
	bne	a1, zero, beq_else_10027
	fmv.s	fa0, fa3
	b	quadratic_2622_ret
beq_else_10027:
	fmul.s	fa4, fa1, fa2
	lw	a1, 36(a0)
	flw	fa5, 0(a1)
	fmul.s	fa4, fa4, fa5
	fadd.s	fa3, fa3, fa4
	fmul.s	fa2, fa2, fa0
	lw	a1, 36(a0)
	flw	fa4, 4(a1)
	fmul.s	fa2, fa2, fa4
	fadd.s	fa2, fa3, fa2
	fmul.s	fa0, fa0, fa1
	lw	a0, 36(a0)
	flw	fa1, 8(a0)
	fmul.s	fa0, fa0, fa1
	fadd.s	fa0, fa2, fa0
quadratic_2622_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
bilinear_2627:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fmul.s	fa6, fa0, fa3
	lw	a1, 16(a0)
	flw	fa7, 0(a1)
	fmul.s	fa6, fa6, fa7
	fmul.s	fa7, fa1, fa4
	lw	a1, 16(a0)
	flw	fs1, 4(a1)
	fmul.s	fa7, fa7, fs1
	fadd.s	fa6, fa6, fa7
	fmul.s	fa7, fa2, fa5
	lw	a1, 16(a0)
	flw	fs1, 8(a1)
	fmul.s	fa7, fa7, fs1
	fadd.s	fa6, fa6, fa7
	lw	a1, 12(a0)
	bne	a1, zero, beq_else_10028
	fmv.s	fa0, fa6
	b	bilinear_2627_ret
beq_else_10028:
	fmul.s	fa7, fa2, fa4
	fmul.s	fs1, fa1, fa5
	fadd.s	fa7, fa7, fs1
	lw	a1, 36(a0)
	flw	fs1, 0(a1)
	fmul.s	fa7, fa7, fs1
	fmul.s	fa5, fa0, fa5
	fmul.s	fa2, fa2, fa3
	fadd.s	fa2, fa5, fa2
	lw	a1, 36(a0)
	flw	fa5, 4(a1)
	fmul.s	fa2, fa2, fa5
	fadd.s	fa2, fa7, fa2
	fmul.s	fa0, fa0, fa4
	fmul.s	fa1, fa1, fa3
	fadd.s	fa0, fa0, fa1
	lw	a0, 36(a0)
	flw	fa1, 8(a0)
	fmul.s	fa0, fa0, fa1
	fadd.s	fa0, fa2, fa0
	fli	fa1, l_7976
	fdiv.s	fa0, fa0, fa1
	fadd.s	fa0, fa6, fa0
bilinear_2627_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_second_2635:
	addi	sp, sp, -68
	sw	ra, 64(sp)
	sw	fp, 60(sp)
	addi	fp, sp, 68
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
	call	quadratic_2622
	fli	fa1, l_7864
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10030
	li	a0, 1
	b	bne_cont_10031
bne_else_10030:
	li	a0, 0
bne_cont_10031:
	bne	a0, zero, beq_else_10032
	lw	a0, 36(sp)
	flw	fa1, 0(a0)
	flw	fa2, 4(a0)
	flw	fa3, 8(a0)
	flw	fa4, 24(sp)
	flw	fa5, 16(sp)
	flw	fa6, 8(sp)
	lw	a0, 32(sp)
	fsw	fa0, 40(sp)
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	fmv.s	fa3, fa4
	fmv.s	fa4, fa5
	fmv.s	fa5, fa6
	call	bilinear_2627
	flw	fa1, 24(sp)
	flw	fa2, 16(sp)
	flw	fa3, 8(sp)
	lw	a0, 32(sp)
	fsw	fa0, 48(sp)
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	fmv.s	fa2, fa3
	call	quadratic_2622
	lw	a0, 32(sp)
	lw	a1, 4(a0)
	li	t6, 3
	bne	a1, t6, beq_else_10033
	fli	fa1, l_7865
	fsub.s	fa0, fa0, fa1
	b	beq_cont_10034
beq_else_10033:
beq_cont_10034:
	flw	fa1, 48(sp)
	fmul.s	fa2, fa1, fa1
	flw	fa3, 40(sp)
	fmul.s	fa0, fa3, fa0
	fsub.s	fa0, fa2, fa0
	fli	fa2, l_7864
	fle.s	t6, fa0, fa2
	beq	t6, zero, bne_else_10035
	li	a1, 0
	b	bne_cont_10036
bne_else_10035:
	li	a1, 1
bne_cont_10036:
	bne	a1, zero, beq_else_10037
	li	a0, 0
	b	solver_second_2635_ret
beq_else_10037:
	fsqrt.s	fa0, fa0
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10038
	fneg.s	fa0, fa0
	b	beq_cont_10039
beq_else_10038:
beq_cont_10039:
	fsub.s	fa0, fa0, fa1
	fdiv.s	fa0, fa0, fa3
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_second_2635_ret
beq_else_10032:
	li	a0, 0
solver_second_2635_ret:
	lw	ra, 64(sp)
	lw	fp, 60(sp)
	addi	sp, sp, 68
	jr	ra
solver_2641:
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
	flw	fa1, 0(a6)
	fsub.s	fa0, fa0, fa1
	flw	fa1, 4(a2)
	lw	a6, 20(a0)
	flw	fa2, 4(a6)
	fsub.s	fa1, fa1, fa2
	flw	fa2, 8(a2)
	lw	a2, 20(a0)
	flw	fa3, 8(a2)
	fsub.s	fa2, fa2, fa3
	lw	a2, 4(a0)
	li	t6, 1
	bne	a2, t6, beq_else_10040
	mv	s11, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_2641_ret
beq_else_10040:
	li	t6, 2
	bne	a2, t6, beq_else_10041
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_2641_ret
beq_else_10041:
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_2641_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_rect_fast_2645:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a3, 4(s11)
	flw	fa3, 0(a2)
	fsub.s	fa3, fa3, fa0
	flw	fa4, 4(a2)
	fmul.s	fa3, fa3, fa4
	lw	a4, 16(a0)
	flw	fa4, 4(a4)
	flw	fa5, 4(a1)
	fmul.s	fa5, fa3, fa5
	fadd.s	fa5, fa5, fa1
	fabs.s	fa5, fa5
	fle.s	t6, fa4, fa5
	beq	t6, zero, bne_else_10042
	li	a4, 0
	b	bne_cont_10043
bne_else_10042:
	li	a4, 1
bne_cont_10043:
	bne	a4, zero, beq_else_10044
	li	a4, 0
	b	beq_cont_10045
beq_else_10044:
	lw	a4, 16(a0)
	flw	fa4, 8(a4)
	flw	fa5, 8(a1)
	fmul.s	fa5, fa3, fa5
	fadd.s	fa5, fa5, fa2
	fabs.s	fa5, fa5
	fle.s	t6, fa4, fa5
	beq	t6, zero, bne_else_10046
	li	a4, 0
	b	bne_cont_10047
bne_else_10046:
	li	a4, 1
bne_cont_10047:
	bne	a4, zero, beq_else_10048
	li	a4, 0
	b	beq_cont_10049
beq_else_10048:
	flw	fa4, 4(a2)
	fli	fa5, l_7864
	feq.s	t6, fa4, fa5
	beq	t6, zero, bne_else_10050
	li	a4, 1
	b	bne_cont_10051
bne_else_10050:
	li	a4, 0
bne_cont_10051:
	bne	a4, zero, beq_else_10052
	li	a4, 1
	b	beq_cont_10053
beq_else_10052:
	li	a4, 0
beq_cont_10053:
beq_cont_10049:
beq_cont_10045:
	bne	a4, zero, beq_else_10054
	flw	fa3, 8(a2)
	fsub.s	fa3, fa3, fa1
	flw	fa4, 12(a2)
	fmul.s	fa3, fa3, fa4
	lw	a4, 16(a0)
	flw	fa4, 0(a4)
	flw	fa5, 0(a1)
	fmul.s	fa5, fa3, fa5
	fadd.s	fa5, fa5, fa0
	fabs.s	fa5, fa5
	fle.s	t6, fa4, fa5
	beq	t6, zero, bne_else_10055
	li	a4, 0
	b	bne_cont_10056
bne_else_10055:
	li	a4, 1
bne_cont_10056:
	bne	a4, zero, beq_else_10057
	li	a4, 0
	b	beq_cont_10058
beq_else_10057:
	lw	a4, 16(a0)
	flw	fa4, 8(a4)
	flw	fa5, 8(a1)
	fmul.s	fa5, fa3, fa5
	fadd.s	fa5, fa5, fa2
	fabs.s	fa5, fa5
	fle.s	t6, fa4, fa5
	beq	t6, zero, bne_else_10059
	li	a4, 0
	b	bne_cont_10060
bne_else_10059:
	li	a4, 1
bne_cont_10060:
	bne	a4, zero, beq_else_10061
	li	a4, 0
	b	beq_cont_10062
beq_else_10061:
	flw	fa4, 12(a2)
	fli	fa5, l_7864
	feq.s	t6, fa4, fa5
	beq	t6, zero, bne_else_10063
	li	a4, 1
	b	bne_cont_10064
bne_else_10063:
	li	a4, 0
bne_cont_10064:
	bne	a4, zero, beq_else_10065
	li	a4, 1
	b	beq_cont_10066
beq_else_10065:
	li	a4, 0
beq_cont_10066:
beq_cont_10062:
beq_cont_10058:
	bne	a4, zero, beq_else_10067
	flw	fa3, 16(a2)
	fsub.s	fa2, fa3, fa2
	flw	fa3, 20(a2)
	fmul.s	fa2, fa2, fa3
	lw	a4, 16(a0)
	flw	fa3, 0(a4)
	flw	fa4, 0(a1)
	fmul.s	fa4, fa2, fa4
	fadd.s	fa0, fa4, fa0
	fabs.s	fa0, fa0
	fle.s	t6, fa3, fa0
	beq	t6, zero, bne_else_10068
	li	a4, 0
	b	bne_cont_10069
bne_else_10068:
	li	a4, 1
bne_cont_10069:
	bne	a4, zero, beq_else_10070
	li	a0, 0
	b	beq_cont_10071
beq_else_10070:
	lw	a0, 16(a0)
	flw	fa0, 4(a0)
	flw	fa3, 4(a1)
	fmul.s	fa3, fa2, fa3
	fadd.s	fa1, fa3, fa1
	fabs.s	fa1, fa1
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10072
	li	a0, 0
	b	bne_cont_10073
bne_else_10072:
	li	a0, 1
bne_cont_10073:
	bne	a0, zero, beq_else_10074
	li	a0, 0
	b	beq_cont_10075
beq_else_10074:
	flw	fa0, 20(a2)
	fli	fa1, l_7864
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10076
	li	a0, 1
	b	bne_cont_10077
bne_else_10076:
	li	a0, 0
bne_cont_10077:
	bne	a0, zero, beq_else_10078
	li	a0, 1
	b	beq_cont_10079
beq_else_10078:
	li	a0, 0
beq_cont_10079:
beq_cont_10075:
beq_cont_10071:
	bne	a0, zero, beq_else_10080
	li	a0, 0
	b	solver_rect_fast_2645_ret
beq_else_10080:
	fsw	fa2, 0(a3)
	li	a0, 3
	b	solver_rect_fast_2645_ret
beq_else_10067:
	fsw	fa3, 0(a3)
	li	a0, 2
	b	solver_rect_fast_2645_ret
beq_else_10054:
	fsw	fa3, 0(a3)
	li	a0, 1
solver_rect_fast_2645_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_surface_fast_2652:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 4(s11)
	fli	fa3, l_7864
	flw	fa4, 0(a1)
	fle.s	t6, fa3, fa4
	beq	t6, zero, bne_else_10081
	li	a2, 0
	b	bne_cont_10082
bne_else_10081:
	li	a2, 1
bne_cont_10082:
	bne	a2, zero, beq_else_10083
	li	a0, 0
	b	solver_surface_fast_2652_ret
beq_else_10083:
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
solver_surface_fast_2652_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_second_fast_2658:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	sw	fp, 32(sp)
	addi	fp, sp, 40
	lw	a2, 4(s11)
	flw	fa3, 0(a1)
	fli	fa4, l_7864
	feq.s	t6, fa3, fa4
	beq	t6, zero, bne_else_10084
	li	a3, 1
	b	bne_cont_10085
bne_else_10084:
	li	a3, 0
bne_cont_10085:
	bne	a3, zero, beq_else_10086
	flw	fa4, 4(a1)
	fmul.s	fa4, fa4, fa0
	flw	fa5, 8(a1)
	fmul.s	fa5, fa5, fa1
	fadd.s	fa4, fa4, fa5
	flw	fa5, 12(a1)
	fmul.s	fa5, fa5, fa2
	fadd.s	fa4, fa4, fa5
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	fsw	fa3, 8(sp)
	fsw	fa4, 16(sp)
	sw	a0, 24(sp)
	call	quadratic_2622
	lw	a0, 24(sp)
	lw	a1, 4(a0)
	li	t6, 3
	bne	a1, t6, beq_else_10087
	fli	fa1, l_7865
	fsub.s	fa0, fa0, fa1
	b	beq_cont_10088
beq_else_10087:
beq_cont_10088:
	flw	fa1, 16(sp)
	fmul.s	fa2, fa1, fa1
	flw	fa3, 8(sp)
	fmul.s	fa0, fa3, fa0
	fsub.s	fa0, fa2, fa0
	fli	fa2, l_7864
	fle.s	t6, fa0, fa2
	beq	t6, zero, bne_else_10089
	li	a1, 0
	b	bne_cont_10090
bne_else_10089:
	li	a1, 1
bne_cont_10090:
	bne	a1, zero, beq_else_10091
	li	a0, 0
	b	solver_second_fast_2658_ret
beq_else_10091:
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10092
	fsqrt.s	fa0, fa0
	fsub.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 16(a0)
	fmul.s	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	b	beq_cont_10093
beq_else_10092:
	fsqrt.s	fa0, fa0
	fadd.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 16(a0)
	fmul.s	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
beq_cont_10093:
	li	a0, 1
	b	solver_second_fast_2658_ret
beq_else_10086:
	li	a0, 0
solver_second_fast_2658_ret:
	lw	ra, 36(sp)
	lw	fp, 32(sp)
	addi	sp, sp, 40
	jr	ra
solver_fast_2664:
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
	flw	fa1, 0(a7)
	fsub.s	fa0, fa0, fa1
	flw	fa1, 4(a2)
	lw	a7, 20(a6)
	flw	fa2, 4(a7)
	fsub.s	fa1, fa1, fa2
	flw	fa2, 8(a2)
	lw	a2, 20(a6)
	flw	fa3, 8(a2)
	fsub.s	fa2, fa2, fa3
	lw	a2, 4(a1)
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a2, 0(t6)
	lw	a0, 4(a6)
	li	t6, 1
	bne	a0, t6, beq_else_10094
	lw	a1, 0(a1)
	mv	a0, a6
	mv	s11, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast_2664_ret
beq_else_10094:
	li	t6, 2
	bne	a0, t6, beq_else_10095
	mv	a1, a2
	mv	a0, a6
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast_2664_ret
beq_else_10095:
	mv	a1, a2
	mv	a0, a6
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_fast_2664_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_surface_fast2_2668:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 4(s11)
	fli	fa0, l_7864
	flw	fa1, 0(a1)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10096
	li	a3, 0
	b	bne_cont_10097
bne_else_10096:
	li	a3, 1
bne_cont_10097:
	bne	a3, zero, beq_else_10098
	li	a0, 0
	b	solver_surface_fast2_2668_ret
beq_else_10098:
	flw	fa0, 0(a1)
	flw	fa1, 12(a2)
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	li	a0, 1
solver_surface_fast2_2668_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_second_fast2_2675:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a3, 4(s11)
	flw	fa3, 0(a1)
	fli	fa4, l_7864
	feq.s	t6, fa3, fa4
	beq	t6, zero, bne_else_10099
	li	a4, 1
	b	bne_cont_10100
bne_else_10099:
	li	a4, 0
bne_cont_10100:
	bne	a4, zero, beq_else_10101
	flw	fa4, 4(a1)
	fmul.s	fa0, fa4, fa0
	flw	fa4, 8(a1)
	fmul.s	fa1, fa4, fa1
	fadd.s	fa0, fa0, fa1
	flw	fa1, 12(a1)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	flw	fa1, 12(a2)
	fmul.s	fa2, fa0, fa0
	fmul.s	fa1, fa3, fa1
	fsub.s	fa1, fa2, fa1
	fli	fa2, l_7864
	fle.s	t6, fa1, fa2
	beq	t6, zero, bne_else_10102
	li	a2, 0
	b	bne_cont_10103
bne_else_10102:
	li	a2, 1
bne_cont_10103:
	bne	a2, zero, beq_else_10104
	li	a0, 0
	b	solver_second_fast2_2675_ret
beq_else_10104:
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10105
	fsqrt.s	fa1, fa1
	fsub.s	fa0, fa0, fa1
	flw	fa1, 16(a1)
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 0(a3)
	b	beq_cont_10106
beq_else_10105:
	fsqrt.s	fa1, fa1
	fadd.s	fa0, fa0, fa1
	flw	fa1, 16(a1)
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 0(a3)
beq_cont_10106:
	li	a0, 1
	b	solver_second_fast2_2675_ret
beq_else_10101:
	li	a0, 0
solver_second_fast2_2675_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
solver_fast2_2682:
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
	flw	fa0, 0(a6)
	flw	fa1, 4(a6)
	flw	fa2, 8(a6)
	lw	a7, 4(a1)
	slli	a0, a0, 2
	add	t6, a7, a0
	lw	a0, 0(t6)
	lw	a7, 4(a5)
	li	t6, 1
	bne	a7, t6, beq_else_10107
	lw	a1, 0(a1)
	mv	a2, a0
	mv	s11, a4
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast2_2682_ret
beq_else_10107:
	li	t6, 2
	bne	a7, t6, beq_else_10108
	mv	a1, a0
	mv	s11, a2
	mv	a2, a6
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast2_2682_ret
beq_else_10108:
	mv	a2, a6
	mv	a1, a0
	mv	s11, a3
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_fast2_2682_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
setup_rect_table_2685:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	li	a2, 6
	fli	fa0, l_7864
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	mv	a0, a2
	call	min_caml_create_array
	lw	a1, 4(sp)
	flw	fa0, 0(a1)
	fli	fa1, l_7864
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10109
	li	a2, 1
	b	bne_cont_10110
bne_else_10109:
	li	a2, 0
bne_cont_10110:
	bne	a2, zero, beq_else_10111
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	fli	fa0, l_7864
	flw	fa1, 0(a1)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10113
	li	a4, 0
	b	bne_cont_10114
bne_else_10113:
	li	a4, 1
bne_cont_10114:
	sw	a0, 8(sp)
	mv	a1, a4
	mv	a0, a3
	call	xor_2458
	lw	a1, 0(sp)
	lw	a2, 16(a1)
	flw	fa0, 0(a2)
	bne	a0, zero, beq_else_10115
	fneg.s	fa0, fa0
	b	beq_cont_10116
beq_else_10115:
beq_cont_10116:
	lw	a0, 8(sp)
	fsw	fa0, 0(a0)
	fli	fa0, l_7865
	lw	a2, 4(sp)
	flw	fa1, 0(a2)
	fdiv.s	fa0, fa0, fa1
	fsw	fa0, 4(a0)
	b	beq_cont_10112
beq_else_10111:
	fli	fa0, l_7864
	fsw	fa0, 4(a0)
beq_cont_10112:
	lw	a1, 4(sp)
	flw	fa0, 4(a1)
	fli	fa1, l_7864
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10117
	li	a2, 1
	b	bne_cont_10118
bne_else_10117:
	li	a2, 0
bne_cont_10118:
	bne	a2, zero, beq_else_10119
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	fli	fa0, l_7864
	flw	fa1, 4(a1)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10121
	li	a4, 0
	b	bne_cont_10122
bne_else_10121:
	li	a4, 1
bne_cont_10122:
	sw	a0, 8(sp)
	mv	a1, a4
	mv	a0, a3
	call	xor_2458
	lw	a1, 0(sp)
	lw	a2, 16(a1)
	flw	fa0, 4(a2)
	bne	a0, zero, beq_else_10123
	fneg.s	fa0, fa0
	b	beq_cont_10124
beq_else_10123:
beq_cont_10124:
	lw	a0, 8(sp)
	fsw	fa0, 8(a0)
	fli	fa0, l_7865
	lw	a2, 4(sp)
	flw	fa1, 4(a2)
	fdiv.s	fa0, fa0, fa1
	fsw	fa0, 12(a0)
	b	beq_cont_10120
beq_else_10119:
	fli	fa0, l_7864
	fsw	fa0, 12(a0)
beq_cont_10120:
	lw	a1, 4(sp)
	flw	fa0, 8(a1)
	fli	fa1, l_7864
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10125
	li	a2, 1
	b	bne_cont_10126
bne_else_10125:
	li	a2, 0
bne_cont_10126:
	bne	a2, zero, beq_else_10127
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	fli	fa0, l_7864
	flw	fa1, 8(a1)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10129
	li	a4, 0
	b	bne_cont_10130
bne_else_10129:
	li	a4, 1
bne_cont_10130:
	sw	a0, 8(sp)
	mv	a1, a4
	mv	a0, a3
	call	xor_2458
	lw	a1, 0(sp)
	lw	a1, 16(a1)
	flw	fa0, 8(a1)
	bne	a0, zero, beq_else_10131
	fneg.s	fa0, fa0
	b	beq_cont_10132
beq_else_10131:
beq_cont_10132:
	lw	a0, 8(sp)
	fsw	fa0, 16(a0)
	fli	fa0, l_7865
	lw	a1, 4(sp)
	flw	fa1, 8(a1)
	fdiv.s	fa0, fa0, fa1
	fsw	fa0, 20(a0)
	b	beq_cont_10128
beq_else_10127:
	fli	fa0, l_7864
	fsw	fa0, 20(a0)
beq_cont_10128:
setup_rect_table_2685_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
setup_surface_table_2688:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	li	a2, 4
	fli	fa0, l_7864
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	mv	a0, a2
	call	min_caml_create_array
	lw	a1, 4(sp)
	flw	fa0, 0(a1)
	lw	a2, 0(sp)
	lw	a3, 16(a2)
	flw	fa1, 0(a3)
	fmul.s	fa0, fa0, fa1
	flw	fa1, 4(a1)
	lw	a3, 16(a2)
	flw	fa2, 4(a3)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	flw	fa1, 8(a1)
	lw	a1, 16(a2)
	flw	fa2, 8(a1)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	fli	fa1, l_7864
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10133
	li	a1, 0
	b	bne_cont_10134
bne_else_10133:
	li	a1, 1
bne_cont_10134:
	bne	a1, zero, beq_else_10135
	fli	fa0, l_7864
	fsw	fa0, 0(a0)
	b	beq_cont_10136
beq_else_10135:
	fli	fa1, l_7866
	fdiv.s	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	lw	a1, 16(a2)
	flw	fa1, 0(a1)
	fdiv.s	fa1, fa1, fa0
	fneg.s	fa1, fa1
	fsw	fa1, 4(a0)
	lw	a1, 16(a2)
	flw	fa1, 4(a1)
	fdiv.s	fa1, fa1, fa0
	fneg.s	fa1, fa1
	fsw	fa1, 8(a0)
	lw	a1, 16(a2)
	flw	fa1, 8(a1)
	fdiv.s	fa0, fa1, fa0
	fneg.s	fa0, fa0
	fsw	fa0, 12(a0)
beq_cont_10136:
setup_surface_table_2688_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
setup_second_table_2691:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	li	a2, 5
	fli	fa0, l_7864
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	mv	a0, a2
	call	min_caml_create_array
	lw	a1, 4(sp)
	flw	fa0, 0(a1)
	flw	fa1, 4(a1)
	flw	fa2, 8(a1)
	lw	a2, 0(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	quadratic_2622
	lw	a0, 4(sp)
	flw	fa1, 0(a0)
	lw	a1, 0(sp)
	lw	a2, 16(a1)
	flw	fa2, 0(a2)
	fmul.s	fa1, fa1, fa2
	fneg.s	fa1, fa1
	flw	fa2, 4(a0)
	lw	a2, 16(a1)
	flw	fa3, 4(a2)
	fmul.s	fa2, fa2, fa3
	fneg.s	fa2, fa2
	flw	fa3, 8(a0)
	lw	a2, 16(a1)
	flw	fa4, 8(a2)
	fmul.s	fa3, fa3, fa4
	fneg.s	fa3, fa3
	lw	a2, 8(sp)
	fsw	fa0, 0(a2)
	lw	a3, 12(a1)
	bne	a3, zero, beq_else_10137
	fsw	fa1, 4(a2)
	fsw	fa2, 8(a2)
	fsw	fa3, 12(a2)
	b	beq_cont_10138
beq_else_10137:
	flw	fa4, 8(a0)
	lw	a3, 36(a1)
	flw	fa5, 4(a3)
	fmul.s	fa4, fa4, fa5
	flw	fa5, 4(a0)
	lw	a3, 36(a1)
	flw	fa6, 8(a3)
	fmul.s	fa5, fa5, fa6
	fadd.s	fa4, fa4, fa5
	fli	fa5, l_7976
	fdiv.s	fa4, fa4, fa5
	fsub.s	fa1, fa1, fa4
	fsw	fa1, 4(a2)
	flw	fa1, 8(a0)
	lw	a3, 36(a1)
	flw	fa4, 0(a3)
	fmul.s	fa1, fa1, fa4
	flw	fa4, 0(a0)
	lw	a3, 36(a1)
	flw	fa5, 8(a3)
	fmul.s	fa4, fa4, fa5
	fadd.s	fa1, fa1, fa4
	fli	fa4, l_7976
	fdiv.s	fa1, fa1, fa4
	fsub.s	fa1, fa2, fa1
	fsw	fa1, 8(a2)
	flw	fa1, 4(a0)
	lw	a3, 36(a1)
	flw	fa2, 0(a3)
	fmul.s	fa1, fa1, fa2
	flw	fa2, 0(a0)
	lw	a0, 36(a1)
	flw	fa4, 4(a0)
	fmul.s	fa2, fa2, fa4
	fadd.s	fa1, fa1, fa2
	fli	fa2, l_7976
	fdiv.s	fa1, fa1, fa2
	fsub.s	fa1, fa3, fa1
	fsw	fa1, 12(a2)
beq_cont_10138:
	fli	fa1, l_7864
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10139
	li	a0, 1
	b	bne_cont_10140
bne_else_10139:
	li	a0, 0
bne_cont_10140:
	bne	a0, zero, beq_else_10141
	fli	fa1, l_7865
	fdiv.s	fa0, fa1, fa0
	fsw	fa0, 16(a2)
	b	beq_cont_10142
beq_else_10141:
beq_cont_10142:
	mv	a0, a2
setup_second_table_2691_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
iter_setup_dirvec_constants_2694:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	lw	a2, 4(s11)
	blt	a1, zero, bge_else_10143
	slli	a3, a1, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	li	t6, 1
	bne	a5, t6, beq_else_10144
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_rect_table_2685
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont_10145
beq_else_10144:
	li	t6, 2
	bne	a5, t6, beq_else_10146
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_surface_table_2688
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont_10147
beq_else_10146:
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_second_table_2691
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
beq_cont_10147:
beq_cont_10145:
	addi	a1, a1, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_10143:
iter_setup_dirvec_constants_2694_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
setup_dirvec_constants_2697:
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
setup_dirvec_constants_2697_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
setup_startp_constants_2699:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	fp, 24(sp)
	addi	fp, sp, 32
	lw	a2, 4(s11)
	blt	a1, zero, bge_else_10149
	slli	a3, a1, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	lw	a3, 40(a2)
	lw	a4, 4(a2)
	flw	fa0, 0(a0)
	lw	a5, 20(a2)
	flw	fa1, 0(a5)
	fsub.s	fa0, fa0, fa1
	fsw	fa0, 0(a3)
	flw	fa0, 4(a0)
	lw	a5, 20(a2)
	flw	fa1, 4(a5)
	fsub.s	fa0, fa0, fa1
	fsw	fa0, 4(a3)
	flw	fa0, 8(a0)
	lw	a5, 20(a2)
	flw	fa1, 8(a5)
	fsub.s	fa0, fa0, fa1
	fsw	fa0, 8(a3)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	li	t6, 2
	bne	a4, t6, beq_else_10150
	lw	a2, 16(a2)
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	sw	a3, 12(sp)
	mv	a0, a2
	call	veciprod2_2488
	lw	a0, 12(sp)
	fsw	fa0, 12(a0)
	b	beq_cont_10151
beq_else_10150:
	li	t6, 2
	bgt	a4, t6, ble_else_10152
	b	ble_cont_10153
ble_else_10152:
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	sw	a3, 12(sp)
	sw	a4, 16(sp)
	mv	a0, a2
	call	quadratic_2622
	lw	a0, 16(sp)
	li	t6, 3
	bne	a0, t6, beq_else_10154
	fli	fa1, l_7865
	fsub.s	fa0, fa0, fa1
	b	beq_cont_10155
beq_else_10154:
beq_cont_10155:
	lw	a0, 12(sp)
	fsw	fa0, 12(a0)
ble_cont_10153:
beq_cont_10151:
	lw	a0, 8(sp)
	addi	a1, a0, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_10149:
setup_startp_constants_2699_ret:
	lw	ra, 28(sp)
	lw	fp, 24(sp)
	addi	sp, sp, 32
	jr	ra
setup_startp_2702:
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
	call	veccpy_2479
	lw	a0, 8(sp)
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
setup_startp_2702_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
is_rect_outside_2704:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a1, 16(a0)
	flw	fa3, 0(a1)
	fabs.s	fa0, fa0
	fle.s	t6, fa3, fa0
	beq	t6, zero, bne_else_10157
	li	a1, 0
	b	bne_cont_10158
bne_else_10157:
	li	a1, 1
bne_cont_10158:
	bne	a1, zero, beq_else_10159
	li	a1, 0
	b	beq_cont_10160
beq_else_10159:
	lw	a1, 16(a0)
	flw	fa0, 4(a1)
	fabs.s	fa1, fa1
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10161
	li	a1, 0
	b	bne_cont_10162
bne_else_10161:
	li	a1, 1
bne_cont_10162:
	bne	a1, zero, beq_else_10163
	li	a1, 0
	b	beq_cont_10164
beq_else_10163:
	lw	a1, 16(a0)
	flw	fa0, 8(a1)
	fabs.s	fa1, fa2
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10165
	li	a1, 0
	b	bne_cont_10166
bne_else_10165:
	li	a1, 1
bne_cont_10166:
beq_cont_10164:
beq_cont_10160:
	bne	a1, zero, beq_else_10167
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10168
	li	a0, 1
	b	is_rect_outside_2704_ret
beq_else_10168:
	li	a0, 0
	b	is_rect_outside_2704_ret
beq_else_10167:
	lw	a0, 24(a0)
is_rect_outside_2704_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
is_plane_outside_2709:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	lw	a1, 16(a0)
	sw	a0, 0(sp)
	mv	a0, a1
	call	veciprod2_2488
	lw	a0, 0(sp)
	lw	a0, 24(a0)
	fli	fa1, l_7864
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10169
	li	a1, 0
	b	bne_cont_10170
bne_else_10169:
	li	a1, 1
bne_cont_10170:
	call	xor_2458
	bne	a0, zero, beq_else_10171
	li	a0, 1
	b	is_plane_outside_2709_ret
beq_else_10171:
	li	a0, 0
is_plane_outside_2709_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
is_second_outside_2714:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	sw	a0, 0(sp)
	call	quadratic_2622
	lw	a0, 0(sp)
	lw	a1, 4(a0)
	li	t6, 3
	bne	a1, t6, beq_else_10172
	fli	fa1, l_7865
	fsub.s	fa0, fa0, fa1
	b	beq_cont_10173
beq_else_10172:
beq_cont_10173:
	lw	a0, 24(a0)
	fli	fa1, l_7864
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10174
	li	a1, 0
	b	bne_cont_10175
bne_else_10174:
	li	a1, 1
bne_cont_10175:
	call	xor_2458
	bne	a0, zero, beq_else_10176
	li	a0, 1
	b	is_second_outside_2714_ret
beq_else_10176:
	li	a0, 0
is_second_outside_2714_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
is_outside_2719:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a1, 20(a0)
	flw	fa3, 0(a1)
	fsub.s	fa0, fa0, fa3
	lw	a1, 20(a0)
	flw	fa3, 4(a1)
	fsub.s	fa1, fa1, fa3
	lw	a1, 20(a0)
	flw	fa3, 8(a1)
	fsub.s	fa2, fa2, fa3
	lw	a1, 4(a0)
	li	t6, 1
	bne	a1, t6, beq_else_10177
	call	is_rect_outside_2704
	b	is_outside_2719_ret
beq_else_10177:
	li	t6, 2
	bne	a1, t6, beq_else_10178
	call	is_plane_outside_2709
	b	is_outside_2719_ret
beq_else_10178:
	call	is_second_outside_2714
is_outside_2719_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
check_all_inside_2724:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	lw	a2, 4(s11)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	li	t6, -1
	bne	a3, t6, beq_else_10179
	li	a0, 1
	b	check_all_inside_2724_ret
beq_else_10179:
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
	call	is_outside_2719
	bne	a0, zero, beq_else_10180
	lw	a0, 32(sp)
	addi	a0, a0, 1
	flw	fa0, 16(sp)
	flw	fa1, 8(sp)
	flw	fa2, 0(sp)
	lw	a1, 24(sp)
	lw	s11, 28(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	check_all_inside_2724_ret
beq_else_10180:
	li	a0, 0
check_all_inside_2724_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
shadow_check_and_group_2730:
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
	bne	s2, t6, beq_else_10181
	li	a0, 0
	b	shadow_check_and_group_2730_ret
beq_else_10181:
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
	bne	a0, zero, beq_else_10182
	li	a0, 0
	b	beq_cont_10183
beq_else_10182:
	fli	fa1, l_8218
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10184
	li	a0, 0
	b	bne_cont_10185
bne_else_10184:
	li	a0, 1
bne_cont_10185:
beq_cont_10183:
	bne	a0, zero, beq_else_10186
	lw	a0, 28(sp)
	slli	a0, a0, 2
	lw	a1, 24(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10187
	li	a0, 0
	b	shadow_check_and_group_2730_ret
beq_else_10187:
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_and_group_2730_ret
beq_else_10186:
	fli	fa1, l_8219
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
	bne	a0, zero, beq_else_10188
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_and_group_2730_ret
beq_else_10188:
	li	a0, 1
shadow_check_and_group_2730_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
shadow_check_one_or_group_2733:
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
	bne	a4, t6, beq_else_10189
	li	a0, 0
	b	shadow_check_one_or_group_2733_ret
beq_else_10189:
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
	bne	a0, zero, beq_else_10190
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_group_2733_ret
beq_else_10190:
	li	a0, 1
shadow_check_one_or_group_2733_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
shadow_check_one_or_matrix_2736:
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
	bne	s1, t6, beq_else_10191
	li	a0, 0
	b	shadow_check_one_or_matrix_2736_ret
beq_else_10191:
	sw	a7, 0(sp)
	sw	a4, 4(sp)
	sw	a1, 8(sp)
	sw	s11, 12(sp)
	sw	a0, 16(sp)
	li	t6, 99
	bne	s1, t6, beq_else_10192
	li	a0, 1
	b	beq_cont_10193
beq_else_10192:
	sw	a3, 20(sp)
	mv	a1, a5
	mv	a0, s1
	mv	s11, a2
	mv	a2, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10194
	li	a0, 0
	b	beq_cont_10195
beq_else_10194:
	fli	fa0, l_8231
	lw	a0, 20(sp)
	flw	fa1, 0(a0)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10196
	li	a0, 0
	b	bne_cont_10197
bne_else_10196:
	li	a0, 1
bne_cont_10197:
	bne	a0, zero, beq_else_10198
	li	a0, 0
	b	beq_cont_10199
beq_else_10198:
	li	a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10200
	li	a0, 0
	b	beq_cont_10201
beq_else_10200:
	li	a0, 1
beq_cont_10201:
beq_cont_10199:
beq_cont_10195:
beq_cont_10193:
	bne	a0, zero, beq_else_10202
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix_2736_ret
beq_else_10202:
	li	a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10203
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix_2736_ret
beq_else_10203:
	li	a0, 1
shadow_check_one_or_matrix_2736_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
solve_each_element_2739:
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
	bne	s5, t6, beq_else_10204
	b	solve_each_element_2739_ret
beq_else_10204:
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
	bne	a0, zero, beq_else_10206
	lw	a0, 48(sp)
	slli	a0, a0, 2
	lw	a1, 44(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10207
	b	solve_each_element_2739_ret
beq_else_10207:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solve_each_element_2739_ret
beq_else_10206:
	lw	a1, 24(sp)
	flw	fa0, 0(a1)
	fli	fa1, l_7864
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10209
	li	a1, 0
	b	bne_cont_10210
bne_else_10209:
	li	a1, 1
bne_cont_10210:
	bne	a1, zero, beq_else_10211
	b	beq_cont_10212
beq_else_10211:
	lw	a1, 20(sp)
	flw	fa1, 0(a1)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10213
	li	a2, 0
	b	bne_cont_10214
bne_else_10213:
	li	a2, 1
bne_cont_10214:
	bne	a2, zero, beq_else_10215
	b	beq_cont_10216
beq_else_10215:
	fli	fa1, l_8219
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
	bne	a0, zero, beq_else_10217
	b	beq_cont_10218
beq_else_10217:
	lw	a0, 20(sp)
	flw	fa0, 80(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 72(sp)
	flw	fa1, 64(sp)
	flw	fa2, 56(sp)
	lw	a0, 8(sp)
	call	vecset_2469
	lw	a0, 4(sp)
	lw	a1, 48(sp)
	sw	a1, 0(a0)
	lw	a0, 0(sp)
	lw	a1, 52(sp)
	sw	a1, 0(a0)
beq_cont_10218:
beq_cont_10216:
beq_cont_10212:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solve_each_element_2739_ret:
	lw	ra, 96(sp)
	lw	fp, 92(sp)
	addi	sp, sp, 100
	jr	ra
solve_one_or_network_2743:
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
	bne	a5, t6, beq_else_10219
	b	solve_one_or_network_2743_ret
beq_else_10219:
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
solve_one_or_network_2743_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
trace_or_matrix_2747:
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
	bne	s2, t6, beq_else_10221
	b	trace_or_matrix_2747_ret
beq_else_10221:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	li	t6, 99
	bne	s2, t6, beq_else_10223
	li	a3, 1
	mv	a1, s1
	mv	a0, a3
	mv	s11, a7
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10224
beq_else_10223:
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
	bne	a0, zero, beq_else_10225
	b	beq_cont_10226
beq_else_10225:
	lw	a0, 28(sp)
	flw	fa0, 0(a0)
	lw	a0, 24(sp)
	flw	fa1, 0(a0)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10227
	li	a0, 0
	b	bne_cont_10228
bne_else_10227:
	li	a0, 1
bne_cont_10228:
	bne	a0, zero, beq_else_10229
	b	beq_cont_10230
beq_else_10229:
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10230:
beq_cont_10226:
beq_cont_10224:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_or_matrix_2747_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
judge_intersection_2751:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	fli	fa0, l_8252
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
	fli	fa1, l_8231
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10231
	li	a0, 0
	b	bne_cont_10232
bne_else_10231:
	li	a0, 1
bne_cont_10232:
	bne	a0, zero, beq_else_10233
	li	a0, 0
	b	judge_intersection_2751_ret
beq_else_10233:
	fli	fa1, l_8256
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10234
	li	a0, 0
	b	judge_intersection_2751_ret
bne_else_10234:
	li	a0, 1
judge_intersection_2751_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
solve_each_element_fast_2753:
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
	bne	s6, t6, beq_else_10235
	b	solve_each_element_fast_2753_ret
beq_else_10235:
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
	bne	a0, zero, beq_else_10237
	lw	a0, 52(sp)
	slli	a0, a0, 2
	lw	a1, 48(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10238
	b	solve_each_element_fast_2753_ret
beq_else_10238:
	lw	a0, 44(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solve_each_element_fast_2753_ret
beq_else_10237:
	lw	a1, 28(sp)
	flw	fa0, 0(a1)
	fli	fa1, l_7864
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10240
	li	a1, 0
	b	bne_cont_10241
bne_else_10240:
	li	a1, 1
bne_cont_10241:
	bne	a1, zero, beq_else_10242
	b	beq_cont_10243
beq_else_10242:
	lw	a1, 24(sp)
	flw	fa1, 0(a1)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10244
	li	a2, 0
	b	bne_cont_10245
bne_else_10244:
	li	a2, 1
bne_cont_10245:
	bne	a2, zero, beq_else_10246
	b	beq_cont_10247
beq_else_10246:
	fli	fa1, l_8219
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
	bne	a0, zero, beq_else_10249
	b	beq_cont_10250
beq_else_10249:
	lw	a0, 24(sp)
	flw	fa0, 88(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 80(sp)
	flw	fa1, 72(sp)
	flw	fa2, 64(sp)
	lw	a0, 8(sp)
	call	vecset_2469
	lw	a0, 4(sp)
	lw	a1, 52(sp)
	sw	a1, 0(a0)
	lw	a0, 0(sp)
	lw	a1, 56(sp)
	sw	a1, 0(a0)
beq_cont_10250:
beq_cont_10247:
beq_cont_10243:
	lw	a0, 44(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solve_each_element_fast_2753_ret:
	lw	ra, 104(sp)
	lw	fp, 100(sp)
	addi	sp, sp, 108
	jr	ra
solve_one_or_network_fast_2757:
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
	bne	a5, t6, beq_else_10251
	b	solve_one_or_network_fast_2757_ret
beq_else_10251:
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
solve_one_or_network_fast_2757_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
trace_or_matrix_fast_2761:
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
	bne	s1, t6, beq_else_10253
	b	trace_or_matrix_fast_2761_ret
beq_else_10253:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	li	t6, 99
	bne	s1, t6, beq_else_10255
	li	a3, 1
	mv	a1, a7
	mv	a0, a3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10256
beq_else_10255:
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a3, 24(sp)
	sw	a5, 28(sp)
	mv	a1, a2
	mv	a0, s1
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10257
	b	beq_cont_10258
beq_else_10257:
	lw	a0, 28(sp)
	flw	fa0, 0(a0)
	lw	a0, 24(sp)
	flw	fa1, 0(a0)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10259
	li	a0, 0
	b	bne_cont_10260
bne_else_10259:
	li	a0, 1
bne_cont_10260:
	bne	a0, zero, beq_else_10261
	b	beq_cont_10262
beq_else_10261:
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10262:
beq_cont_10258:
beq_cont_10256:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_or_matrix_fast_2761_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
judge_intersection_fast_2765:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	fli	fa0, l_8252
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
	fli	fa1, l_8231
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10263
	li	a0, 0
	b	bne_cont_10264
bne_else_10263:
	li	a0, 1
bne_cont_10264:
	bne	a0, zero, beq_else_10265
	li	a0, 0
	b	judge_intersection_fast_2765_ret
beq_else_10265:
	fli	fa1, l_8256
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10266
	li	a0, 0
	b	judge_intersection_fast_2765_ret
bne_else_10266:
	li	a0, 1
judge_intersection_fast_2765_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
get_nvector_rect_2767:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	lw	a2, 0(a2)
	fli	fa0, l_7864
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	mv	a0, a1
	call	vecfill_2474
	lw	a0, 8(sp)
	addi	a1, a0, -1
	addi	a0, a0, -1
	slli	a0, a0, 2
	lw	a2, 4(sp)
	add	t6, a2, a0
	flw	fa0, 0(t6)
	sw	a1, 12(sp)
	call	sgn_2461
	fneg.s	fa0, fa0
	lw	a0, 12(sp)
	slli	a0, a0, 2
	lw	a1, 0(sp)
	add	t6, a1, a0
	fsw	fa0, 0(t6)
get_nvector_rect_2767_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
get_nvector_plane_2769:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a1, 4(s11)
	lw	a2, 16(a0)
	flw	fa0, 0(a2)
	fneg.s	fa0, fa0
	fsw	fa0, 0(a1)
	lw	a2, 16(a0)
	flw	fa0, 4(a2)
	fneg.s	fa0, fa0
	fsw	fa0, 4(a1)
	lw	a0, 16(a0)
	flw	fa0, 8(a0)
	fneg.s	fa0, fa0
	fsw	fa0, 8(a1)
get_nvector_plane_2769_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
get_nvector_second_2771:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	flw	fa0, 0(a2)
	lw	a3, 20(a0)
	flw	fa1, 0(a3)
	fsub.s	fa0, fa0, fa1
	flw	fa1, 4(a2)
	lw	a3, 20(a0)
	flw	fa2, 4(a3)
	fsub.s	fa1, fa1, fa2
	flw	fa2, 8(a2)
	lw	a2, 20(a0)
	flw	fa3, 8(a2)
	fsub.s	fa2, fa2, fa3
	lw	a2, 16(a0)
	flw	fa3, 0(a2)
	fmul.s	fa3, fa0, fa3
	lw	a2, 16(a0)
	flw	fa4, 4(a2)
	fmul.s	fa4, fa1, fa4
	lw	a2, 16(a0)
	flw	fa5, 8(a2)
	fmul.s	fa5, fa2, fa5
	lw	a2, 12(a0)
	bne	a2, zero, beq_else_10269
	fsw	fa3, 0(a1)
	fsw	fa4, 4(a1)
	fsw	fa5, 8(a1)
	b	beq_cont_10270
beq_else_10269:
	lw	a2, 36(a0)
	flw	fa6, 8(a2)
	fmul.s	fa6, fa1, fa6
	lw	a2, 36(a0)
	flw	fa7, 4(a2)
	fmul.s	fa7, fa2, fa7
	fadd.s	fa6, fa6, fa7
	fli	fa7, l_7976
	fdiv.s	fa6, fa6, fa7
	fadd.s	fa3, fa3, fa6
	fsw	fa3, 0(a1)
	lw	a2, 36(a0)
	flw	fa3, 8(a2)
	fmul.s	fa3, fa0, fa3
	lw	a2, 36(a0)
	flw	fa6, 0(a2)
	fmul.s	fa2, fa2, fa6
	fadd.s	fa2, fa3, fa2
	fli	fa3, l_7976
	fdiv.s	fa2, fa2, fa3
	fadd.s	fa2, fa4, fa2
	fsw	fa2, 4(a1)
	lw	a2, 36(a0)
	flw	fa2, 4(a2)
	fmul.s	fa0, fa0, fa2
	lw	a2, 36(a0)
	flw	fa2, 0(a2)
	fmul.s	fa1, fa1, fa2
	fadd.s	fa0, fa0, fa1
	fli	fa1, l_7976
	fdiv.s	fa0, fa0, fa1
	fadd.s	fa0, fa5, fa0
	fsw	fa0, 8(a1)
beq_cont_10270:
	lw	a0, 24(a0)
	mv	t5, a1
	mv	a1, a0
	mv	a0, t5
	call	vecunit_sgn_2482
get_nvector_second_2771_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
get_nvector_2773:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	s11, 4(s11)
	lw	a4, 4(a0)
	li	t6, 1
	bne	a4, t6, beq_else_10271
	mv	a0, a1
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	get_nvector_2773_ret
beq_else_10271:
	li	t6, 2
	bne	a4, t6, beq_else_10272
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	get_nvector_2773_ret
beq_else_10272:
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
get_nvector_2773_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
utexture_2776:
	addi	sp, sp, -116
	sw	ra, 112(sp)
	sw	fp, 108(sp)
	addi	fp, sp, 116
	lw	a2, 4(s11)
	lw	a3, 0(a0)
	lw	a4, 32(a0)
	flw	fa0, 0(a4)
	fsw	fa0, 0(a2)
	lw	a4, 32(a0)
	flw	fa0, 4(a4)
	fsw	fa0, 4(a2)
	lw	a4, 32(a0)
	flw	fa0, 8(a4)
	fsw	fa0, 8(a2)
	li	t6, 1
	bne	a3, t6, beq_else_10273
	flw	fa0, 0(a1)
	lw	a3, 20(a0)
	flw	fa1, 0(a3)
	fsub.s	fa0, fa0, fa1
	fli	fa1, l_8347
	fmul.s	fa1, fa0, fa1
	sw	a2, 0(sp)
	sw	a0, 4(sp)
	sw	a1, 8(sp)
	fsw	fa0, 16(sp)
	fmv.s	fa0, fa1
	call	min_caml_floor
	fli	fa1, l_8348
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_8337
	flw	fa2, 16(sp)
	fsub.s	fa0, fa2, fa0
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10275
	li	a0, 0
	b	bne_cont_10276
bne_else_10275:
	li	a0, 1
bne_cont_10276:
	lw	a1, 8(sp)
	flw	fa0, 8(a1)
	lw	a1, 4(sp)
	lw	a1, 20(a1)
	flw	fa1, 8(a1)
	fsub.s	fa0, fa0, fa1
	fli	fa1, l_8347
	fmul.s	fa1, fa0, fa1
	sw	a0, 24(sp)
	fsw	fa0, 32(sp)
	fmv.s	fa0, fa1
	call	min_caml_floor
	fli	fa1, l_8348
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_8337
	flw	fa2, 32(sp)
	fsub.s	fa0, fa2, fa0
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10278
	li	a0, 0
	b	bne_cont_10279
bne_else_10278:
	li	a0, 1
bne_cont_10279:
	lw	a1, 24(sp)
	bne	a1, zero, beq_else_10280
	bne	a0, zero, beq_else_10282
	fli	fa0, l_8330
	b	beq_cont_10283
beq_else_10282:
	fli	fa0, l_7864
beq_cont_10283:
	b	beq_cont_10281
beq_else_10280:
	bne	a0, zero, beq_else_10284
	fli	fa0, l_7864
	b	beq_cont_10285
beq_else_10284:
	fli	fa0, l_8330
beq_cont_10285:
beq_cont_10281:
	lw	a0, 0(sp)
	fsw	fa0, 4(a0)
	b	utexture_2776_ret
beq_else_10273:
	li	t6, 2
	bne	a3, t6, beq_else_10287
	flw	fa0, 4(a1)
	fli	fa1, l_8341
	fmul.s	fa0, fa0, fa1
	sw	a2, 0(sp)
	sw	a1, 8(sp)
	call	min_caml_sin
	lw	a0, 8(sp)
	flw	fa1, 4(a0)
	fli	fa2, l_8341
	fmul.s	fa1, fa1, fa2
	fsw	fa0, 40(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	flw	fa1, 40(sp)
	fmul.s	fa0, fa1, fa0
	fli	fa1, l_8330
	fmul.s	fa1, fa1, fa0
	lw	a0, 0(sp)
	fsw	fa1, 0(a0)
	fli	fa1, l_8330
	fli	fa2, l_7865
	fsub.s	fa0, fa2, fa0
	fmul.s	fa0, fa1, fa0
	fsw	fa0, 4(a0)
	b	utexture_2776_ret
beq_else_10287:
	li	t6, 3
	bne	a3, t6, beq_else_10289
	flw	fa0, 0(a1)
	lw	a3, 20(a0)
	flw	fa1, 0(a3)
	fsub.s	fa0, fa0, fa1
	flw	fa1, 8(a1)
	lw	a0, 20(a0)
	flw	fa2, 8(a0)
	fsub.s	fa1, fa1, fa2
	fmul.s	fa0, fa0, fa0
	fmul.s	fa1, fa1, fa1
	fadd.s	fa0, fa0, fa1
	fsqrt.s	fa0, fa0
	fli	fa1, l_8337
	fdiv.s	fa0, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa0, 48(sp)
	call	min_caml_floor
	flw	fa1, 48(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l_8324
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 56(sp)
	call	min_caml_cos
	flw	fa1, 56(sp)
	fsw	fa0, 64(sp)
	fmv.s	fa0, fa1
	call	min_caml_cos
	flw	fa1, 64(sp)
	fmul.s	fa0, fa1, fa0
	fli	fa1, l_8330
	fmul.s	fa1, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa1, 4(a0)
	fli	fa1, l_7865
	fsub.s	fa0, fa1, fa0
	fli	fa1, l_8330
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 8(a0)
	b	utexture_2776_ret
beq_else_10289:
	li	t6, 4
	bne	a3, t6, beq_else_10291
	flw	fa0, 0(a1)
	lw	a3, 20(a0)
	flw	fa1, 0(a3)
	fsub.s	fa0, fa0, fa1
	lw	a3, 16(a0)
	flw	fa1, 0(a3)
	fsqrt.s	fa1, fa1
	fmul.s	fa0, fa0, fa1
	flw	fa1, 8(a1)
	lw	a3, 20(a0)
	flw	fa2, 8(a3)
	fsub.s	fa1, fa1, fa2
	lw	a3, 16(a0)
	flw	fa2, 8(a3)
	fsqrt.s	fa2, fa2
	fmul.s	fa1, fa1, fa2
	fmul.s	fa2, fa0, fa0
	fmul.s	fa3, fa1, fa1
	fadd.s	fa2, fa2, fa3
	fli	fa3, l_8321
	fabs.s	fa4, fa0
	fle.s	t6, fa3, fa4
	beq	t6, zero, bne_else_10292
	li	a3, 0
	b	bne_cont_10293
bne_else_10292:
	li	a3, 1
bne_cont_10293:
	sw	a2, 0(sp)
	fsw	fa2, 72(sp)
	sw	a0, 4(sp)
	sw	a1, 8(sp)
	bne	a3, zero, beq_else_10294
	fdiv.s	fa0, fa1, fa0
	fabs.s	fa0, fa0
	call	min_caml_atan
	fli	fa1, l_8323
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_8324
	fdiv.s	fa0, fa0, fa1
	b	beq_cont_10295
beq_else_10294:
	fli	fa0, l_8322
beq_cont_10295:
	fsw	fa0, 80(sp)
	call	min_caml_floor
	flw	fa1, 80(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 8(sp)
	flw	fa1, 4(a0)
	lw	a0, 4(sp)
	lw	a1, 20(a0)
	flw	fa2, 4(a1)
	fsub.s	fa1, fa1, fa2
	lw	a0, 16(a0)
	flw	fa2, 4(a0)
	fsqrt.s	fa2, fa2
	fmul.s	fa1, fa1, fa2
	fli	fa2, l_8321
	flw	fa3, 72(sp)
	fabs.s	fa4, fa3
	fle.s	t6, fa2, fa4
	beq	t6, zero, bne_else_10296
	li	a0, 0
	b	bne_cont_10297
bne_else_10296:
	li	a0, 1
bne_cont_10297:
	fsw	fa0, 88(sp)
	bne	a0, zero, beq_else_10298
	fdiv.s	fa1, fa1, fa3
	fabs.s	fa1, fa1
	fmv.s	fa0, fa1
	call	min_caml_atan
	fli	fa1, l_8323
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_8324
	fdiv.s	fa0, fa0, fa1
	b	beq_cont_10299
beq_else_10298:
	fli	fa0, l_8322
beq_cont_10299:
	fsw	fa0, 96(sp)
	call	min_caml_floor
	flw	fa1, 96(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l_8328
	fli	fa2, l_8329
	flw	fa3, 88(sp)
	fsub.s	fa2, fa2, fa3
	fli	fa4, l_8329
	fsub.s	fa3, fa4, fa3
	fmul.s	fa2, fa2, fa3
	fsub.s	fa1, fa1, fa2
	fli	fa2, l_8329
	fsub.s	fa2, fa2, fa0
	fli	fa3, l_8329
	fsub.s	fa0, fa3, fa0
	fmul.s	fa0, fa2, fa0
	fsub.s	fa0, fa1, fa0
	fli	fa1, l_7864
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10300
	li	a0, 0
	b	bne_cont_10301
bne_else_10300:
	li	a0, 1
bne_cont_10301:
	bne	a0, zero, beq_else_10302
	b	beq_cont_10303
beq_else_10302:
	fli	fa0, l_7864
beq_cont_10303:
	fli	fa1, l_8330
	fmul.s	fa0, fa1, fa0
	fli	fa1, l_8331
	fdiv.s	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 8(a0)
beq_else_10291:
utexture_2776_ret:
	lw	ra, 112(sp)
	lw	fp, 108(sp)
	addi	sp, sp, 116
	jr	ra
add_light_2779:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	lw	a1, 8(s11)
	lw	a0, 4(s11)
	fli	fa3, l_7864
	fle.s	t6, fa0, fa3
	beq	t6, zero, bne_else_10306
	li	a2, 0
	b	bne_cont_10307
bne_else_10306:
	li	a2, 1
bne_cont_10307:
	sw	a0, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa1, 16(sp)
	bne	a2, zero, beq_else_10309
	b	beq_cont_10310
beq_else_10309:
	call	vecaccum_2493
beq_cont_10310:
	fli	fa0, l_7864
	flw	fa1, 16(sp)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10311
	li	a0, 0
	b	bne_cont_10312
bne_else_10311:
	li	a0, 1
bne_cont_10312:
	bne	a0, zero, beq_else_10313
	b	add_light_2779_ret
beq_else_10313:
	fmul.s	fa0, fa1, fa1
	fmul.s	fa1, fa1, fa1
	fmul.s	fa0, fa0, fa1
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
add_light_2779_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
trace_reflections_2783:
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
	blt	a0, zero, bge_else_10316
	slli	s3, a0, 2
	add	t6, a3, s3
	lw	a3, 0(t6)
	lw	s3, 4(a3)
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	fsw	fa1, 8(sp)
	sw	s2, 16(sp)
	sw	a1, 20(sp)
	fsw	fa0, 24(sp)
	sw	a5, 32(sp)
	sw	s3, 36(sp)
	sw	a2, 40(sp)
	sw	a4, 44(sp)
	sw	a3, 48(sp)
	sw	a7, 52(sp)
	sw	s1, 56(sp)
	mv	a0, s3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10317
	b	beq_cont_10318
beq_else_10317:
	lw	a0, 56(sp)
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, 52(sp)
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 48(sp)
	lw	a2, 0(a1)
	bne	a0, a2, beq_else_10319
	li	a0, 0
	lw	a2, 44(sp)
	lw	a2, 0(a2)
	lw	s11, 40(sp)
	mv	a1, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10321
	lw	a0, 36(sp)
	lw	a1, 0(a0)
	lw	a2, 32(sp)
	mv	a0, a2
	call	veciprod_2485
	lw	a0, 48(sp)
	flw	fa1, 8(a0)
	flw	fa2, 24(sp)
	fmul.s	fa3, fa1, fa2
	fmul.s	fa0, fa3, fa0
	lw	a0, 36(sp)
	lw	a1, 0(a0)
	lw	a0, 20(sp)
	fsw	fa0, 64(sp)
	fsw	fa1, 72(sp)
	call	veciprod_2485
	flw	fa1, 72(sp)
	fmul.s	fa1, fa1, fa0
	flw	fa0, 64(sp)
	flw	fa2, 8(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10322
beq_else_10321:
beq_cont_10322:
	b	beq_cont_10320
beq_else_10319:
beq_cont_10320:
beq_cont_10318:
	lw	a0, 4(sp)
	addi	a0, a0, -1
	flw	fa0, 24(sp)
	flw	fa1, 8(sp)
	lw	a1, 20(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_10316:
trace_reflections_2783_ret:
	lw	ra, 88(sp)
	lw	fp, 84(sp)
	addi	sp, sp, 92
	jr	ra
trace_ray_2788:
	addi	sp, sp, -188
	sw	ra, 184(sp)
	sw	fp, 180(sp)
	addi	fp, sp, 188
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
	bgt	a0, t6, ble_else_10325
	lw	t5, 8(a2)
	sw	s11, 0(sp)
	fsw	fa1, 8(sp)
	sw	a5, 16(sp)
	sw	a4, 20(sp)
	sw	s7, 24(sp)
	sw	s2, 28(sp)
	sw	t4, 32(sp)
	sw	s1, 36(sp)
	sw	s4, 40(sp)
	sw	s6, 44(sp)
	sw	a6, 48(sp)
	sw	a2, 52(sp)
	sw	s10, 56(sp)
	sw	a3, 60(sp)
	sw	t0, 64(sp)
	sw	a7, 68(sp)
	sw	t2, 72(sp)
	sw	s5, 76(sp)
	sw	t1, 80(sp)
	sw	s3, 84(sp)
	sw	t3, 88(sp)
	fsw	fa0, 96(sp)
	sw	s8, 104(sp)
	sw	a1, 108(sp)
	sw	t5, 112(sp)
	sw	a0, 116(sp)
	mv	a0, a1
	mv	s11, s9
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10328
	li	a0, -1
	lw	a1, 116(sp)
	slli	a2, a1, 2
	lw	a3, 112(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	bne	a1, zero, beq_else_10329
	b	trace_ray_2788_ret
beq_else_10329:
	lw	a0, 108(sp)
	lw	a1, 104(sp)
	call	veciprod_2485
	fneg.s	fa0, fa0
	fli	fa1, l_7864
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10331
	li	a0, 0
	b	bne_cont_10332
bne_else_10331:
	li	a0, 1
bne_cont_10332:
	bne	a0, zero, beq_else_10333
	b	trace_ray_2788_ret
beq_else_10333:
	fmul.s	fa1, fa0, fa0
	fmul.s	fa0, fa1, fa0
	flw	fa1, 96(sp)
	fmul.s	fa0, fa0, fa1
	lw	a0, 88(sp)
	flw	fa1, 0(a0)
	fmul.s	fa0, fa0, fa1
	lw	a0, 84(sp)
	flw	fa1, 0(a0)
	fadd.s	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fadd.s	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fadd.s	fa0, fa1, fa0
	fsw	fa0, 8(a0)
	b	trace_ray_2788_ret
beq_else_10328:
	lw	a0, 80(sp)
	lw	a0, 0(a0)
	slli	a1, a0, 2
	lw	a2, 76(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 8(a1)
	lw	a3, 28(a1)
	flw	fa0, 0(a3)
	flw	fa1, 96(sp)
	fmul.s	fa0, fa0, fa1
	lw	a3, 108(sp)
	lw	s11, 72(sp)
	sw	a2, 120(sp)
	fsw	fa0, 128(sp)
	sw	a0, 136(sp)
	sw	a1, 140(sp)
	mv	a0, a1
	mv	a1, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 68(sp)
	lw	a1, 64(sp)
	call	veccpy_2479
	lw	a0, 140(sp)
	lw	a1, 64(sp)
	lw	s11, 60(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 136(sp)
	slli	a0, a0, 2
	lw	a1, 56(sp)
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 116(sp)
	slli	a2, a1, 2
	lw	a3, 112(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	lw	a0, 52(sp)
	lw	a2, 4(a0)
	slli	a4, a1, 2
	add	t6, a2, a4
	lw	a2, 0(t6)
	lw	a4, 64(sp)
	mv	a1, a4
	mv	a0, a2
	call	veccpy_2479
	lw	a0, 52(sp)
	lw	a1, 12(a0)
	fli	fa0, l_8329
	lw	a2, 140(sp)
	lw	a3, 28(a2)
	flw	fa1, 0(a3)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10337
	li	a3, 0
	b	bne_cont_10338
bne_else_10337:
	li	a3, 1
bne_cont_10338:
	bne	a3, zero, beq_else_10339
	li	a3, 1
	lw	a4, 116(sp)
	slli	a5, a4, 2
	add	t6, a1, a5
	sw	a3, 0(t6)
	lw	a1, 16(a0)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	lw	a5, 48(sp)
	sw	a1, 144(sp)
	mv	a1, a5
	mv	a0, a3
	call	veccpy_2479
	lw	a0, 116(sp)
	slli	a1, a0, 2
	lw	a2, 144(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa0, l_8373
	flw	fa1, 128(sp)
	fmul.s	fa0, fa0, fa1
	mv	a0, a1
	call	vecscale_2500
	lw	a0, 52(sp)
	lw	a1, 28(a0)
	lw	a2, 116(sp)
	slli	a3, a2, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	lw	a3, 44(sp)
	mv	a0, a1
	mv	a1, a3
	call	veccpy_2479
	b	beq_cont_10340
beq_else_10339:
	li	a3, 0
	lw	a4, 116(sp)
	slli	a5, a4, 2
	add	t6, a1, a5
	sw	a3, 0(t6)
beq_cont_10340:
	fli	fa0, l_8375
	lw	a0, 108(sp)
	lw	a1, 44(sp)
	fsw	fa0, 152(sp)
	call	veciprod_2485
	flw	fa1, 152(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 108(sp)
	lw	a1, 44(sp)
	call	vecaccum_2493
	lw	a0, 140(sp)
	lw	a1, 28(a0)
	flw	fa0, 4(a1)
	flw	fa1, 96(sp)
	fmul.s	fa0, fa1, fa0
	li	a1, 0
	lw	a2, 40(sp)
	lw	a2, 0(a2)
	lw	s11, 36(sp)
	fsw	fa0, 160(sp)
	mv	a0, a1
	mv	a1, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10342
	lw	a0, 44(sp)
	lw	a1, 104(sp)
	call	veciprod_2485
	fneg.s	fa0, fa0
	flw	fa1, 128(sp)
	fmul.s	fa0, fa0, fa1
	lw	a0, 108(sp)
	lw	a1, 104(sp)
	fsw	fa0, 168(sp)
	call	veciprod_2485
	fneg.s	fa1, fa0
	flw	fa0, 168(sp)
	flw	fa2, 160(sp)
	lw	s11, 32(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10343
beq_else_10342:
beq_cont_10343:
	lw	a0, 64(sp)
	lw	s11, 28(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 24(sp)
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, 128(sp)
	flw	fa1, 160(sp)
	lw	a1, 108(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	fli	fa0, l_8379
	flw	fa1, 96(sp)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10344
	li	a0, 0
	b	bne_cont_10345
bne_else_10344:
	li	a0, 1
bne_cont_10345:
	bne	a0, zero, beq_else_10346
	b	trace_ray_2788_ret
beq_else_10346:
	lw	a0, 116(sp)
	li	t6, 4
	blt	a0, t6, bge_else_10348
	b	bge_cont_10349
bge_else_10348:
	addi	a1, a0, 1
	li	a2, -1
	slli	a1, a1, 2
	lw	a3, 112(sp)
	add	t6, a3, a1
	sw	a2, 0(t6)
bge_cont_10349:
	lw	a1, 120(sp)
	li	t6, 2
	bne	a1, t6, beq_else_10350
	fli	fa0, l_7865
	lw	a1, 140(sp)
	lw	a1, 28(a1)
	flw	fa2, 0(a1)
	fsub.s	fa0, fa0, fa2
	fmul.s	fa0, fa1, fa0
	addi	a0, a0, 1
	lw	a1, 16(sp)
	flw	fa1, 0(a1)
	flw	fa2, 8(sp)
	fadd.s	fa1, fa2, fa1
	lw	a1, 108(sp)
	lw	a2, 52(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10351
beq_else_10350:
beq_cont_10351:
ble_else_10325:
trace_ray_2788_ret:
	lw	ra, 184(sp)
	lw	fp, 180(sp)
	addi	sp, sp, 188
	jr	ra
trace_diffuse_ray_2794:
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
	bne	a0, zero, beq_else_10354
	b	trace_diffuse_ray_2794_ret
beq_else_10354:
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
	bne	a0, zero, beq_else_10356
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	call	veciprod_2485
	fneg.s	fa0, fa0
	fli	fa1, l_7864
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10357
	li	a0, 0
	b	bne_cont_10358
bne_else_10357:
	li	a0, 1
bne_cont_10358:
	bne	a0, zero, beq_else_10359
	fli	fa0, l_7864
	b	beq_cont_10360
beq_else_10359:
beq_cont_10360:
	flw	fa1, 8(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 56(sp)
	lw	a0, 28(a0)
	flw	fa1, 0(a0)
	fmul.s	fa0, fa0, fa1
	lw	a0, 4(sp)
	lw	a1, 0(sp)
	call	vecaccum_2493
beq_else_10356:
trace_diffuse_ray_2794_ret:
	lw	ra, 68(sp)
	lw	fp, 64(sp)
	addi	sp, sp, 72
	jr	ra
iter_trace_diffuse_rays_2797:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	lw	a4, 4(s11)
	blt	a3, zero, bge_else_10362
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
	call	veciprod_2485
	fli	fa1, l_7864
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_10363
	li	a0, 0
	b	bne_cont_10364
bne_else_10363:
	li	a0, 1
bne_cont_10364:
	bne	a0, zero, beq_else_10365
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l_8399
	fdiv.s	fa0, fa0, fa1
	lw	s11, 12(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10366
beq_else_10365:
	lw	a0, 20(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l_8397
	fdiv.s	fa0, fa0, fa1
	lw	s11, 12(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10366:
	lw	a0, 20(sp)
	addi	a3, a0, -2
	lw	a0, 16(sp)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_10362:
iter_trace_diffuse_rays_2797_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
trace_diffuse_ray_80percent_2806:
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
	bne	a0, zero, beq_else_10368
	b	beq_cont_10369
beq_else_10368:
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
beq_cont_10369:
	lw	a0, 20(sp)
	li	t6, 1
	bne	a0, t6, beq_else_10370
	b	beq_cont_10371
beq_else_10370:
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
beq_cont_10371:
	lw	a0, 20(sp)
	li	t6, 2
	bne	a0, t6, beq_else_10372
	b	beq_cont_10373
beq_else_10372:
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
beq_cont_10373:
	lw	a0, 20(sp)
	li	t6, 3
	bne	a0, t6, beq_else_10374
	b	beq_cont_10375
beq_else_10374:
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
beq_cont_10375:
	lw	a0, 20(sp)
	li	t6, 4
	bne	a0, t6, beq_else_10376
	b	trace_diffuse_ray_80percent_2806_ret
beq_else_10376:
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
trace_diffuse_ray_80percent_2806_ret:
	lw	ra, 52(sp)
	lw	fp, 48(sp)
	addi	sp, sp, 56
	jr	ra
calc_diffuse_using_1point_2810:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	lw	a5, 20(a0)
	lw	a6, 28(a0)
	lw	a7, 4(a0)
	lw	s1, 16(a0)
	slli	s2, a1, 2
	add	t6, a5, s2
	lw	a5, 0(t6)
	sw	a4, 0(sp)
	sw	a3, 4(sp)
	sw	s1, 8(sp)
	sw	a2, 12(sp)
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a1, 24(sp)
	sw	a0, 28(sp)
	mv	a1, a5
	mv	a0, a4
	call	veccpy_2479
	lw	a0, 28(sp)
	lw	a0, 24(a0)
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
	call	vecaccumv_2503
calc_diffuse_using_1point_2810_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
calc_diffuse_using_5points_2813:
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
	call	veccpy_2479
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 28(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2497
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 20(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2497
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2497
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 12(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2497
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
	call	vecaccumv_2503
calc_diffuse_using_5points_2813_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
do_without_neighbors_2819:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a2, 4(s11)
	li	t6, 4
	bgt	a1, t6, ble_else_10378
	lw	a3, 8(a0)
	slli	a4, a1, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	blt	a3, zero, bge_else_10379
	lw	a3, 12(a0)
	slli	a4, a1, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	bne	a3, zero, beq_else_10380
	b	beq_cont_10381
beq_else_10380:
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10381:
	lw	a0, 8(sp)
	addi	a1, a0, 1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_10379:
ble_else_10378:
do_without_neighbors_2819_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
neighbors_exist_2822:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a2, 4(s11)
	lw	a3, 4(a2)
	addi	a4, a1, 1
	bgt	a3, a4, ble_else_10384
	li	a0, 0
	b	neighbors_exist_2822_ret
ble_else_10384:
	bgt	a1, zero, ble_else_10385
	li	a0, 0
	b	neighbors_exist_2822_ret
ble_else_10385:
	lw	a1, 0(a2)
	addi	a2, a0, 1
	bgt	a1, a2, ble_else_10386
	li	a0, 0
	b	neighbors_exist_2822_ret
ble_else_10386:
	bgt	a0, zero, ble_else_10387
	li	a0, 0
	b	neighbors_exist_2822_ret
ble_else_10387:
	li	a0, 1
neighbors_exist_2822_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
neighbors_are_available_2829:
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
	bne	a1, a5, beq_else_10388
	slli	a1, a0, 2
	add	t6, a3, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, beq_else_10389
	addi	a1, a0, -1
	slli	a1, a1, 2
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, beq_else_10390
	addi	a0, a0, 1
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a0, 8(a0)
	slli	a1, a4, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	bne	a0, a5, beq_else_10391
	li	a0, 1
	b	neighbors_are_available_2829_ret
beq_else_10391:
	li	a0, 0
	b	neighbors_are_available_2829_ret
beq_else_10390:
	li	a0, 0
	b	neighbors_are_available_2829_ret
beq_else_10389:
	li	a0, 0
	b	neighbors_are_available_2829_ret
beq_else_10388:
	li	a0, 0
neighbors_are_available_2829_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
try_exploit_neighbors_2835:
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
	bgt	a5, t6, ble_else_10392
	lw	s2, 8(s1)
	slli	s3, a5, 2
	add	t6, s2, s3
	lw	s2, 0(t6)
	blt	s2, zero, bge_else_10393
	sw	a1, 0(sp)
	sw	s11, 4(sp)
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
	call	neighbors_are_available_2829
	bne	a0, zero, beq_else_10394
	lw	a0, 36(sp)
	slli	a0, a0, 2
	lw	a1, 32(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 24(sp)
	lw	s11, 28(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	try_exploit_neighbors_2835_ret
beq_else_10394:
	lw	a0, 20(sp)
	lw	a0, 12(a0)
	lw	a4, 24(sp)
	slli	a1, a4, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	bne	a0, zero, beq_else_10395
	b	beq_cont_10396
beq_else_10395:
	lw	a0, 36(sp)
	lw	a1, 12(sp)
	lw	a2, 32(sp)
	lw	a3, 8(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10396:
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
bge_else_10393:
ble_else_10392:
try_exploit_neighbors_2835_ret:
	lw	ra, 48(sp)
	lw	fp, 44(sp)
	addi	sp, sp, 52
	jr	ra
write_ppm_header_2842:
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
write_ppm_header_2842_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
write_rgb_element_2844:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	call	min_caml_int_of_float
	li	t6, 255
	bgt	a0, t6, ble_else_10399
	blt	a0, zero, bge_else_10401
	b	bge_cont_10402
bge_else_10401:
	li	a0, 0
bge_cont_10402:
	b	ble_cont_10400
ble_else_10399:
	li	a0, 255
ble_cont_10400:
	call	min_caml_print_int
write_rgb_element_2844_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
write_rgb_2846:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	lw	a0, 4(s11)
	flw	fa0, 0(a0)
	sw	a0, 0(sp)
	call	write_rgb_element_2844
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 0(sp)
	flw	fa0, 4(a0)
	call	write_rgb_element_2844
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 0(sp)
	flw	fa0, 8(a0)
	call	write_rgb_element_2844
	li	a0, 10
	call	min_caml_print_char
write_rgb_2846_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
pretrace_diffuse_rays_2848:
	addi	sp, sp, -56
	sw	ra, 52(sp)
	sw	fp, 48(sp)
	addi	fp, sp, 56
	lw	a2, 16(s11)
	lw	a3, 12(s11)
	lw	a4, 8(s11)
	lw	a5, 4(s11)
	li	t6, 4
	bgt	a1, t6, ble_else_10403
	lw	a6, 8(a0)
	slli	a7, a1, 2
	add	t6, a6, a7
	lw	a6, 0(t6)
	blt	a6, zero, bge_else_10404
	lw	a6, 12(a0)
	slli	a7, a1, 2
	add	t6, a6, a7
	lw	a6, 0(t6)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	bne	a6, zero, beq_else_10405
	b	beq_cont_10406
beq_else_10405:
	lw	a6, 24(a0)
	lw	a6, 0(a6)
	fli	fa0, l_7864
	sw	a5, 12(sp)
	sw	a3, 16(sp)
	sw	a2, 20(sp)
	sw	a4, 24(sp)
	sw	a6, 28(sp)
	mv	a0, a5
	call	vecfill_2474
	lw	a0, 0(sp)
	lw	a1, 28(a0)
	lw	a2, 4(a0)
	lw	a3, 28(sp)
	slli	a3, a3, 2
	lw	a4, 24(sp)
	add	t6, a4, a3
	lw	a3, 0(t6)
	lw	a4, 8(sp)
	slli	a5, a4, 2
	add	t6, a1, a5
	lw	a1, 0(t6)
	slli	a5, a4, 2
	add	t6, a2, a5
	lw	a2, 0(t6)
	lw	s11, 20(sp)
	sw	a2, 32(sp)
	sw	a1, 36(sp)
	sw	a3, 40(sp)
	mv	a0, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 40(sp)
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 0(sp)
	lw	a1, 20(a0)
	lw	a2, 8(sp)
	slli	a3, a2, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	lw	a3, 12(sp)
	mv	a0, a1
	mv	a1, a3
	call	veccpy_2479
beq_cont_10406:
	lw	a0, 8(sp)
	addi	a1, a0, 1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_10404:
ble_else_10403:
pretrace_diffuse_rays_2848_ret:
	lw	ra, 52(sp)
	lw	fp, 48(sp)
	addi	sp, sp, 56
	jr	ra
pretrace_pixels_2851:
	addi	sp, sp, -104
	sw	ra, 100(sp)
	sw	fp, 96(sp)
	addi	fp, sp, 104
	lw	a3, 36(s11)
	lw	a4, 32(s11)
	lw	a5, 28(s11)
	lw	a6, 24(s11)
	lw	a7, 20(s11)
	lw	s1, 16(s11)
	lw	s2, 12(s11)
	lw	s3, 8(s11)
	lw	s4, 4(s11)
	blt	a1, zero, bge_else_10409
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
	call	vecunit_sgn_2482
	fli	fa0, l_7864
	lw	a0, 32(sp)
	call	vecfill_2474
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	call	veccpy_2479
	li	a0, 0
	fli	fa0, l_7865
	lw	a1, 20(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	fli	fa1, l_7864
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
	call	veccpy_2479
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
	sw	a0, 88(sp)
	mv	a0, a2
	call	add_mod5_2466
	mv	a2, a0
	flw	fa0, 64(sp)
	flw	fa1, 48(sp)
	flw	fa2, 40(sp)
	lw	a0, 16(sp)
	lw	a1, 88(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_10409:
pretrace_pixels_2851_ret:
	lw	ra, 100(sp)
	lw	fp, 96(sp)
	addi	sp, sp, 104
	jr	ra
pretrace_line_2858:
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
pretrace_line_2858_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
scan_pixel_2862:
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
	bgt	s2, a0, ble_else_10414
	b	scan_pixel_2862_ret
ble_else_10414:
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
	call	veccpy_2479
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10416
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
	b	beq_cont_10417
beq_else_10416:
	li	a5, 0
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 8(sp)
	lw	a3, 20(sp)
	lw	a4, 24(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10417:
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
scan_pixel_2862_ret:
	lw	ra, 48(sp)
	lw	fp, 44(sp)
	addi	sp, sp, 52
	jr	ra
scan_line_2868:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a5, 12(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	lw	s1, 4(a7)
	bgt	s1, a0, ble_else_10418
	b	scan_line_2868_ret
ble_else_10418:
	lw	a7, 4(a7)
	addi	a7, a7, -1
	sw	s11, 0(sp)
	sw	a4, 4(sp)
	sw	a3, 8(sp)
	sw	a2, 12(sp)
	sw	a1, 16(sp)
	sw	a0, 20(sp)
	sw	a5, 24(sp)
	bgt	a7, a0, ble_else_10420
	b	ble_cont_10421
ble_else_10420:
	addi	a7, a0, 1
	mv	a2, a4
	mv	a1, a7
	mv	a0, a3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
ble_cont_10421:
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
	call	add_mod5_2466
	mv	a4, a0
	lw	a0, 28(sp)
	lw	a1, 12(sp)
	lw	a2, 8(sp)
	lw	a3, 16(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
scan_line_2868_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
create_float5x3array_2874:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	li	a0, 3
	fli	fa0, l_7864
	call	min_caml_create_array
	mv	a1, a0
	li	a0, 5
	call	min_caml_create_array
	li	a1, 3
	fli	fa0, l_7864
	sw	a0, 0(sp)
	mv	a0, a1
	call	min_caml_create_array
	lw	a1, 0(sp)
	sw	a0, 4(a1)
	li	a0, 3
	fli	fa0, l_7864
	call	min_caml_create_array
	lw	a1, 0(sp)
	sw	a0, 8(a1)
	li	a0, 3
	fli	fa0, l_7864
	call	min_caml_create_array
	lw	a1, 0(sp)
	sw	a0, 12(a1)
	li	a0, 3
	fli	fa0, l_7864
	call	min_caml_create_array
	lw	a1, 0(sp)
	sw	a0, 16(a1)
	mv	a0, a1
create_float5x3array_2874_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
create_pixel_2876:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	sw	fp, 32(sp)
	addi	fp, sp, 40
	li	a0, 3
	fli	fa0, l_7864
	call	min_caml_create_array
	sw	a0, 0(sp)
	call	create_float5x3array_2874
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
	call	create_float5x3array_2874
	sw	a0, 16(sp)
	call	create_float5x3array_2874
	li	a1, 1
	li	a2, 0
	sw	a0, 20(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	sw	a0, 24(sp)
	call	create_float5x3array_2874
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
create_pixel_2876_ret:
	lw	ra, 36(sp)
	lw	fp, 32(sp)
	addi	sp, sp, 40
	jr	ra
init_line_elements_2878:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	blt	a1, zero, bge_else_10423
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	create_pixel_2876
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 0(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_2878
	b	init_line_elements_2878_ret
bge_else_10423:
init_line_elements_2878_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
create_pixelline_2881:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	lw	a0, 4(s11)
	lw	a1, 0(a0)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	create_pixel_2876
	mv	a1, a0
	lw	a0, 4(sp)
	call	min_caml_create_array
	lw	a1, 0(sp)
	lw	a1, 0(a1)
	addi	a1, a1, -2
	call	init_line_elements_2878
create_pixelline_2881_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
adjust_position_2885:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	fmul.s	fa0, fa0, fa0
	fli	fa2, l_8379
	fadd.s	fa0, fa0, fa2
	fsqrt.s	fa0, fa0
	fli	fa2, l_7865
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
adjust_position_2885_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
calc_dirvec_2888:
	addi	sp, sp, -88
	sw	ra, 84(sp)
	sw	fp, 80(sp)
	addi	fp, sp, 88
	lw	a3, 4(s11)
	li	t6, 5
	blt	a0, t6, bge_else_10424
	fmul.s	fa2, fa0, fa0
	fmul.s	fa3, fa1, fa1
	fadd.s	fa2, fa2, fa3
	fli	fa3, l_7865
	fadd.s	fa2, fa2, fa3
	fsqrt.s	fa2, fa2
	fdiv.s	fa0, fa0, fa2
	fdiv.s	fa1, fa1, fa2
	fli	fa3, l_7865
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
	call	vecset_2469
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
	call	vecset_2469
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
	call	vecset_2469
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
	call	vecset_2469
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
	call	vecset_2469
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
	call	vecset_2469
	b	calc_dirvec_2888_ret
bge_else_10424:
	fsw	fa2, 32(sp)
	sw	a2, 28(sp)
	sw	a1, 40(sp)
	sw	s11, 44(sp)
	fsw	fa3, 48(sp)
	sw	a0, 56(sp)
	fmv.s	fa0, fa1
	fmv.s	fa1, fa2
	call	adjust_position_2885
	lw	a0, 56(sp)
	addi	a0, a0, 1
	flw	fa1, 48(sp)
	fsw	fa0, 64(sp)
	sw	a0, 72(sp)
	call	adjust_position_2885
	fmv.s	fa1, fa0
	flw	fa0, 64(sp)
	flw	fa2, 32(sp)
	flw	fa3, 48(sp)
	lw	a0, 72(sp)
	lw	a1, 40(sp)
	lw	a2, 28(sp)
	lw	s11, 44(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
calc_dirvec_2888_ret:
	lw	ra, 84(sp)
	lw	fp, 80(sp)
	addi	sp, sp, 88
	jr	ra
calc_dirvecs_2896:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a3, 4(s11)
	blt	a0, zero, bge_else_10426
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	fsw	fa0, 8(sp)
	sw	a2, 16(sp)
	sw	a1, 20(sp)
	sw	a3, 24(sp)
	call	min_caml_float_of_int
	fli	fa1, l_8502
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_8503
	fsub.s	fa2, fa0, fa1
	li	a0, 0
	fli	fa0, l_7864
	fli	fa1, l_7864
	flw	fa3, 8(sp)
	lw	a1, 20(sp)
	lw	a2, 16(sp)
	lw	s11, 24(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	call	min_caml_float_of_int
	fli	fa1, l_8502
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_8379
	fadd.s	fa2, fa0, fa1
	li	a0, 0
	fli	fa0, l_7864
	fli	fa1, l_7864
	lw	a1, 16(sp)
	addi	a2, a1, 2
	flw	fa3, 8(sp)
	lw	a3, 20(sp)
	lw	s11, 24(sp)
	mv	a1, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	addi	a0, a0, -1
	li	a1, 1
	lw	a2, 20(sp)
	sw	a0, 28(sp)
	mv	a0, a2
	call	add_mod5_2466
	mv	a1, a0
	flw	fa0, 8(sp)
	lw	a0, 28(sp)
	lw	a2, 16(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_10426:
calc_dirvecs_2896_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
calc_dirvec_rows_2901:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	lw	a3, 4(s11)
	blt	a0, zero, bge_else_10428
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	sw	a1, 12(sp)
	sw	a3, 16(sp)
	call	min_caml_float_of_int
	fli	fa1, l_8502
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_8503
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
	call	add_mod5_2466
	mv	a1, a0
	lw	a0, 8(sp)
	addi	a2, a0, 4
	lw	a0, 20(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_10428:
calc_dirvec_rows_2901_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
create_dirvec_2905:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	lw	a0, 4(s11)
	li	a1, 3
	fli	fa0, l_7864
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
create_dirvec_2905_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
create_dirvec_elements_2907:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a2, 4(s11)
	blt	a1, zero, bge_else_10430
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
bge_else_10430:
create_dirvec_elements_2907_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
create_dirvecs_2910:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	fp, 24(sp)
	addi	fp, sp, 32
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	blt	a0, zero, bge_else_10432
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
bge_else_10432:
create_dirvecs_2910_ret:
	lw	ra, 28(sp)
	lw	fp, 24(sp)
	addi	sp, sp, 32
	jr	ra
init_dirvec_constants_2912:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	sw	fp, 16(sp)
	addi	fp, sp, 24
	lw	a2, 4(s11)
	blt	a1, zero, bge_else_10434
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
bge_else_10434:
init_dirvec_constants_2912_ret:
	lw	ra, 20(sp)
	lw	fp, 16(sp)
	addi	sp, sp, 24
	jr	ra
init_vecset_constants_2915:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	blt	a0, zero, bge_else_10436
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
bge_else_10436:
init_vecset_constants_2915_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
init_dirvecs_2917:
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
init_dirvecs_2917_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
add_reflection_2919:
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
	call	vecset_2469
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
add_reflection_2919_ret:
	lw	ra, 68(sp)
	lw	fp, 64(sp)
	addi	sp, sp, 72
	jr	ra
setup_rect_reflection_2926:
	addi	sp, sp, -68
	sw	ra, 64(sp)
	sw	fp, 60(sp)
	addi	fp, sp, 68
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	s11, 4(s11)
	slli	a0, a0, 2
	lw	a4, 0(a2)
	fli	fa0, l_7865
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
setup_rect_reflection_2926_ret:
	lw	ra, 64(sp)
	lw	fp, 60(sp)
	addi	sp, sp, 68
	jr	ra
setup_surface_reflection_2929:
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
	fli	fa0, l_7865
	lw	a6, 28(a1)
	flw	fa1, 0(a6)
	fsub.s	fa0, fa0, fa1
	lw	a6, 16(a1)
	sw	a2, 0(sp)
	fsw	fa0, 8(sp)
	sw	a0, 16(sp)
	sw	a5, 20(sp)
	sw	a4, 24(sp)
	sw	a3, 28(sp)
	sw	a1, 32(sp)
	mv	a1, a6
	mv	a0, a3
	call	veciprod_2485
	fli	fa1, l_7976
	lw	a0, 32(sp)
	lw	a1, 16(a0)
	flw	fa2, 0(a1)
	fmul.s	fa1, fa1, fa2
	fmul.s	fa1, fa1, fa0
	lw	a1, 28(sp)
	flw	fa2, 0(a1)
	fsub.s	fa1, fa1, fa2
	fli	fa2, l_7976
	lw	a2, 16(a0)
	flw	fa3, 4(a2)
	fmul.s	fa2, fa2, fa3
	fmul.s	fa2, fa2, fa0
	flw	fa3, 4(a1)
	fsub.s	fa2, fa2, fa3
	fli	fa3, l_7976
	lw	a0, 16(a0)
	flw	fa4, 8(a0)
	fmul.s	fa3, fa3, fa4
	fmul.s	fa0, fa3, fa0
	flw	fa3, 8(a1)
	fsub.s	fa3, fa0, fa3
	flw	fa0, 8(sp)
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	lw	s11, 24(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 0(sp)
	sw	a0, 0(a1)
setup_surface_reflection_2929_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
setup_reflections_2932:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	blt	a0, zero, bge_else_10445
	slli	a4, a0, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	lw	a4, 8(a3)
	li	t6, 2
	bne	a4, t6, beq_else_10446
	fli	fa0, l_7865
	lw	a4, 28(a3)
	flw	fa1, 0(a4)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_10447
	li	a4, 0
	b	bne_cont_10448
bne_else_10447:
	li	a4, 1
bne_cont_10448:
	bne	a4, zero, beq_else_10449
	b	setup_reflections_2932_ret
beq_else_10449:
	lw	a4, 4(a3)
	li	t6, 1
	bne	a4, t6, beq_else_10451
	mv	a1, a3
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	setup_reflections_2932_ret
beq_else_10451:
	li	t6, 2
	bne	a4, t6, beq_else_10452
	mv	s11, a1
	mv	a1, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_else_10452:
beq_else_10446:
bge_else_10445:
setup_reflections_2932_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
rt_2934:
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
	fli	fa0, l_8542
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
	call	veccpy_2479
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
rt_2934_ret:
	lw	ra, 84(sp)
	lw	fp, 80(sp)
	addi	sp, sp, 88
	jr	ra
end:
	j	end
	.data
l_8542:	# 128.000000
	.word	1124073472
l_8503:	# 0.900000
	.word	1063675494
l_8502:	# 0.200000
	.word	1045220557
l_8399:	# 150.000000
	.word	1125515264
l_8397:	# -150.000000
	.word	-1021968384
l_8379:	# 0.100000
	.word	1036831949
l_8375:	# -2.000000
	.word	-1073741824
l_8373:	# 0.003906
	.word	998244352
l_8348:	# 20.000000
	.word	1101004800
l_8347:	# 0.050000
	.word	1028443341
l_8341:	# 0.250000
	.word	1048576000
l_8337:	# 10.000000
	.word	1092616192
l_8331:	# 0.300000
	.word	1050253722
l_8330:	# 255.000000
	.word	1132396544
l_8329:	# 0.500000
	.word	1056964608
l_8328:	# 0.150000
	.word	1041865114
l_8324:	# 3.141593
	.word	1078530011
l_8323:	# 30.000000
	.word	1106247680
l_8322:	# 15.000000
	.word	1097859072
l_8321:	# 0.000100
	.word	953267991
l_8256:	# 100000000.000000
	.word	1287568416
l_8252:	# 1000000000.000000
	.word	1315859240
l_8231:	# -0.100000
	.word	-1110651699
l_8219:	# 0.010000
	.word	1008981770
l_8218:	# -0.200000
	.word	-1102263091
l_7976:	# 2.000000
	.word	1073741824
l_7942:	# -200.000000
	.word	-1018691584
l_7940:	# 200.000000
	.word	1128792064
l_7939:	# 0.017453
	.word	1016003125
l_7866:	# -1.000000
	.word	-1082130432
l_7865:	# 1.000000
	.word	1065353216
l_7864:	# 0.000000
	.word	0
