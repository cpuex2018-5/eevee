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
	fli	fa0, l_5978
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
	fli	fa0, l_6385
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
	fli	fa0, l_6331
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
	mv	a0, a1
	flw	fa0, 16(sp)
	lw	a1, 4(sp)
	sw	a0, 156(sp)
	mv	a0, a1
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
	la	s6, read_all_object_2591
	sw	s6, 0(s5)
	sw	s4, 4(s5)
	mv	s4, gp
	addi	gp, gp, 8
	la	s6, read_and_network_2597
	sw	s6, 0(s4)
	lw	s6, 56(sp)
	sw	s6, 4(s4)
	mv	s7, gp
	addi	gp, gp, 24
	la	s8, read_parameter_2599
	sw	s8, 0(s7)
	sw	a1, 20(s7)
	sw	a6, 16(s7)
	sw	s4, 12(s7)
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
	addi	gp, gp, 12
	la	s1, trace_diffuse_rays_2802
	sw	s1, 0(a4)
	sw	s8, 8(a4)
	sw	a6, 4(a4)
	mv	a6, gp
	addi	gp, gp, 12
	la	s1, trace_diffuse_ray_80percent_2806
	sw	s1, 0(a6)
	sw	a4, 8(a6)
	lw	s1, 144(sp)
	sw	s1, 4(a6)
	mv	s4, gp
	addi	gp, gp, 16
	la	s5, calc_diffuse_using_1point_2810
	sw	s5, 0(s4)
	sw	a6, 12(s4)
	sw	s11, 8(s4)
	sw	a1, 4(s4)
	mv	a6, gp
	addi	gp, gp, 12
	la	s5, calc_diffuse_using_5points_2813
	sw	s5, 0(a6)
	sw	s11, 8(a6)
	sw	a1, 4(a6)
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
	la	s8, try_exploit_neighbors_2835
	sw	s8, 0(s7)
	sw	s5, 8(s7)
	sw	a6, 4(s7)
	mv	a6, gp
	addi	gp, gp, 8
	la	s8, write_ppm_header_2842
	sw	s8, 0(a6)
	sw	s6, 4(a6)
	mv	s8, gp
	addi	gp, gp, 8
	la	s9, write_rgb_2846
	sw	s9, 0(s8)
	sw	s11, 4(s8)
	mv	s9, gp
	addi	gp, gp, 16
	la	s10, pretrace_diffuse_rays_2848
	sw	s10, 0(s9)
	sw	a4, 12(s9)
	sw	s1, 8(s9)
	sw	a1, 4(s9)
	mv	a1, gp
	addi	gp, gp, 40
	la	a4, pretrace_pixels_2851
	sw	a4, 0(a1)
	sw	a2, 36(a1)
	sw	s2, 32(a1)
	sw	t5, 28(a1)
	sw	a5, 24(a1)
	lw	a2, 112(sp)
	sw	a2, 20(a1)
	sw	s11, 16(a1)
	lw	a4, 136(sp)
	sw	a4, 12(a1)
	sw	s9, 8(a1)
	lw	a4, 108(sp)
	sw	a4, 4(a1)
	mv	a5, gp
	addi	gp, gp, 28
	la	s2, pretrace_line_2858
	sw	s2, 0(a5)
	sw	a3, 24(a5)
	lw	a3, 128(sp)
	sw	a3, 20(a5)
	sw	a2, 16(a5)
	sw	a1, 12(a5)
	sw	s6, 8(a5)
	sw	a4, 4(a5)
	mv	a1, gp
	addi	gp, gp, 28
	la	a3, scan_pixel_2862
	sw	a3, 0(a1)
	sw	s8, 24(a1)
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
	sw	a5, 8(a3)
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
	addi	gp, gp, 60
	la	s2, rt_2934
	sw	s2, 0(s11)
	sw	a6, 56(s11)
	sw	a0, 52(s11)
	sw	s9, 48(s11)
	sw	a2, 44(s11)
	sw	a3, 40(s11)
	lw	a0, 168(sp)
	sw	a0, 36(s11)
	sw	a5, 32(s11)
	sw	s5, 28(s11)
	lw	a0, 156(sp)
	sw	a0, 24(s11)
	sw	a7, 20(s11)
	sw	s1, 16(s11)
	sw	s6, 12(s11)
	sw	a4, 8(s11)
	sw	a1, 4(s11)
	li	a0, 512
	mv	a1, a0
	lw	ra, 0(s11)
	jalr	ra, ra, 0
#	main program ends
	lw	ra, 4(sp)
	lw	fp, 0(sp)
	addi	sp, sp, 8
	j	end
xor_2458:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	bne	a0, zero, beq_else_8509
	mv	a0, a1
	b	xor_2458_ret
beq_else_8509:
	bne	a1, zero, beq_else_8510
	li	a0, 1
	b	xor_2458_ret
beq_else_8510:
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
	fli	fa1, l_5978
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8511
	li	a0, 1
	b	bne_cont_8512
bne_else_8511:
	li	a0, 0
bne_cont_8512:
	bne	a0, zero, beq_else_8513
	fli	fa1, l_5978
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8514
	li	a0, 0
	b	bne_cont_8515
bne_else_8514:
	li	a0, 1
bne_cont_8515:
	bne	a0, zero, beq_else_8516
	fli	fa0, l_5980
	b	sgn_2461_ret
beq_else_8516:
	fli	fa0, l_5979
	b	sgn_2461_ret
beq_else_8513:
	fli	fa0, l_5978
sgn_2461_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
fneg_cond_2463:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	bne	a0, zero, beq_else_8517
	fneg.s	fa0, fa0
	b	fneg_cond_2463_ret
beq_else_8517:
fneg_cond_2463_ret:
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
	blt	a0, t6, bge_else_8518
	addi	a0, a0, -5
	b	add_mod5_2466_ret
bge_else_8518:
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
vecbzero_2477:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fli	fa0, l_5978
	call	vecfill_2474
vecbzero_2477_ret:
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
	fli	fa1, l_5978
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8522
	li	a2, 1
	b	bne_cont_8523
bne_else_8522:
	li	a2, 0
bne_cont_8523:
	bne	a2, zero, beq_else_8524
	bne	a1, zero, beq_else_8526
	fli	fa1, l_5979
	fdiv.s	fa0, fa1, fa0
	b	beq_cont_8527
beq_else_8526:
	fli	fa1, l_5980
	fdiv.s	fa0, fa1, fa0
beq_cont_8527:
	b	beq_cont_8525
beq_else_8524:
	fli	fa0, l_5979
beq_cont_8525:
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
o_texturetype_2507:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 0(a0)
o_texturetype_2507_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_form_2509:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 4(a0)
o_form_2509_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_reflectiontype_2511:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 8(a0)
o_reflectiontype_2511_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_isinvert_2513:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 24(a0)
o_isinvert_2513_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_isrot_2515:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 12(a0)
o_isrot_2515_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_a_2517:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 16(a0)
	flw	fa0, 0(a0)
o_param_a_2517_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_b_2519:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 16(a0)
	flw	fa0, 4(a0)
o_param_b_2519_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_c_2521:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 16(a0)
	flw	fa0, 8(a0)
o_param_c_2521_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_abc_2523:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 16(a0)
o_param_abc_2523_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_x_2525:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 20(a0)
	flw	fa0, 0(a0)
o_param_x_2525_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_y_2527:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 20(a0)
	flw	fa0, 4(a0)
o_param_y_2527_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_z_2529:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 20(a0)
	flw	fa0, 8(a0)
o_param_z_2529_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_diffuse_2531:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 28(a0)
	flw	fa0, 0(a0)
o_diffuse_2531_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_hilight_2533:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 28(a0)
	flw	fa0, 4(a0)
o_hilight_2533_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_color_red_2535:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 32(a0)
	flw	fa0, 0(a0)
o_color_red_2535_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_color_green_2537:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 32(a0)
	flw	fa0, 4(a0)
o_color_green_2537_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_color_blue_2539:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 32(a0)
	flw	fa0, 8(a0)
o_color_blue_2539_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_r1_2541:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 36(a0)
	flw	fa0, 0(a0)
o_param_r1_2541_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_r2_2543:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 36(a0)
	flw	fa0, 4(a0)
o_param_r2_2543_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_r3_2545:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 36(a0)
	flw	fa0, 8(a0)
o_param_r3_2545_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
o_param_ctbl_2547:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 40(a0)
o_param_ctbl_2547_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_rgb_2549:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 0(a0)
p_rgb_2549_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_intersection_points_2551:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 4(a0)
p_intersection_points_2551_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_surface_ids_2553:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 8(a0)
p_surface_ids_2553_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_calc_diffuse_2555:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 12(a0)
p_calc_diffuse_2555_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_energy_2557:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 16(a0)
p_energy_2557_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_received_ray_20percent_2559:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 20(a0)
p_received_ray_20percent_2559_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_group_id_2561:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 24(a0)
	lw	a0, 0(a0)
p_group_id_2561_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_set_group_id_2563:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 24(a0)
	sw	a1, 0(a0)
p_set_group_id_2563_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
p_nvectors_2566:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 28(a0)
p_nvectors_2566_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
d_vec_2568:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 0(a0)
d_vec_2568_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
d_const_2570:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 4(a0)
d_const_2570_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
r_surface_id_2572:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 0(a0)
r_surface_id_2572_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
r_dvec_2574:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 4(a0)
r_dvec_2574_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
r_bright_2576:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	flw	fa0, 8(a0)
r_bright_2576_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
rad_2578:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	fli	fa1, l_6066
	fmul.s	fa0, fa0, fa1
rad_2578_ret:
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
	call	rad_2578
	fsw	fa0, 24(sp)
	call	min_caml_cos
	flw	fa1, 24(sp)
	fsw	fa0, 32(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	fsw	fa0, 40(sp)
	call	min_caml_read_float
	call	rad_2578
	fsw	fa0, 48(sp)
	call	min_caml_cos
	flw	fa1, 48(sp)
	fsw	fa0, 56(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	flw	fa1, 32(sp)
	fmul.s	fa2, fa1, fa0
	fli	fa3, l_6070
	fmul.s	fa2, fa2, fa3
	lw	a0, 12(sp)
	fsw	fa2, 0(a0)
	fli	fa2, l_6072
	flw	fa3, 40(sp)
	fmul.s	fa2, fa3, fa2
	fsw	fa2, 4(a0)
	flw	fa2, 56(sp)
	fmul.s	fa4, fa1, fa2
	fli	fa5, l_6070
	fmul.s	fa4, fa4, fa5
	fsw	fa4, 8(a0)
	lw	a1, 8(sp)
	fsw	fa2, 0(a1)
	fli	fa4, l_5978
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
	call	rad_2578
	fsw	fa0, 8(sp)
	call	min_caml_sin
	fneg.s	fa0, fa0
	lw	a0, 4(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	call	rad_2578
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
	fli	fs5, l_6106
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
	fli	fs5, l_6106
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
	fli	fa0, l_6106
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
	bne	a0, t6, beq_else_8538
	li	a0, 0
	b	read_nth_object_2587_ret
beq_else_8538:
	sw	a0, 8(sp)
	call	min_caml_read_int
	sw	a0, 12(sp)
	call	min_caml_read_int
	sw	a0, 16(sp)
	call	min_caml_read_int
	li	a1, 3
	fli	fa0, l_5978
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
	fli	fa0, l_5978
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
	fli	fa0, l_5978
	fsw	fa0, 32(sp)
	call	min_caml_read_float
	flw	fa1, 32(sp)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_8539
	li	a0, 0
	b	bne_cont_8540
bne_else_8539:
	li	a0, 1
bne_cont_8540:
	li	a1, 2
	fli	fa0, l_5978
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
	fli	fa0, l_5978
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
	fli	fa0, l_5978
	mv	a0, a1
	call	min_caml_create_array
	lw	a1, 20(sp)
	bne	a1, zero, beq_else_8541
	b	beq_cont_8542
beq_else_8541:
	sw	a0, 52(sp)
	call	min_caml_read_float
	call	rad_2578
	lw	a0, 52(sp)
	fsw	fa0, 0(a0)
	call	min_caml_read_float
	call	rad_2578
	lw	a0, 52(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	call	rad_2578
	lw	a0, 52(sp)
	fsw	fa0, 8(a0)
beq_cont_8542:
	lw	a1, 12(sp)
	li	t6, 2
	bne	a1, t6, beq_else_8543
	li	a2, 1
	b	beq_cont_8544
beq_else_8543:
	lw	a2, 40(sp)
beq_cont_8544:
	li	a3, 4
	fli	fa0, l_5978
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
	bne	a4, t6, beq_else_8545
	flw	fa0, 0(a2)
	fli	fa1, l_5978
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8547
	li	a1, 1
	b	bne_cont_8548
bne_else_8547:
	li	a1, 0
bne_cont_8548:
	bne	a1, zero, beq_else_8549
	fsw	fa0, 64(sp)
	call	sgn_2461
	flw	fa1, 64(sp)
	fmul.s	fa1, fa1, fa1
	fdiv.s	fa0, fa0, fa1
	b	beq_cont_8550
beq_else_8549:
	fli	fa0, l_5978
beq_cont_8550:
	lw	a0, 24(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 4(a0)
	fli	fa1, l_5978
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8552
	li	a1, 1
	b	bne_cont_8553
bne_else_8552:
	li	a1, 0
bne_cont_8553:
	bne	a1, zero, beq_else_8554
	fsw	fa0, 72(sp)
	call	sgn_2461
	flw	fa1, 72(sp)
	fmul.s	fa1, fa1, fa1
	fdiv.s	fa0, fa0, fa1
	b	beq_cont_8555
beq_else_8554:
	fli	fa0, l_5978
beq_cont_8555:
	lw	a0, 24(sp)
	fsw	fa0, 4(a0)
	flw	fa0, 8(a0)
	fli	fa1, l_5978
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8556
	li	a1, 1
	b	bne_cont_8557
bne_else_8556:
	li	a1, 0
bne_cont_8557:
	bne	a1, zero, beq_else_8558
	fsw	fa0, 80(sp)
	call	sgn_2461
	flw	fa1, 80(sp)
	fmul.s	fa1, fa1, fa1
	fdiv.s	fa0, fa0, fa1
	b	beq_cont_8559
beq_else_8558:
	fli	fa0, l_5978
beq_cont_8559:
	lw	a0, 24(sp)
	fsw	fa0, 8(a0)
	b	beq_cont_8546
beq_else_8545:
	li	t6, 2
	bne	a4, t6, beq_else_8560
	lw	a1, 40(sp)
	bne	a1, zero, beq_else_8562
	li	a1, 1
	b	beq_cont_8563
beq_else_8562:
	li	a1, 0
beq_cont_8563:
	mv	a0, a2
	call	vecunit_sgn_2482
	b	beq_cont_8561
beq_else_8560:
beq_cont_8561:
beq_cont_8546:
	lw	a0, 20(sp)
	bne	a0, zero, beq_else_8564
	b	beq_cont_8565
beq_else_8564:
	lw	a0, 24(sp)
	lw	a1, 52(sp)
	call	rotate_quadratic_matrix_2584
beq_cont_8565:
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
	blt	a0, t6, bge_else_8566
	b	read_object_2589_ret
bge_else_8566:
	sw	s11, 0(sp)
	sw	a2, 4(sp)
	sw	a0, 8(sp)
	mv	s11, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_8568
	lw	a0, 4(sp)
	lw	a1, 8(sp)
	sw	a1, 0(a0)
	b	read_object_2589_ret
beq_else_8568:
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
read_all_object_2591:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	s11, 4(s11)
	li	a0, 0
	lw	ra, 0(s11)
	jalr	ra, ra, 0
read_all_object_2591_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
read_net_item_2593:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	sw	a0, 0(sp)
	call	min_caml_read_int
	li	t6, -1
	bne	a0, t6, beq_else_8570
	lw	a0, 0(sp)
	addi	a0, a0, 1
	li	a1, -1
	call	min_caml_create_array
	b	read_net_item_2593_ret
beq_else_8570:
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
	bne	a0, t6, beq_else_8571
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_or_network_2595_ret
beq_else_8571:
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
	bne	a1, t6, beq_else_8572
	b	read_and_network_2597_ret
beq_else_8572:
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
	sw	a2, 4(sp)
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	s11, a0
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
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
	addi	sp, sp, -76
	sw	ra, 72(sp)
	sw	fp, 68(sp)
	addi	fp, sp, 76
	lw	a5, 4(s11)
	slli	a6, a2, 2
	add	t6, a1, a6
	flw	fa3, 0(t6)
	fli	fa4, l_5978
	feq.s	t6, fa3, fa4
	beq	t6, zero, bne_else_8575
	li	a6, 1
	b	bne_cont_8576
bne_else_8575:
	li	a6, 0
bne_cont_8576:
	bne	a6, zero, beq_else_8577
	sw	a5, 0(sp)
	fsw	fa2, 8(sp)
	sw	a4, 16(sp)
	fsw	fa1, 24(sp)
	sw	a3, 32(sp)
	fsw	fa0, 40(sp)
	sw	a1, 48(sp)
	sw	a2, 52(sp)
	sw	a0, 56(sp)
	call	o_param_abc_2523
	lw	a1, 56(sp)
	sw	a0, 60(sp)
	mv	a0, a1
	call	o_isinvert_2513
	fli	fa0, l_5978
	lw	a1, 52(sp)
	slli	a2, a1, 2
	lw	a3, 48(sp)
	add	t6, a3, a2
	flw	fa1, 0(t6)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8581
	li	a2, 0
	b	bne_cont_8582
bne_else_8581:
	li	a2, 1
bne_cont_8582:
	mv	a1, a2
	call	xor_2458
	lw	a1, 52(sp)
	slli	a2, a1, 2
	lw	a3, 60(sp)
	add	t6, a3, a2
	flw	fa0, 0(t6)
	call	fneg_cond_2463
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
	lw	a3, 60(sp)
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
	beq	t6, zero, bne_else_8583
	li	a0, 0
	b	bne_cont_8584
bne_else_8583:
	li	a0, 1
bne_cont_8584:
	bne	a0, zero, beq_else_8585
	li	a0, 0
	b	solver_rect_surface_2601_ret
beq_else_8585:
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
	beq	t6, zero, bne_else_8586
	li	a0, 0
	b	bne_cont_8587
bne_else_8586:
	li	a0, 1
bne_cont_8587:
	bne	a0, zero, beq_else_8588
	li	a0, 0
	b	solver_rect_surface_2601_ret
beq_else_8588:
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_rect_surface_2601_ret
beq_else_8577:
	li	a0, 0
solver_rect_surface_2601_ret:
	lw	ra, 72(sp)
	lw	fp, 68(sp)
	addi	sp, sp, 76
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
	bne	a0, zero, beq_else_8589
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
	bne	a0, zero, beq_else_8590
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
	bne	a0, zero, beq_else_8591
	li	a0, 0
	b	solver_rect_2610_ret
beq_else_8591:
	li	a0, 3
	b	solver_rect_2610_ret
beq_else_8590:
	li	a0, 2
	b	solver_rect_2610_ret
beq_else_8589:
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
	sw	a2, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa1, 16(sp)
	fsw	fa0, 24(sp)
	sw	a1, 32(sp)
	call	o_param_abc_2523
	mv	a1, a0
	lw	a0, 32(sp)
	sw	a1, 36(sp)
	call	veciprod_2485
	fli	fa1, l_5978
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8593
	li	a0, 0
	b	bne_cont_8594
bne_else_8593:
	li	a0, 1
bne_cont_8594:
	bne	a0, zero, beq_else_8595
	li	a0, 0
	b	solver_surface_2616_ret
beq_else_8595:
	flw	fa1, 24(sp)
	flw	fa2, 16(sp)
	flw	fa3, 8(sp)
	lw	a0, 36(sp)
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
	addi	sp, sp, -132
	sw	ra, 128(sp)
	sw	fp, 124(sp)
	addi	fp, sp, 132
	fmul.s	fa3, fa0, fa0
	fsw	fa0, 0(sp)
	fsw	fa2, 8(sp)
	sw	a0, 16(sp)
	fsw	fa1, 24(sp)
	fsw	fa3, 32(sp)
	call	o_param_a_2517
	flw	fa1, 32(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 24(sp)
	fmul.s	fa2, fa1, fa1
	lw	a0, 16(sp)
	fsw	fa0, 40(sp)
	fsw	fa2, 48(sp)
	call	o_param_b_2519
	flw	fa1, 48(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 40(sp)
	fadd.s	fa0, fa1, fa0
	flw	fa1, 8(sp)
	fmul.s	fa2, fa1, fa1
	lw	a0, 16(sp)
	fsw	fa0, 56(sp)
	fsw	fa2, 64(sp)
	call	o_param_c_2521
	flw	fa1, 64(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 56(sp)
	fadd.s	fa0, fa1, fa0
	lw	a0, 16(sp)
	fsw	fa0, 72(sp)
	call	o_isrot_2515
	bne	a0, zero, beq_else_8597
	flw	fa0, 72(sp)
	b	quadratic_2622_ret
beq_else_8597:
	flw	fa0, 8(sp)
	flw	fa1, 24(sp)
	fmul.s	fa2, fa1, fa0
	lw	a0, 16(sp)
	fsw	fa2, 80(sp)
	call	o_param_r1_2541
	flw	fa1, 80(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 72(sp)
	fadd.s	fa0, fa1, fa0
	flw	fa1, 0(sp)
	flw	fa2, 8(sp)
	fmul.s	fa2, fa2, fa1
	lw	a0, 16(sp)
	fsw	fa0, 88(sp)
	fsw	fa2, 96(sp)
	call	o_param_r2_2543
	flw	fa1, 96(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 88(sp)
	fadd.s	fa0, fa1, fa0
	flw	fa1, 24(sp)
	flw	fa2, 0(sp)
	fmul.s	fa1, fa2, fa1
	lw	a0, 16(sp)
	fsw	fa0, 104(sp)
	fsw	fa1, 112(sp)
	call	o_param_r3_2545
	flw	fa1, 112(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 104(sp)
	fadd.s	fa0, fa1, fa0
quadratic_2622_ret:
	lw	ra, 128(sp)
	lw	fp, 124(sp)
	addi	sp, sp, 132
	jr	ra
bilinear_2627:
	addi	sp, sp, -156
	sw	ra, 152(sp)
	sw	fp, 148(sp)
	addi	fp, sp, 156
	fmul.s	fa6, fa0, fa3
	fsw	fa3, 0(sp)
	fsw	fa0, 8(sp)
	fsw	fa5, 16(sp)
	fsw	fa2, 24(sp)
	sw	a0, 32(sp)
	fsw	fa4, 40(sp)
	fsw	fa1, 48(sp)
	fsw	fa6, 56(sp)
	call	o_param_a_2517
	flw	fa1, 56(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 40(sp)
	flw	fa2, 48(sp)
	fmul.s	fa3, fa2, fa1
	lw	a0, 32(sp)
	fsw	fa0, 64(sp)
	fsw	fa3, 72(sp)
	call	o_param_b_2519
	flw	fa1, 72(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 64(sp)
	fadd.s	fa0, fa1, fa0
	flw	fa1, 16(sp)
	flw	fa2, 24(sp)
	fmul.s	fa3, fa2, fa1
	lw	a0, 32(sp)
	fsw	fa0, 80(sp)
	fsw	fa3, 88(sp)
	call	o_param_c_2521
	flw	fa1, 88(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 80(sp)
	fadd.s	fa0, fa1, fa0
	lw	a0, 32(sp)
	fsw	fa0, 96(sp)
	call	o_isrot_2515
	bne	a0, zero, beq_else_8599
	flw	fa0, 96(sp)
	b	bilinear_2627_ret
beq_else_8599:
	flw	fa0, 40(sp)
	flw	fa1, 24(sp)
	fmul.s	fa2, fa1, fa0
	flw	fa3, 16(sp)
	flw	fa4, 48(sp)
	fmul.s	fa5, fa4, fa3
	fadd.s	fa2, fa2, fa5
	lw	a0, 32(sp)
	fsw	fa2, 104(sp)
	call	o_param_r1_2541
	flw	fa1, 104(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 16(sp)
	flw	fa2, 8(sp)
	fmul.s	fa1, fa2, fa1
	flw	fa3, 0(sp)
	flw	fa4, 24(sp)
	fmul.s	fa4, fa4, fa3
	fadd.s	fa1, fa1, fa4
	lw	a0, 32(sp)
	fsw	fa0, 112(sp)
	fsw	fa1, 120(sp)
	call	o_param_r2_2543
	flw	fa1, 120(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 112(sp)
	fadd.s	fa0, fa1, fa0
	flw	fa1, 40(sp)
	flw	fa2, 8(sp)
	fmul.s	fa1, fa2, fa1
	flw	fa2, 0(sp)
	flw	fa3, 48(sp)
	fmul.s	fa2, fa3, fa2
	fadd.s	fa1, fa1, fa2
	lw	a0, 32(sp)
	fsw	fa0, 128(sp)
	fsw	fa1, 136(sp)
	call	o_param_r3_2545
	flw	fa1, 136(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 128(sp)
	fadd.s	fa0, fa1, fa0
	fli	fa1, l_6106
	fdiv.s	fa0, fa0, fa1
	flw	fa1, 96(sp)
	fadd.s	fa0, fa1, fa0
bilinear_2627_ret:
	lw	ra, 152(sp)
	lw	fp, 148(sp)
	addi	sp, sp, 156
	jr	ra
solver_second_2635:
	addi	sp, sp, -84
	sw	ra, 80(sp)
	sw	fp, 76(sp)
	addi	fp, sp, 84
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
	fli	fa1, l_5978
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8601
	li	a0, 1
	b	bne_cont_8602
bne_else_8601:
	li	a0, 0
bne_cont_8602:
	bne	a0, zero, beq_else_8603
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
	fsw	fa0, 56(sp)
	call	o_form_2509
	li	t6, 3
	bne	a0, t6, beq_else_8604
	fli	fa0, l_5979
	flw	fa1, 56(sp)
	fsub.s	fa0, fa1, fa0
	b	beq_cont_8605
beq_else_8604:
	flw	fa0, 56(sp)
beq_cont_8605:
	flw	fa1, 48(sp)
	fmul.s	fa2, fa1, fa1
	flw	fa3, 40(sp)
	fmul.s	fa0, fa3, fa0
	fsub.s	fa0, fa2, fa0
	fli	fa2, l_5978
	fle.s	t6, fa0, fa2
	beq	t6, zero, bne_else_8606
	li	a0, 0
	b	bne_cont_8607
bne_else_8606:
	li	a0, 1
bne_cont_8607:
	bne	a0, zero, beq_else_8608
	li	a0, 0
	b	solver_second_2635_ret
beq_else_8608:
	fsqrt.s	fa0, fa0
	lw	a0, 32(sp)
	fsw	fa0, 64(sp)
	call	o_isinvert_2513
	bne	a0, zero, beq_else_8609
	flw	fa0, 64(sp)
	fneg.s	fa0, fa0
	b	beq_cont_8610
beq_else_8609:
	flw	fa0, 64(sp)
beq_cont_8610:
	flw	fa1, 48(sp)
	fsub.s	fa0, fa0, fa1
	flw	fa1, 40(sp)
	fdiv.s	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_second_2635_ret
beq_else_8603:
	li	a0, 0
solver_second_2635_ret:
	lw	ra, 80(sp)
	lw	fp, 76(sp)
	addi	sp, sp, 84
	jr	ra
solver_2641:
	addi	sp, sp, -84
	sw	ra, 80(sp)
	sw	fp, 76(sp)
	addi	fp, sp, 84
	lw	a3, 16(s11)
	lw	a4, 12(s11)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	slli	a0, a0, 2
	add	t6, a6, a0
	lw	a0, 0(t6)
	flw	fa0, 0(a2)
	sw	a4, 0(sp)
	sw	a3, 4(sp)
	sw	a1, 8(sp)
	sw	a5, 12(sp)
	sw	a0, 16(sp)
	sw	a2, 20(sp)
	fsw	fa0, 24(sp)
	call	o_param_x_2525
	flw	fa1, 24(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 20(sp)
	flw	fa1, 4(a0)
	lw	a1, 16(sp)
	fsw	fa0, 32(sp)
	fsw	fa1, 40(sp)
	mv	a0, a1
	call	o_param_y_2527
	flw	fa1, 40(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 20(sp)
	flw	fa1, 8(a0)
	lw	a0, 16(sp)
	fsw	fa0, 48(sp)
	fsw	fa1, 56(sp)
	call	o_param_z_2529
	flw	fa1, 56(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 16(sp)
	fsw	fa0, 64(sp)
	call	o_form_2509
	li	t6, 1
	bne	a0, t6, beq_else_8611
	flw	fa0, 32(sp)
	flw	fa1, 48(sp)
	flw	fa2, 64(sp)
	lw	a0, 16(sp)
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_2641_ret
beq_else_8611:
	li	t6, 2
	bne	a0, t6, beq_else_8612
	flw	fa0, 32(sp)
	flw	fa1, 48(sp)
	flw	fa2, 64(sp)
	lw	a0, 16(sp)
	lw	a1, 8(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_2641_ret
beq_else_8612:
	flw	fa0, 32(sp)
	flw	fa1, 48(sp)
	flw	fa2, 64(sp)
	lw	a0, 16(sp)
	lw	a1, 8(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_2641_ret:
	lw	ra, 80(sp)
	lw	fp, 76(sp)
	addi	sp, sp, 84
	jr	ra
solver_rect_fast_2645:
	addi	sp, sp, -92
	sw	ra, 88(sp)
	sw	fp, 84(sp)
	addi	fp, sp, 92
	lw	a3, 4(s11)
	flw	fa3, 0(a2)
	fsub.s	fa3, fa3, fa0
	flw	fa4, 4(a2)
	fmul.s	fa3, fa3, fa4
	sw	a3, 0(sp)
	fsw	fa0, 8(sp)
	sw	a2, 16(sp)
	fsw	fa2, 24(sp)
	sw	a0, 32(sp)
	fsw	fa1, 40(sp)
	fsw	fa3, 48(sp)
	sw	a1, 56(sp)
	call	o_param_b_2519
	lw	a0, 56(sp)
	flw	fa1, 4(a0)
	flw	fa2, 48(sp)
	fmul.s	fa1, fa2, fa1
	flw	fa3, 40(sp)
	fadd.s	fa1, fa1, fa3
	fabs.s	fa1, fa1
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8616
	li	a1, 0
	b	bne_cont_8617
bne_else_8616:
	li	a1, 1
bne_cont_8617:
	bne	a1, zero, beq_else_8618
	li	a1, 0
	b	beq_cont_8619
beq_else_8618:
	lw	a1, 32(sp)
	mv	a0, a1
	call	o_param_c_2521
	lw	a0, 56(sp)
	flw	fa1, 8(a0)
	flw	fa2, 48(sp)
	fmul.s	fa1, fa2, fa1
	flw	fa3, 24(sp)
	fadd.s	fa1, fa1, fa3
	fabs.s	fa1, fa1
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8620
	li	a1, 0
	b	bne_cont_8621
bne_else_8620:
	li	a1, 1
bne_cont_8621:
	bne	a1, zero, beq_else_8622
	li	a1, 0
	b	beq_cont_8623
beq_else_8622:
	lw	a1, 16(sp)
	flw	fa0, 4(a1)
	fli	fa1, l_5978
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8624
	li	a2, 1
	b	bne_cont_8625
bne_else_8624:
	li	a2, 0
bne_cont_8625:
	bne	a2, zero, beq_else_8626
	li	a1, 1
	b	beq_cont_8627
beq_else_8626:
	li	a1, 0
beq_cont_8627:
beq_cont_8623:
beq_cont_8619:
	bne	a1, zero, beq_else_8628
	lw	a1, 16(sp)
	flw	fa0, 8(a1)
	flw	fa1, 40(sp)
	fsub.s	fa0, fa0, fa1
	flw	fa2, 12(a1)
	fmul.s	fa0, fa0, fa2
	lw	a2, 32(sp)
	fsw	fa0, 64(sp)
	mv	a0, a2
	call	o_param_a_2517
	lw	a0, 56(sp)
	flw	fa1, 0(a0)
	flw	fa2, 64(sp)
	fmul.s	fa1, fa2, fa1
	flw	fa3, 8(sp)
	fadd.s	fa1, fa1, fa3
	fabs.s	fa1, fa1
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8630
	li	a1, 0
	b	bne_cont_8631
bne_else_8630:
	li	a1, 1
bne_cont_8631:
	bne	a1, zero, beq_else_8632
	li	a1, 0
	b	beq_cont_8633
beq_else_8632:
	lw	a1, 32(sp)
	mv	a0, a1
	call	o_param_c_2521
	lw	a0, 56(sp)
	flw	fa1, 8(a0)
	flw	fa2, 64(sp)
	fmul.s	fa1, fa2, fa1
	flw	fa3, 24(sp)
	fadd.s	fa1, fa1, fa3
	fabs.s	fa1, fa1
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8634
	li	a1, 0
	b	bne_cont_8635
bne_else_8634:
	li	a1, 1
bne_cont_8635:
	bne	a1, zero, beq_else_8636
	li	a1, 0
	b	beq_cont_8637
beq_else_8636:
	lw	a1, 16(sp)
	flw	fa0, 12(a1)
	fli	fa1, l_5978
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8638
	li	a2, 1
	b	bne_cont_8639
bne_else_8638:
	li	a2, 0
bne_cont_8639:
	bne	a2, zero, beq_else_8640
	li	a1, 1
	b	beq_cont_8641
beq_else_8640:
	li	a1, 0
beq_cont_8641:
beq_cont_8637:
beq_cont_8633:
	bne	a1, zero, beq_else_8642
	lw	a1, 16(sp)
	flw	fa0, 16(a1)
	flw	fa1, 24(sp)
	fsub.s	fa0, fa0, fa1
	flw	fa1, 20(a1)
	fmul.s	fa0, fa0, fa1
	lw	a2, 32(sp)
	fsw	fa0, 72(sp)
	mv	a0, a2
	call	o_param_a_2517
	lw	a0, 56(sp)
	flw	fa1, 0(a0)
	flw	fa2, 72(sp)
	fmul.s	fa1, fa2, fa1
	flw	fa3, 8(sp)
	fadd.s	fa1, fa1, fa3
	fabs.s	fa1, fa1
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8643
	li	a1, 0
	b	bne_cont_8644
bne_else_8643:
	li	a1, 1
bne_cont_8644:
	bne	a1, zero, beq_else_8645
	li	a0, 0
	b	beq_cont_8646
beq_else_8645:
	lw	a1, 32(sp)
	mv	a0, a1
	call	o_param_b_2519
	lw	a0, 56(sp)
	flw	fa1, 4(a0)
	flw	fa2, 72(sp)
	fmul.s	fa1, fa2, fa1
	flw	fa3, 40(sp)
	fadd.s	fa1, fa1, fa3
	fabs.s	fa1, fa1
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8647
	li	a0, 0
	b	bne_cont_8648
bne_else_8647:
	li	a0, 1
bne_cont_8648:
	bne	a0, zero, beq_else_8649
	li	a0, 0
	b	beq_cont_8650
beq_else_8649:
	lw	a0, 16(sp)
	flw	fa0, 20(a0)
	fli	fa1, l_5978
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8651
	li	a0, 1
	b	bne_cont_8652
bne_else_8651:
	li	a0, 0
bne_cont_8652:
	bne	a0, zero, beq_else_8653
	li	a0, 1
	b	beq_cont_8654
beq_else_8653:
	li	a0, 0
beq_cont_8654:
beq_cont_8650:
beq_cont_8646:
	bne	a0, zero, beq_else_8655
	li	a0, 0
	b	solver_rect_fast_2645_ret
beq_else_8655:
	lw	a0, 0(sp)
	fsw	fa2, 0(a0)
	li	a0, 3
	b	solver_rect_fast_2645_ret
beq_else_8642:
	lw	a0, 0(sp)
	fsw	fa2, 0(a0)
	li	a0, 2
	b	solver_rect_fast_2645_ret
beq_else_8628:
	lw	a0, 0(sp)
	fsw	fa2, 0(a0)
	li	a0, 1
solver_rect_fast_2645_ret:
	lw	ra, 88(sp)
	lw	fp, 84(sp)
	addi	sp, sp, 92
	jr	ra
solver_surface_fast_2652:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 4(s11)
	fli	fa3, l_5978
	flw	fa4, 0(a1)
	fle.s	t6, fa3, fa4
	beq	t6, zero, bne_else_8656
	li	a2, 0
	b	bne_cont_8657
bne_else_8656:
	li	a2, 1
bne_cont_8657:
	bne	a2, zero, beq_else_8658
	li	a0, 0
	b	solver_surface_fast_2652_ret
beq_else_8658:
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
	addi	sp, sp, -60
	sw	ra, 56(sp)
	sw	fp, 52(sp)
	addi	fp, sp, 60
	lw	a2, 4(s11)
	flw	fa3, 0(a1)
	fli	fa4, l_5978
	feq.s	t6, fa3, fa4
	beq	t6, zero, bne_else_8659
	li	a3, 1
	b	bne_cont_8660
bne_else_8659:
	li	a3, 0
bne_cont_8660:
	bne	a3, zero, beq_else_8661
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
	fsw	fa0, 32(sp)
	call	o_form_2509
	li	t6, 3
	bne	a0, t6, beq_else_8663
	fli	fa0, l_5979
	flw	fa1, 32(sp)
	fsub.s	fa0, fa1, fa0
	b	beq_cont_8664
beq_else_8663:
	flw	fa0, 32(sp)
beq_cont_8664:
	flw	fa1, 16(sp)
	fmul.s	fa2, fa1, fa1
	flw	fa3, 8(sp)
	fmul.s	fa0, fa3, fa0
	fsub.s	fa0, fa2, fa0
	fli	fa2, l_5978
	fle.s	t6, fa0, fa2
	beq	t6, zero, bne_else_8665
	li	a0, 0
	b	bne_cont_8666
bne_else_8665:
	li	a0, 1
bne_cont_8666:
	bne	a0, zero, beq_else_8667
	li	a0, 0
	b	solver_second_fast_2658_ret
beq_else_8667:
	lw	a0, 24(sp)
	fsw	fa0, 40(sp)
	call	o_isinvert_2513
	bne	a0, zero, beq_else_8668
	flw	fa0, 40(sp)
	fsqrt.s	fa0, fa0
	flw	fa1, 16(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 16(a0)
	fmul.s	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	b	beq_cont_8669
beq_else_8668:
	flw	fa0, 40(sp)
	fsqrt.s	fa0, fa0
	flw	fa1, 16(sp)
	fadd.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 16(a0)
	fmul.s	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
beq_cont_8669:
	li	a0, 1
	b	solver_second_fast_2658_ret
beq_else_8661:
	li	a0, 0
solver_second_fast_2658_ret:
	lw	ra, 56(sp)
	lw	fp, 52(sp)
	addi	sp, sp, 60
	jr	ra
solver_fast_2664:
	addi	sp, sp, -96
	sw	ra, 92(sp)
	sw	fp, 88(sp)
	addi	fp, sp, 96
	lw	a3, 16(s11)
	lw	a4, 12(s11)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	slli	a7, a0, 2
	add	t6, a6, a7
	lw	a6, 0(t6)
	flw	fa0, 0(a2)
	sw	a4, 0(sp)
	sw	a3, 4(sp)
	sw	a5, 8(sp)
	sw	a0, 12(sp)
	sw	a1, 16(sp)
	sw	a6, 20(sp)
	sw	a2, 24(sp)
	fsw	fa0, 32(sp)
	mv	a0, a6
	call	o_param_x_2525
	flw	fa1, 32(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 24(sp)
	flw	fa1, 4(a0)
	lw	a1, 20(sp)
	fsw	fa0, 40(sp)
	fsw	fa1, 48(sp)
	mv	a0, a1
	call	o_param_y_2527
	flw	fa1, 48(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 24(sp)
	flw	fa1, 8(a0)
	lw	a0, 20(sp)
	fsw	fa0, 56(sp)
	fsw	fa1, 64(sp)
	call	o_param_z_2529
	flw	fa1, 64(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 16(sp)
	fsw	fa0, 72(sp)
	call	d_const_2570
	lw	a1, 12(sp)
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	lw	a1, 20(sp)
	sw	a0, 80(sp)
	mv	a0, a1
	call	o_form_2509
	li	t6, 1
	bne	a0, t6, beq_else_8671
	lw	a0, 16(sp)
	call	d_vec_2568
	mv	a1, a0
	flw	fa0, 40(sp)
	flw	fa1, 56(sp)
	flw	fa2, 72(sp)
	lw	a0, 20(sp)
	lw	a2, 80(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast_2664_ret
beq_else_8671:
	li	t6, 2
	bne	a0, t6, beq_else_8672
	flw	fa0, 40(sp)
	flw	fa1, 56(sp)
	flw	fa2, 72(sp)
	lw	a0, 20(sp)
	lw	a1, 80(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast_2664_ret
beq_else_8672:
	flw	fa0, 40(sp)
	flw	fa1, 56(sp)
	flw	fa2, 72(sp)
	lw	a0, 20(sp)
	lw	a1, 80(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_fast_2664_ret:
	lw	ra, 92(sp)
	lw	fp, 88(sp)
	addi	sp, sp, 96
	jr	ra
solver_surface_fast2_2668:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a0, 4(s11)
	fli	fa0, l_5978
	flw	fa1, 0(a1)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8673
	li	a3, 0
	b	bne_cont_8674
bne_else_8673:
	li	a3, 1
bne_cont_8674:
	bne	a3, zero, beq_else_8675
	li	a0, 0
	b	solver_surface_fast2_2668_ret
beq_else_8675:
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
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	lw	a3, 4(s11)
	flw	fa3, 0(a1)
	fli	fa4, l_5978
	feq.s	t6, fa3, fa4
	beq	t6, zero, bne_else_8676
	li	a4, 1
	b	bne_cont_8677
bne_else_8676:
	li	a4, 0
bne_cont_8677:
	bne	a4, zero, beq_else_8678
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
	fli	fa2, l_5978
	fle.s	t6, fa1, fa2
	beq	t6, zero, bne_else_8679
	li	a2, 0
	b	bne_cont_8680
bne_else_8679:
	li	a2, 1
bne_cont_8680:
	bne	a2, zero, beq_else_8681
	li	a0, 0
	b	solver_second_fast2_2675_ret
beq_else_8681:
	sw	a3, 0(sp)
	sw	a1, 4(sp)
	fsw	fa0, 8(sp)
	fsw	fa1, 16(sp)
	call	o_isinvert_2513
	bne	a0, zero, beq_else_8682
	flw	fa0, 16(sp)
	fsqrt.s	fa0, fa0
	flw	fa1, 8(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 16(a0)
	fmul.s	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	b	beq_cont_8683
beq_else_8682:
	flw	fa0, 16(sp)
	fsqrt.s	fa0, fa0
	flw	fa1, 8(sp)
	fadd.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 16(a0)
	fmul.s	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
beq_cont_8683:
	li	a0, 1
	b	solver_second_fast2_2675_ret
beq_else_8678:
	li	a0, 0
solver_second_fast2_2675_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
solver_fast2_2682:
	addi	sp, sp, -72
	sw	ra, 68(sp)
	sw	fp, 64(sp)
	addi	fp, sp, 72
	lw	a2, 16(s11)
	lw	a3, 12(s11)
	lw	a4, 8(s11)
	lw	a5, 4(s11)
	slli	a6, a0, 2
	add	t6, a5, a6
	lw	a5, 0(t6)
	sw	a3, 0(sp)
	sw	a2, 4(sp)
	sw	a4, 8(sp)
	sw	a5, 12(sp)
	sw	a0, 16(sp)
	sw	a1, 20(sp)
	mv	a0, a5
	call	o_param_ctbl_2547
	flw	fa0, 0(a0)
	flw	fa1, 4(a0)
	flw	fa2, 8(a0)
	lw	a1, 20(sp)
	sw	a0, 24(sp)
	fsw	fa2, 32(sp)
	fsw	fa1, 40(sp)
	fsw	fa0, 48(sp)
	mv	a0, a1
	call	d_const_2570
	lw	a1, 16(sp)
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	lw	a1, 12(sp)
	sw	a0, 56(sp)
	mv	a0, a1
	call	o_form_2509
	li	t6, 1
	bne	a0, t6, beq_else_8685
	lw	a0, 20(sp)
	call	d_vec_2568
	mv	a1, a0
	flw	fa0, 48(sp)
	flw	fa1, 40(sp)
	flw	fa2, 32(sp)
	lw	a0, 12(sp)
	lw	a2, 56(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast2_2682_ret
beq_else_8685:
	li	t6, 2
	bne	a0, t6, beq_else_8686
	flw	fa0, 48(sp)
	flw	fa1, 40(sp)
	flw	fa2, 32(sp)
	lw	a0, 12(sp)
	lw	a1, 56(sp)
	lw	a2, 24(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast2_2682_ret
beq_else_8686:
	flw	fa0, 48(sp)
	flw	fa1, 40(sp)
	flw	fa2, 32(sp)
	lw	a0, 12(sp)
	lw	a1, 56(sp)
	lw	a2, 24(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_fast2_2682_ret:
	lw	ra, 68(sp)
	lw	fp, 64(sp)
	addi	sp, sp, 72
	jr	ra
setup_rect_table_2685:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	li	a2, 6
	fli	fa0, l_5978
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	mv	a0, a2
	call	min_caml_create_array
	lw	a1, 4(sp)
	flw	fa0, 0(a1)
	fli	fa1, l_5978
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8687
	li	a2, 1
	b	bne_cont_8688
bne_else_8687:
	li	a2, 0
bne_cont_8688:
	bne	a2, zero, beq_else_8689
	lw	a2, 0(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	o_isinvert_2513
	fli	fa0, l_5978
	lw	a1, 4(sp)
	flw	fa1, 0(a1)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8691
	li	a2, 0
	b	bne_cont_8692
bne_else_8691:
	li	a2, 1
bne_cont_8692:
	mv	a1, a2
	call	xor_2458
	lw	a1, 0(sp)
	sw	a0, 12(sp)
	mv	a0, a1
	call	o_param_a_2517
	lw	a0, 12(sp)
	call	fneg_cond_2463
	lw	a0, 8(sp)
	fsw	fa0, 0(a0)
	fli	fa0, l_5979
	lw	a1, 4(sp)
	flw	fa1, 0(a1)
	fdiv.s	fa0, fa0, fa1
	fsw	fa0, 4(a0)
	b	beq_cont_8690
beq_else_8689:
	fli	fa0, l_5978
	fsw	fa0, 4(a0)
beq_cont_8690:
	flw	fa0, 4(a1)
	fli	fa1, l_5978
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8693
	li	a2, 1
	b	bne_cont_8694
bne_else_8693:
	li	a2, 0
bne_cont_8694:
	bne	a2, zero, beq_else_8695
	lw	a2, 0(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	o_isinvert_2513
	fli	fa0, l_5978
	lw	a1, 4(sp)
	flw	fa1, 4(a1)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8697
	li	a2, 0
	b	bne_cont_8698
bne_else_8697:
	li	a2, 1
bne_cont_8698:
	mv	a1, a2
	call	xor_2458
	lw	a1, 0(sp)
	sw	a0, 16(sp)
	mv	a0, a1
	call	o_param_b_2519
	lw	a0, 16(sp)
	call	fneg_cond_2463
	lw	a0, 8(sp)
	fsw	fa0, 8(a0)
	fli	fa0, l_5979
	lw	a1, 4(sp)
	flw	fa1, 4(a1)
	fdiv.s	fa0, fa0, fa1
	fsw	fa0, 12(a0)
	b	beq_cont_8696
beq_else_8695:
	fli	fa0, l_5978
	fsw	fa0, 12(a0)
beq_cont_8696:
	flw	fa0, 8(a1)
	fli	fa1, l_5978
	feq.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8699
	li	a2, 1
	b	bne_cont_8700
bne_else_8699:
	li	a2, 0
bne_cont_8700:
	bne	a2, zero, beq_else_8701
	lw	a2, 0(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	o_isinvert_2513
	fli	fa0, l_5978
	lw	a1, 4(sp)
	flw	fa1, 8(a1)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8703
	li	a2, 0
	b	bne_cont_8704
bne_else_8703:
	li	a2, 1
bne_cont_8704:
	mv	a1, a2
	call	xor_2458
	lw	a1, 0(sp)
	sw	a0, 20(sp)
	mv	a0, a1
	call	o_param_c_2521
	lw	a0, 20(sp)
	call	fneg_cond_2463
	lw	a0, 8(sp)
	fsw	fa0, 16(a0)
	fli	fa0, l_5979
	lw	a1, 4(sp)
	flw	fa1, 8(a1)
	fdiv.s	fa0, fa0, fa1
	fsw	fa0, 20(a0)
	b	beq_cont_8702
beq_else_8701:
	fli	fa0, l_5978
	fsw	fa0, 20(a0)
beq_cont_8702:
setup_rect_table_2685_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
setup_surface_table_2688:
	addi	sp, sp, -76
	sw	ra, 72(sp)
	sw	fp, 68(sp)
	addi	fp, sp, 76
	li	a2, 4
	fli	fa0, l_5978
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	mv	a0, a2
	call	min_caml_create_array
	lw	a1, 4(sp)
	flw	fa0, 0(a1)
	lw	a2, 0(sp)
	sw	a0, 8(sp)
	fsw	fa0, 16(sp)
	mv	a0, a2
	call	o_param_a_2517
	flw	fa1, 16(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 4(a0)
	lw	a1, 0(sp)
	fsw	fa0, 24(sp)
	fsw	fa1, 32(sp)
	mv	a0, a1
	call	o_param_b_2519
	flw	fa1, 32(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 24(sp)
	fadd.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 8(a0)
	lw	a0, 0(sp)
	fsw	fa0, 40(sp)
	fsw	fa1, 48(sp)
	call	o_param_c_2521
	flw	fa1, 48(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 40(sp)
	fadd.s	fa0, fa1, fa0
	fli	fa1, l_5978
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8706
	li	a0, 0
	b	bne_cont_8707
bne_else_8706:
	li	a0, 1
bne_cont_8707:
	bne	a0, zero, beq_else_8708
	fli	fa0, l_5978
	lw	a0, 8(sp)
	fsw	fa0, 0(a0)
	b	beq_cont_8709
beq_else_8708:
	fli	fa1, l_5980
	fdiv.s	fa1, fa1, fa0
	lw	a0, 8(sp)
	fsw	fa1, 0(a0)
	lw	a1, 0(sp)
	fsw	fa0, 56(sp)
	mv	a0, a1
	call	o_param_a_2517
	flw	fa1, 56(sp)
	fdiv.s	fa0, fa0, fa1
	fneg.s	fa0, fa0
	lw	a0, 8(sp)
	fsw	fa0, 4(a0)
	lw	a1, 0(sp)
	mv	a0, a1
	call	o_param_b_2519
	flw	fa1, 56(sp)
	fdiv.s	fa0, fa0, fa1
	fneg.s	fa0, fa0
	lw	a0, 8(sp)
	fsw	fa0, 8(a0)
	lw	a1, 0(sp)
	mv	a0, a1
	call	o_param_c_2521
	flw	fa1, 56(sp)
	fdiv.s	fa0, fa0, fa1
	fneg.s	fa0, fa0
	lw	a0, 8(sp)
	fsw	fa0, 12(a0)
beq_cont_8709:
setup_surface_table_2688_ret:
	lw	ra, 72(sp)
	lw	fp, 68(sp)
	addi	sp, sp, 76
	jr	ra
setup_second_table_2691:
	addi	sp, sp, -156
	sw	ra, 152(sp)
	sw	fp, 148(sp)
	addi	fp, sp, 156
	li	a2, 5
	fli	fa0, l_5978
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
	fsw	fa0, 16(sp)
	fsw	fa1, 24(sp)
	mv	a0, a1
	call	o_param_a_2517
	flw	fa1, 24(sp)
	fmul.s	fa0, fa1, fa0
	fneg.s	fa0, fa0
	lw	a0, 4(sp)
	flw	fa1, 4(a0)
	lw	a1, 0(sp)
	fsw	fa0, 32(sp)
	fsw	fa1, 40(sp)
	mv	a0, a1
	call	o_param_b_2519
	flw	fa1, 40(sp)
	fmul.s	fa0, fa1, fa0
	fneg.s	fa0, fa0
	lw	a0, 4(sp)
	flw	fa1, 8(a0)
	lw	a1, 0(sp)
	fsw	fa0, 48(sp)
	fsw	fa1, 56(sp)
	mv	a0, a1
	call	o_param_c_2521
	flw	fa1, 56(sp)
	fmul.s	fa0, fa1, fa0
	fneg.s	fa0, fa0
	lw	a0, 8(sp)
	flw	fa1, 16(sp)
	fsw	fa1, 0(a0)
	lw	a1, 0(sp)
	fsw	fa0, 64(sp)
	mv	a0, a1
	call	o_isrot_2515
	bne	a0, zero, beq_else_8711
	lw	a0, 8(sp)
	flw	fa0, 32(sp)
	fsw	fa0, 4(a0)
	flw	fa0, 48(sp)
	fsw	fa0, 8(a0)
	flw	fa0, 64(sp)
	fsw	fa0, 12(a0)
	b	beq_cont_8712
beq_else_8711:
	lw	a0, 4(sp)
	flw	fa0, 8(a0)
	lw	a1, 0(sp)
	fsw	fa0, 72(sp)
	mv	a0, a1
	call	o_param_r2_2543
	flw	fa1, 72(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 4(a0)
	lw	a1, 0(sp)
	fsw	fa0, 80(sp)
	fsw	fa1, 88(sp)
	mv	a0, a1
	call	o_param_r3_2545
	flw	fa1, 88(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 80(sp)
	fadd.s	fa0, fa1, fa0
	fli	fa1, l_6106
	fdiv.s	fa0, fa0, fa1
	flw	fa1, 32(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 8(sp)
	fsw	fa0, 4(a0)
	lw	a1, 4(sp)
	flw	fa0, 8(a1)
	lw	a2, 0(sp)
	fsw	fa0, 96(sp)
	mv	a0, a2
	call	o_param_r1_2541
	flw	fa1, 96(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 0(a0)
	lw	a1, 0(sp)
	fsw	fa0, 104(sp)
	fsw	fa1, 112(sp)
	mv	a0, a1
	call	o_param_r3_2545
	flw	fa1, 112(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 104(sp)
	fadd.s	fa0, fa1, fa0
	fli	fa1, l_6106
	fdiv.s	fa0, fa0, fa1
	flw	fa1, 48(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 8(sp)
	fsw	fa0, 8(a0)
	lw	a1, 4(sp)
	flw	fa0, 4(a1)
	lw	a2, 0(sp)
	fsw	fa0, 120(sp)
	mv	a0, a2
	call	o_param_r1_2541
	flw	fa1, 120(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 0(a0)
	lw	a0, 0(sp)
	fsw	fa0, 128(sp)
	fsw	fa1, 136(sp)
	call	o_param_r2_2543
	flw	fa1, 136(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 128(sp)
	fadd.s	fa0, fa1, fa0
	fli	fa1, l_6106
	fdiv.s	fa0, fa0, fa1
	flw	fa1, 64(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 8(sp)
	fsw	fa0, 12(a0)
beq_cont_8712:
	fli	fa0, l_5978
	flw	fa1, 16(sp)
	feq.s	t6, fa1, fa0
	beq	t6, zero, bne_else_8713
	li	a1, 1
	b	bne_cont_8714
bne_else_8713:
	li	a1, 0
bne_cont_8714:
	bne	a1, zero, beq_else_8715
	fli	fa0, l_5979
	fdiv.s	fa0, fa0, fa1
	fsw	fa0, 16(a0)
	b	beq_cont_8716
beq_else_8715:
beq_cont_8716:
setup_second_table_2691_ret:
	lw	ra, 152(sp)
	lw	fp, 148(sp)
	addi	sp, sp, 156
	jr	ra
iter_setup_dirvec_constants_2694:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	lw	a2, 4(s11)
	blt	a1, zero, bge_else_8717
	slli	a3, a1, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	sw	s11, 0(sp)
	sw	a1, 4(sp)
	sw	a2, 8(sp)
	sw	a0, 12(sp)
	call	d_const_2570
	lw	a1, 12(sp)
	sw	a0, 16(sp)
	mv	a0, a1
	call	d_vec_2568
	lw	a1, 8(sp)
	sw	a0, 20(sp)
	mv	a0, a1
	call	o_form_2509
	li	t6, 1
	bne	a0, t6, beq_else_8718
	lw	a0, 20(sp)
	lw	a1, 8(sp)
	call	setup_rect_table_2685
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont_8719
beq_else_8718:
	li	t6, 2
	bne	a0, t6, beq_else_8720
	lw	a0, 20(sp)
	lw	a1, 8(sp)
	call	setup_surface_table_2688
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont_8721
beq_else_8720:
	lw	a0, 20(sp)
	lw	a1, 8(sp)
	call	setup_second_table_2691
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
beq_cont_8721:
beq_cont_8719:
	addi	a1, a1, -1
	lw	a0, 12(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_8717:
iter_setup_dirvec_constants_2694_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
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
	addi	sp, sp, -60
	sw	ra, 56(sp)
	sw	fp, 52(sp)
	addi	fp, sp, 60
	lw	a2, 4(s11)
	blt	a1, zero, bge_else_8723
	slli	a3, a1, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	sw	s11, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	sw	a2, 12(sp)
	mv	a0, a2
	call	o_param_ctbl_2547
	lw	a1, 12(sp)
	sw	a0, 16(sp)
	mv	a0, a1
	call	o_form_2509
	lw	a1, 8(sp)
	flw	fa0, 0(a1)
	lw	a2, 12(sp)
	sw	a0, 20(sp)
	fsw	fa0, 24(sp)
	mv	a0, a2
	call	o_param_x_2525
	flw	fa1, 24(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 16(sp)
	fsw	fa0, 0(a0)
	lw	a1, 8(sp)
	flw	fa0, 4(a1)
	lw	a2, 12(sp)
	fsw	fa0, 32(sp)
	mv	a0, a2
	call	o_param_y_2527
	flw	fa1, 32(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 16(sp)
	fsw	fa0, 4(a0)
	lw	a1, 8(sp)
	flw	fa0, 8(a1)
	lw	a2, 12(sp)
	fsw	fa0, 40(sp)
	mv	a0, a2
	call	o_param_z_2529
	flw	fa1, 40(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 16(sp)
	fsw	fa0, 8(a0)
	lw	a1, 20(sp)
	li	t6, 2
	bne	a1, t6, beq_else_8724
	lw	a1, 12(sp)
	mv	a0, a1
	call	o_param_abc_2523
	lw	a1, 16(sp)
	flw	fa0, 0(a1)
	flw	fa1, 4(a1)
	flw	fa2, 8(a1)
	call	veciprod2_2488
	lw	a0, 16(sp)
	fsw	fa0, 12(a0)
	b	beq_cont_8725
beq_else_8724:
	li	t6, 2
	bgt	a1, t6, ble_else_8726
	b	ble_cont_8727
ble_else_8726:
	flw	fa0, 0(a0)
	flw	fa1, 4(a0)
	flw	fa2, 8(a0)
	lw	a2, 12(sp)
	mv	a0, a2
	call	quadratic_2622
	lw	a0, 20(sp)
	li	t6, 3
	bne	a0, t6, beq_else_8728
	fli	fa1, l_5979
	fsub.s	fa0, fa0, fa1
	b	beq_cont_8729
beq_else_8728:
beq_cont_8729:
	lw	a0, 16(sp)
	fsw	fa0, 12(a0)
ble_cont_8727:
beq_cont_8725:
	lw	a0, 4(sp)
	addi	a1, a0, -1
	lw	a0, 8(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_8723:
setup_startp_constants_2699_ret:
	lw	ra, 56(sp)
	lw	fp, 52(sp)
	addi	sp, sp, 60
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
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	fsw	fa2, 0(sp)
	fsw	fa1, 8(sp)
	sw	a0, 16(sp)
	fsw	fa0, 24(sp)
	call	o_param_a_2517
	flw	fa1, 24(sp)
	fabs.s	fa1, fa1
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8732
	li	a0, 0
	b	bne_cont_8733
bne_else_8732:
	li	a0, 1
bne_cont_8733:
	bne	a0, zero, beq_else_8734
	li	a0, 0
	b	beq_cont_8735
beq_else_8734:
	lw	a0, 16(sp)
	call	o_param_b_2519
	flw	fa1, 8(sp)
	fabs.s	fa1, fa1
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8736
	li	a0, 0
	b	bne_cont_8737
bne_else_8736:
	li	a0, 1
bne_cont_8737:
	bne	a0, zero, beq_else_8738
	li	a0, 0
	b	beq_cont_8739
beq_else_8738:
	lw	a0, 16(sp)
	call	o_param_c_2521
	flw	fa1, 0(sp)
	fabs.s	fa1, fa1
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8740
	li	a0, 0
	b	bne_cont_8741
bne_else_8740:
	li	a0, 1
bne_cont_8741:
beq_cont_8739:
beq_cont_8735:
	bne	a0, zero, beq_else_8742
	lw	a0, 16(sp)
	call	o_isinvert_2513
	bne	a0, zero, beq_else_8743
	li	a0, 1
	b	is_rect_outside_2704_ret
beq_else_8743:
	li	a0, 0
	b	is_rect_outside_2704_ret
beq_else_8742:
	lw	a0, 16(sp)
	call	o_isinvert_2513
is_rect_outside_2704_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
	jr	ra
is_plane_outside_2709:
	addi	sp, sp, -52
	sw	ra, 48(sp)
	sw	fp, 44(sp)
	addi	fp, sp, 52
	sw	a0, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa1, 16(sp)
	fsw	fa0, 24(sp)
	call	o_param_abc_2523
	flw	fa0, 24(sp)
	flw	fa1, 16(sp)
	flw	fa2, 8(sp)
	call	veciprod2_2488
	lw	a0, 0(sp)
	fsw	fa0, 32(sp)
	call	o_isinvert_2513
	fli	fa0, l_5978
	flw	fa1, 32(sp)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8745
	li	a1, 0
	b	bne_cont_8746
bne_else_8745:
	li	a1, 1
bne_cont_8746:
	call	xor_2458
	bne	a0, zero, beq_else_8747
	li	a0, 1
	b	is_plane_outside_2709_ret
beq_else_8747:
	li	a0, 0
is_plane_outside_2709_ret:
	lw	ra, 48(sp)
	lw	fp, 44(sp)
	addi	sp, sp, 52
	jr	ra
is_second_outside_2714:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	sw	a0, 0(sp)
	call	quadratic_2622
	lw	a0, 0(sp)
	fsw	fa0, 8(sp)
	call	o_form_2509
	li	t6, 3
	bne	a0, t6, beq_else_8749
	fli	fa0, l_5979
	flw	fa1, 8(sp)
	fsub.s	fa0, fa1, fa0
	b	beq_cont_8750
beq_else_8749:
	flw	fa0, 8(sp)
beq_cont_8750:
	lw	a0, 0(sp)
	fsw	fa0, 16(sp)
	call	o_isinvert_2513
	fli	fa0, l_5978
	flw	fa1, 16(sp)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8751
	li	a1, 0
	b	bne_cont_8752
bne_else_8751:
	li	a1, 1
bne_cont_8752:
	call	xor_2458
	bne	a0, zero, beq_else_8753
	li	a0, 1
	b	is_second_outside_2714_ret
beq_else_8753:
	li	a0, 0
is_second_outside_2714_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
is_outside_2719:
	addi	sp, sp, -68
	sw	ra, 64(sp)
	sw	fp, 60(sp)
	addi	fp, sp, 68
	fsw	fa2, 0(sp)
	fsw	fa1, 8(sp)
	sw	a0, 16(sp)
	fsw	fa0, 24(sp)
	call	o_param_x_2525
	flw	fa1, 24(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 16(sp)
	fsw	fa0, 32(sp)
	call	o_param_y_2527
	flw	fa1, 8(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 16(sp)
	fsw	fa0, 40(sp)
	call	o_param_z_2529
	flw	fa1, 0(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 16(sp)
	fsw	fa0, 48(sp)
	call	o_form_2509
	li	t6, 1
	bne	a0, t6, beq_else_8755
	flw	fa0, 32(sp)
	flw	fa1, 40(sp)
	flw	fa2, 48(sp)
	lw	a0, 16(sp)
	call	is_rect_outside_2704
	b	is_outside_2719_ret
beq_else_8755:
	li	t6, 2
	bne	a0, t6, beq_else_8756
	flw	fa0, 32(sp)
	flw	fa1, 40(sp)
	flw	fa2, 48(sp)
	lw	a0, 16(sp)
	call	is_plane_outside_2709
	b	is_outside_2719_ret
beq_else_8756:
	flw	fa0, 32(sp)
	flw	fa1, 40(sp)
	flw	fa2, 48(sp)
	lw	a0, 16(sp)
	call	is_second_outside_2714
is_outside_2719_ret:
	lw	ra, 64(sp)
	lw	fp, 60(sp)
	addi	sp, sp, 68
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
	bne	a3, t6, beq_else_8757
	li	a0, 1
	b	check_all_inside_2724_ret
beq_else_8757:
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
	bne	a0, zero, beq_else_8758
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
beq_else_8758:
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
	bne	s2, t6, beq_else_8759
	li	a0, 0
	b	shadow_check_and_group_2730_ret
beq_else_8759:
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
	bne	a0, zero, beq_else_8760
	li	a0, 0
	b	beq_cont_8761
beq_else_8760:
	fli	fa1, l_6297
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_8762
	li	a0, 0
	b	bne_cont_8763
bne_else_8762:
	li	a0, 1
bne_cont_8763:
beq_cont_8761:
	bne	a0, zero, beq_else_8764
	lw	a0, 28(sp)
	slli	a0, a0, 2
	lw	a1, 24(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	call	o_isinvert_2513
	bne	a0, zero, beq_else_8765
	li	a0, 0
	b	shadow_check_and_group_2730_ret
beq_else_8765:
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_and_group_2730_ret
beq_else_8764:
	fli	fa1, l_6298
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
	bne	a0, zero, beq_else_8766
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_and_group_2730_ret
beq_else_8766:
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
	bne	a4, t6, beq_else_8767
	li	a0, 0
	b	shadow_check_one_or_group_2733_ret
beq_else_8767:
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
	bne	a0, zero, beq_else_8768
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_group_2733_ret
beq_else_8768:
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
	bne	s1, t6, beq_else_8769
	li	a0, 0
	b	shadow_check_one_or_matrix_2736_ret
beq_else_8769:
	sw	a7, 0(sp)
	sw	a4, 4(sp)
	sw	a1, 8(sp)
	sw	s11, 12(sp)
	sw	a0, 16(sp)
	li	t6, 99
	bne	s1, t6, beq_else_8770
	li	a0, 1
	b	beq_cont_8771
beq_else_8770:
	sw	a3, 20(sp)
	mv	a1, a5
	mv	a0, s1
	mv	s11, a2
	mv	a2, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_8772
	li	a0, 0
	b	beq_cont_8773
beq_else_8772:
	fli	fa0, l_6310
	lw	a0, 20(sp)
	flw	fa1, 0(a0)
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8774
	li	a0, 0
	b	bne_cont_8775
bne_else_8774:
	li	a0, 1
bne_cont_8775:
	bne	a0, zero, beq_else_8776
	li	a0, 0
	b	beq_cont_8777
beq_else_8776:
	li	a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_8778
	li	a0, 0
	b	beq_cont_8779
beq_else_8778:
	li	a0, 1
beq_cont_8779:
beq_cont_8777:
beq_cont_8773:
beq_cont_8771:
	bne	a0, zero, beq_else_8780
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix_2736_ret
beq_else_8780:
	li	a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_8781
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix_2736_ret
beq_else_8781:
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
	bne	s5, t6, beq_else_8782
	b	solve_each_element_2739_ret
beq_else_8782:
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
	bne	a0, zero, beq_else_8784
	lw	a0, 48(sp)
	slli	a0, a0, 2
	lw	a1, 44(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	call	o_isinvert_2513
	bne	a0, zero, beq_else_8785
	b	solve_each_element_2739_ret
beq_else_8785:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solve_each_element_2739_ret
beq_else_8784:
	lw	a1, 24(sp)
	flw	fa0, 0(a1)
	fli	fa1, l_5978
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8787
	li	a1, 0
	b	bne_cont_8788
bne_else_8787:
	li	a1, 1
bne_cont_8788:
	bne	a1, zero, beq_else_8789
	b	beq_cont_8790
beq_else_8789:
	lw	a1, 20(sp)
	flw	fa1, 0(a1)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_8791
	li	a2, 0
	b	bne_cont_8792
bne_else_8791:
	li	a2, 1
bne_cont_8792:
	bne	a2, zero, beq_else_8793
	b	beq_cont_8794
beq_else_8793:
	fli	fa1, l_6298
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
	bne	a0, zero, beq_else_8795
	b	beq_cont_8796
beq_else_8795:
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
beq_cont_8796:
beq_cont_8794:
beq_cont_8790:
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
	bne	a5, t6, beq_else_8797
	b	solve_one_or_network_2743_ret
beq_else_8797:
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
	bne	s2, t6, beq_else_8799
	b	trace_or_matrix_2747_ret
beq_else_8799:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	li	t6, 99
	bne	s2, t6, beq_else_8801
	li	a3, 1
	mv	a1, s1
	mv	a0, a3
	mv	s11, a7
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_8802
beq_else_8801:
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
	bne	a0, zero, beq_else_8803
	b	beq_cont_8804
beq_else_8803:
	lw	a0, 28(sp)
	flw	fa0, 0(a0)
	lw	a0, 24(sp)
	flw	fa1, 0(a0)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_8805
	li	a0, 0
	b	bne_cont_8806
bne_else_8805:
	li	a0, 1
bne_cont_8806:
	bne	a0, zero, beq_else_8807
	b	beq_cont_8808
beq_else_8807:
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_8808:
beq_cont_8804:
beq_cont_8802:
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
	fli	fa0, l_6331
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
	fli	fa1, l_6310
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8809
	li	a0, 0
	b	bne_cont_8810
bne_else_8809:
	li	a0, 1
bne_cont_8810:
	bne	a0, zero, beq_else_8811
	li	a0, 0
	b	judge_intersection_2751_ret
beq_else_8811:
	fli	fa1, l_6335
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_8812
	li	a0, 0
	b	judge_intersection_2751_ret
bne_else_8812:
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
	sw	s1, 0(sp)
	sw	s3, 4(sp)
	sw	s2, 8(sp)
	sw	s4, 12(sp)
	sw	a4, 16(sp)
	sw	a3, 20(sp)
	sw	a6, 24(sp)
	sw	s11, 28(sp)
	sw	a7, 32(sp)
	sw	a2, 36(sp)
	sw	a5, 40(sp)
	sw	a1, 44(sp)
	sw	a0, 48(sp)
	mv	a0, a2
	call	d_vec_2568
	lw	a1, 48(sp)
	slli	a2, a1, 2
	lw	a3, 44(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	li	t6, -1
	bne	a2, t6, beq_else_8813
	b	solve_each_element_fast_2753_ret
beq_else_8813:
	lw	a4, 36(sp)
	lw	s11, 40(sp)
	sw	a0, 52(sp)
	sw	a2, 56(sp)
	mv	a1, a4
	mv	a0, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_8815
	lw	a0, 56(sp)
	slli	a0, a0, 2
	lw	a1, 32(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	call	o_isinvert_2513
	bne	a0, zero, beq_else_8816
	b	solve_each_element_fast_2753_ret
beq_else_8816:
	lw	a0, 48(sp)
	addi	a0, a0, 1
	lw	a1, 44(sp)
	lw	a2, 36(sp)
	lw	s11, 28(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solve_each_element_fast_2753_ret
beq_else_8815:
	lw	a1, 24(sp)
	flw	fa0, 0(a1)
	fli	fa1, l_5978
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8818
	li	a1, 0
	b	bne_cont_8819
bne_else_8818:
	li	a1, 1
bne_cont_8819:
	bne	a1, zero, beq_else_8820
	b	beq_cont_8821
beq_else_8820:
	lw	a1, 20(sp)
	flw	fa1, 0(a1)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_8822
	li	a2, 0
	b	bne_cont_8823
bne_else_8822:
	li	a2, 1
bne_cont_8823:
	bne	a2, zero, beq_else_8824
	b	beq_cont_8825
beq_else_8824:
	fli	fa1, l_6298
	fadd.s	fa0, fa0, fa1
	lw	a2, 52(sp)
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
	lw	a3, 44(sp)
	lw	s11, 12(sp)
	sw	a0, 60(sp)
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
	bne	a0, zero, beq_else_8826
	b	beq_cont_8827
beq_else_8826:
	lw	a0, 20(sp)
	flw	fa0, 88(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 80(sp)
	flw	fa1, 72(sp)
	flw	fa2, 64(sp)
	lw	a0, 8(sp)
	call	vecset_2469
	lw	a0, 4(sp)
	lw	a1, 56(sp)
	sw	a1, 0(a0)
	lw	a0, 0(sp)
	lw	a1, 60(sp)
	sw	a1, 0(a0)
beq_cont_8827:
beq_cont_8825:
beq_cont_8821:
	lw	a0, 48(sp)
	addi	a0, a0, 1
	lw	a1, 44(sp)
	lw	a2, 36(sp)
	lw	s11, 28(sp)
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
	bne	a5, t6, beq_else_8828
	b	solve_one_or_network_fast_2757_ret
beq_else_8828:
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
	bne	s1, t6, beq_else_8830
	b	trace_or_matrix_fast_2761_ret
beq_else_8830:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	li	t6, 99
	bne	s1, t6, beq_else_8832
	li	a3, 1
	mv	a1, a7
	mv	a0, a3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_8833
beq_else_8832:
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a3, 24(sp)
	sw	a5, 28(sp)
	mv	a1, a2
	mv	a0, s1
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_8834
	b	beq_cont_8835
beq_else_8834:
	lw	a0, 28(sp)
	flw	fa0, 0(a0)
	lw	a0, 24(sp)
	flw	fa1, 0(a0)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_8836
	li	a0, 0
	b	bne_cont_8837
bne_else_8836:
	li	a0, 1
bne_cont_8837:
	bne	a0, zero, beq_else_8838
	b	beq_cont_8839
beq_else_8838:
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_8839:
beq_cont_8835:
beq_cont_8833:
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
	fli	fa0, l_6331
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
	fli	fa1, l_6310
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8840
	li	a0, 0
	b	bne_cont_8841
bne_else_8840:
	li	a0, 1
bne_cont_8841:
	bne	a0, zero, beq_else_8842
	li	a0, 0
	b	judge_intersection_fast_2765_ret
beq_else_8842:
	fli	fa1, l_6335
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_8843
	li	a0, 0
	b	judge_intersection_fast_2765_ret
bne_else_8843:
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
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	mv	a0, a1
	call	vecbzero_2477
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
	addi	sp, sp, -20
	sw	ra, 16(sp)
	sw	fp, 12(sp)
	addi	fp, sp, 20
	lw	a1, 4(s11)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	o_param_a_2517
	fneg.s	fa0, fa0
	lw	a0, 4(sp)
	fsw	fa0, 0(a0)
	lw	a1, 0(sp)
	mv	a0, a1
	call	o_param_b_2519
	fneg.s	fa0, fa0
	lw	a0, 4(sp)
	fsw	fa0, 4(a0)
	lw	a1, 0(sp)
	mv	a0, a1
	call	o_param_c_2521
	fneg.s	fa0, fa0
	lw	a0, 4(sp)
	fsw	fa0, 8(a0)
get_nvector_plane_2769_ret:
	lw	ra, 16(sp)
	lw	fp, 12(sp)
	addi	sp, sp, 20
	jr	ra
get_nvector_second_2771:
	addi	sp, sp, -124
	sw	ra, 120(sp)
	sw	fp, 116(sp)
	addi	fp, sp, 124
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	flw	fa0, 0(a2)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	fsw	fa0, 16(sp)
	call	o_param_x_2525
	flw	fa1, 16(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 8(sp)
	flw	fa1, 4(a0)
	lw	a1, 4(sp)
	fsw	fa0, 24(sp)
	fsw	fa1, 32(sp)
	mv	a0, a1
	call	o_param_y_2527
	flw	fa1, 32(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 8(sp)
	flw	fa1, 8(a0)
	lw	a0, 4(sp)
	fsw	fa0, 40(sp)
	fsw	fa1, 48(sp)
	call	o_param_z_2529
	flw	fa1, 48(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	fsw	fa0, 56(sp)
	call	o_param_a_2517
	flw	fa1, 24(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	fsw	fa0, 64(sp)
	call	o_param_b_2519
	flw	fa1, 40(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	fsw	fa0, 72(sp)
	call	o_param_c_2521
	flw	fa1, 56(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	fsw	fa0, 80(sp)
	call	o_isrot_2515
	bne	a0, zero, beq_else_8847
	lw	a0, 0(sp)
	flw	fa0, 64(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 72(sp)
	fsw	fa0, 4(a0)
	flw	fa0, 80(sp)
	fsw	fa0, 8(a0)
	b	beq_cont_8848
beq_else_8847:
	lw	a0, 4(sp)
	call	o_param_r3_2545
	flw	fa1, 40(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	fsw	fa0, 88(sp)
	call	o_param_r2_2543
	flw	fa1, 56(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa2, 88(sp)
	fadd.s	fa0, fa2, fa0
	fli	fa2, l_6106
	fdiv.s	fa0, fa0, fa2
	flw	fa2, 64(sp)
	fadd.s	fa0, fa2, fa0
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	lw	a1, 4(sp)
	mv	a0, a1
	call	o_param_r3_2545
	flw	fa1, 24(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	fsw	fa0, 96(sp)
	call	o_param_r1_2541
	flw	fa1, 56(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 96(sp)
	fadd.s	fa0, fa1, fa0
	fli	fa1, l_6106
	fdiv.s	fa0, fa0, fa1
	flw	fa1, 72(sp)
	fadd.s	fa0, fa1, fa0
	lw	a0, 0(sp)
	fsw	fa0, 4(a0)
	lw	a1, 4(sp)
	mv	a0, a1
	call	o_param_r2_2543
	flw	fa1, 24(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	fsw	fa0, 104(sp)
	call	o_param_r1_2541
	flw	fa1, 40(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 104(sp)
	fadd.s	fa0, fa1, fa0
	fli	fa1, l_6106
	fdiv.s	fa0, fa0, fa1
	flw	fa1, 80(sp)
	fadd.s	fa0, fa1, fa0
	lw	a0, 0(sp)
	fsw	fa0, 8(a0)
beq_cont_8848:
	lw	a1, 4(sp)
	mv	a0, a1
	call	o_isinvert_2513
	mv	a1, a0
	lw	a0, 0(sp)
	call	vecunit_sgn_2482
get_nvector_second_2771_ret:
	lw	ra, 120(sp)
	lw	fp, 116(sp)
	addi	sp, sp, 124
	jr	ra
get_nvector_2773:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	fp, 24(sp)
	addi	fp, sp, 32
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	sw	a2, 0(sp)
	sw	a0, 4(sp)
	sw	a4, 8(sp)
	sw	a1, 12(sp)
	sw	a3, 16(sp)
	call	o_form_2509
	li	t6, 1
	bne	a0, t6, beq_else_8849
	lw	a0, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	get_nvector_2773_ret
beq_else_8849:
	li	t6, 2
	bne	a0, t6, beq_else_8850
	lw	a0, 4(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	get_nvector_2773_ret
beq_else_8850:
	lw	a0, 4(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
get_nvector_2773_ret:
	lw	ra, 28(sp)
	lw	fp, 24(sp)
	addi	sp, sp, 32
	jr	ra
utexture_2776:
	addi	sp, sp, -212
	sw	ra, 208(sp)
	sw	fp, 204(sp)
	addi	fp, sp, 212
	lw	a2, 4(s11)
	sw	a1, 0(sp)
	sw	a2, 4(sp)
	sw	a0, 8(sp)
	call	o_texturetype_2507
	lw	a1, 8(sp)
	sw	a0, 12(sp)
	mv	a0, a1
	call	o_color_red_2535
	lw	a0, 4(sp)
	fsw	fa0, 0(a0)
	lw	a1, 8(sp)
	mv	a0, a1
	call	o_color_green_2537
	lw	a0, 4(sp)
	fsw	fa0, 4(a0)
	lw	a1, 8(sp)
	mv	a0, a1
	call	o_color_blue_2539
	lw	a0, 4(sp)
	fsw	fa0, 8(a0)
	lw	a1, 12(sp)
	li	t6, 1
	bne	a1, t6, beq_else_8851
	lw	a1, 0(sp)
	flw	fa0, 0(a1)
	lw	a2, 8(sp)
	fsw	fa0, 16(sp)
	mv	a0, a2
	call	o_param_x_2525
	flw	fa1, 16(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l_6399
	fmul.s	fa1, fa0, fa1
	fsw	fa0, 24(sp)
	fmv.s	fa0, fa1
	call	min_caml_floor
	fli	fa1, l_6400
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_6390
	flw	fa2, 24(sp)
	fsub.s	fa0, fa2, fa0
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_8852
	li	a0, 0
	b	bne_cont_8853
bne_else_8852:
	li	a0, 1
bne_cont_8853:
	lw	a1, 0(sp)
	flw	fa0, 8(a1)
	lw	a1, 8(sp)
	sw	a0, 32(sp)
	fsw	fa0, 40(sp)
	mv	a0, a1
	call	o_param_z_2529
	flw	fa1, 40(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l_6399
	fmul.s	fa1, fa0, fa1
	fsw	fa0, 48(sp)
	fmv.s	fa0, fa1
	call	min_caml_floor
	fli	fa1, l_6400
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_6390
	flw	fa2, 48(sp)
	fsub.s	fa0, fa2, fa0
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_8855
	li	a0, 0
	b	bne_cont_8856
bne_else_8855:
	li	a0, 1
bne_cont_8856:
	lw	a1, 32(sp)
	bne	a1, zero, beq_else_8857
	bne	a0, zero, beq_else_8859
	fli	fa0, l_6385
	b	beq_cont_8860
beq_else_8859:
	fli	fa0, l_5978
beq_cont_8860:
	b	beq_cont_8858
beq_else_8857:
	bne	a0, zero, beq_else_8861
	fli	fa0, l_5978
	b	beq_cont_8862
beq_else_8861:
	fli	fa0, l_6385
beq_cont_8862:
beq_cont_8858:
	lw	a0, 4(sp)
	fsw	fa0, 4(a0)
	b	utexture_2776_ret
beq_else_8851:
	li	t6, 2
	bne	a1, t6, beq_else_8864
	lw	a1, 0(sp)
	flw	fa0, 4(a1)
	fli	fa1, l_6394
	fmul.s	fa0, fa0, fa1
	call	min_caml_sin
	lw	a0, 0(sp)
	flw	fa1, 4(a0)
	fli	fa2, l_6394
	fmul.s	fa1, fa1, fa2
	fsw	fa0, 56(sp)
	fmv.s	fa0, fa1
	call	min_caml_sin
	flw	fa1, 56(sp)
	fmul.s	fa0, fa1, fa0
	fli	fa1, l_6385
	fmul.s	fa1, fa1, fa0
	lw	a0, 4(sp)
	fsw	fa1, 0(a0)
	fli	fa1, l_6385
	fli	fa2, l_5979
	fsub.s	fa0, fa2, fa0
	fmul.s	fa0, fa1, fa0
	fsw	fa0, 4(a0)
	b	utexture_2776_ret
beq_else_8864:
	li	t6, 3
	bne	a1, t6, beq_else_8866
	lw	a1, 0(sp)
	flw	fa0, 0(a1)
	lw	a2, 8(sp)
	fsw	fa0, 64(sp)
	mv	a0, a2
	call	o_param_x_2525
	flw	fa1, 64(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 0(sp)
	flw	fa1, 8(a0)
	lw	a0, 8(sp)
	fsw	fa0, 72(sp)
	fsw	fa1, 80(sp)
	call	o_param_z_2529
	flw	fa1, 80(sp)
	fsub.s	fa0, fa1, fa0
	flw	fa1, 72(sp)
	fmul.s	fa1, fa1, fa1
	fmul.s	fa0, fa0, fa0
	fadd.s	fa0, fa1, fa0
	fsqrt.s	fa0, fa0
	fli	fa1, l_6390
	fdiv.s	fa0, fa0, fa1
	fsw	fa0, 88(sp)
	call	min_caml_floor
	flw	fa1, 88(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l_6381
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 96(sp)
	call	min_caml_cos
	flw	fa1, 96(sp)
	fsw	fa0, 104(sp)
	fmv.s	fa0, fa1
	call	min_caml_cos
	flw	fa1, 104(sp)
	fmul.s	fa0, fa1, fa0
	fli	fa1, l_6385
	fmul.s	fa1, fa0, fa1
	lw	a0, 4(sp)
	fsw	fa1, 4(a0)
	fli	fa1, l_5979
	fsub.s	fa0, fa1, fa0
	fli	fa1, l_6385
	fmul.s	fa0, fa0, fa1
	fsw	fa0, 8(a0)
	b	utexture_2776_ret
beq_else_8866:
	li	t6, 4
	bne	a1, t6, beq_else_8868
	lw	a1, 0(sp)
	flw	fa0, 0(a1)
	lw	a2, 8(sp)
	fsw	fa0, 112(sp)
	mv	a0, a2
	call	o_param_x_2525
	flw	fa1, 112(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 8(sp)
	fsw	fa0, 120(sp)
	call	o_param_a_2517
	fsqrt.s	fa0, fa0
	flw	fa1, 120(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 0(sp)
	flw	fa1, 8(a0)
	lw	a1, 8(sp)
	fsw	fa0, 128(sp)
	fsw	fa1, 136(sp)
	mv	a0, a1
	call	o_param_z_2529
	flw	fa1, 136(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 8(sp)
	fsw	fa0, 144(sp)
	call	o_param_c_2521
	fsqrt.s	fa0, fa0
	flw	fa1, 144(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 128(sp)
	fmul.s	fa2, fa1, fa1
	fmul.s	fa3, fa0, fa0
	fadd.s	fa2, fa2, fa3
	fli	fa3, l_6378
	fabs.s	fa4, fa1
	fle.s	t6, fa3, fa4
	beq	t6, zero, bne_else_8869
	li	a0, 0
	b	bne_cont_8870
bne_else_8869:
	li	a0, 1
bne_cont_8870:
	fsw	fa2, 152(sp)
	bne	a0, zero, beq_else_8871
	fdiv.s	fa0, fa0, fa1
	fabs.s	fa0, fa0
	call	min_caml_atan
	fli	fa1, l_6380
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_6381
	fdiv.s	fa0, fa0, fa1
	b	beq_cont_8872
beq_else_8871:
	fli	fa0, l_6379
beq_cont_8872:
	fsw	fa0, 160(sp)
	call	min_caml_floor
	flw	fa1, 160(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 0(sp)
	flw	fa1, 4(a0)
	lw	a0, 8(sp)
	fsw	fa0, 168(sp)
	fsw	fa1, 176(sp)
	call	o_param_y_2527
	flw	fa1, 176(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 8(sp)
	fsw	fa0, 184(sp)
	call	o_param_b_2519
	fsqrt.s	fa0, fa0
	flw	fa1, 184(sp)
	fmul.s	fa0, fa1, fa0
	fli	fa1, l_6378
	flw	fa2, 152(sp)
	fabs.s	fa3, fa2
	fle.s	t6, fa1, fa3
	beq	t6, zero, bne_else_8873
	li	a0, 0
	b	bne_cont_8874
bne_else_8873:
	li	a0, 1
bne_cont_8874:
	bne	a0, zero, beq_else_8875
	fdiv.s	fa0, fa0, fa2
	fabs.s	fa0, fa0
	call	min_caml_atan
	fli	fa1, l_6380
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_6381
	fdiv.s	fa0, fa0, fa1
	b	beq_cont_8876
beq_else_8875:
	fli	fa0, l_6379
beq_cont_8876:
	fsw	fa0, 192(sp)
	call	min_caml_floor
	flw	fa1, 192(sp)
	fsub.s	fa0, fa1, fa0
	fli	fa1, l_6383
	fli	fa2, l_6384
	flw	fa3, 168(sp)
	fsub.s	fa2, fa2, fa3
	fli	fa4, l_6384
	fsub.s	fa3, fa4, fa3
	fmul.s	fa2, fa2, fa3
	fsub.s	fa1, fa1, fa2
	fli	fa2, l_6384
	fsub.s	fa2, fa2, fa0
	fli	fa3, l_6384
	fsub.s	fa0, fa3, fa0
	fmul.s	fa0, fa2, fa0
	fsub.s	fa0, fa1, fa0
	fli	fa1, l_5978
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_8877
	li	a0, 0
	b	bne_cont_8878
bne_else_8877:
	li	a0, 1
bne_cont_8878:
	bne	a0, zero, beq_else_8879
	b	beq_cont_8880
beq_else_8879:
	fli	fa0, l_5978
beq_cont_8880:
	fli	fa1, l_6385
	fmul.s	fa0, fa1, fa0
	fli	fa1, l_6386
	fdiv.s	fa0, fa0, fa1
	lw	a0, 4(sp)
	fsw	fa0, 8(a0)
beq_else_8868:
utexture_2776_ret:
	lw	ra, 208(sp)
	lw	fp, 204(sp)
	addi	sp, sp, 212
	jr	ra
add_light_2779:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	lw	a1, 8(s11)
	lw	a0, 4(s11)
	fli	fa3, l_5978
	fle.s	t6, fa0, fa3
	beq	t6, zero, bne_else_8883
	li	a2, 0
	b	bne_cont_8884
bne_else_8883:
	li	a2, 1
bne_cont_8884:
	sw	a0, 0(sp)
	fsw	fa2, 8(sp)
	fsw	fa1, 16(sp)
	bne	a2, zero, beq_else_8886
	b	beq_cont_8887
beq_else_8886:
	call	vecaccum_2493
beq_cont_8887:
	fli	fa0, l_5978
	flw	fa1, 16(sp)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_8888
	li	a0, 0
	b	bne_cont_8889
bne_else_8888:
	li	a0, 1
bne_cont_8889:
	bne	a0, zero, beq_else_8890
	b	add_light_2779_ret
beq_else_8890:
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
	addi	sp, sp, -108
	sw	ra, 104(sp)
	sw	fp, 100(sp)
	addi	fp, sp, 108
	lw	a2, 32(s11)
	lw	a3, 28(s11)
	lw	a4, 24(s11)
	lw	a5, 20(s11)
	lw	a6, 16(s11)
	lw	a7, 12(s11)
	lw	s1, 8(s11)
	lw	s2, 4(s11)
	blt	a0, zero, bge_else_8893
	slli	s3, a0, 2
	add	t6, a3, s3
	lw	a3, 0(t6)
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	fsw	fa1, 8(sp)
	sw	s2, 16(sp)
	sw	a1, 20(sp)
	fsw	fa0, 24(sp)
	sw	a5, 32(sp)
	sw	a2, 36(sp)
	sw	a4, 40(sp)
	sw	a3, 44(sp)
	sw	a7, 48(sp)
	sw	s1, 52(sp)
	sw	a6, 56(sp)
	mv	a0, a3
	call	r_dvec_2574
	lw	s11, 56(sp)
	sw	a0, 60(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_8894
	b	beq_cont_8895
beq_else_8894:
	lw	a0, 52(sp)
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, 48(sp)
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 44(sp)
	sw	a0, 64(sp)
	mv	a0, a1
	call	r_surface_id_2572
	lw	a1, 64(sp)
	bne	a1, a0, beq_else_8896
	li	a0, 0
	lw	a1, 40(sp)
	lw	a1, 0(a1)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_8898
	lw	a0, 60(sp)
	call	d_vec_2568
	mv	a1, a0
	lw	a0, 32(sp)
	call	veciprod_2485
	lw	a0, 44(sp)
	fsw	fa0, 72(sp)
	call	r_bright_2576
	flw	fa1, 24(sp)
	fmul.s	fa2, fa0, fa1
	flw	fa3, 72(sp)
	fmul.s	fa2, fa2, fa3
	lw	a0, 60(sp)
	fsw	fa2, 80(sp)
	fsw	fa0, 88(sp)
	call	d_vec_2568
	mv	a1, a0
	lw	a0, 20(sp)
	call	veciprod_2485
	flw	fa1, 88(sp)
	fmul.s	fa1, fa1, fa0
	flw	fa0, 80(sp)
	flw	fa2, 8(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_8899
beq_else_8898:
beq_cont_8899:
	b	beq_cont_8897
beq_else_8896:
beq_cont_8897:
beq_cont_8895:
	lw	a0, 4(sp)
	addi	a0, a0, -1
	flw	fa0, 24(sp)
	flw	fa1, 8(sp)
	lw	a1, 20(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_8893:
trace_reflections_2783_ret:
	lw	ra, 104(sp)
	lw	fp, 100(sp)
	addi	sp, sp, 108
	jr	ra
trace_ray_2788:
	addi	sp, sp, -212
	sw	ra, 208(sp)
	sw	fp, 204(sp)
	addi	fp, sp, 212
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
	bgt	a0, t6, ble_else_8902
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
	sw	a0, 108(sp)
	sw	a1, 112(sp)
	sw	s9, 116(sp)
	mv	a0, a2
	call	p_surface_ids_2553
	lw	a1, 112(sp)
	lw	s11, 116(sp)
	sw	a0, 120(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_8905
	li	a0, -1
	lw	a1, 108(sp)
	slli	a2, a1, 2
	lw	a3, 120(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	bne	a1, zero, beq_else_8906
	b	trace_ray_2788_ret
beq_else_8906:
	lw	a0, 112(sp)
	lw	a1, 104(sp)
	call	veciprod_2485
	fneg.s	fa0, fa0
	fli	fa1, l_5978
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8908
	li	a0, 0
	b	bne_cont_8909
bne_else_8908:
	li	a0, 1
bne_cont_8909:
	bne	a0, zero, beq_else_8910
	b	trace_ray_2788_ret
beq_else_8910:
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
beq_else_8905:
	lw	a0, 80(sp)
	lw	a0, 0(a0)
	slli	a1, a0, 2
	lw	a2, 76(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	sw	a0, 124(sp)
	sw	a1, 128(sp)
	mv	a0, a1
	call	o_reflectiontype_2511
	lw	a1, 128(sp)
	sw	a0, 132(sp)
	mv	a0, a1
	call	o_diffuse_2531
	flw	fa1, 96(sp)
	fmul.s	fa0, fa0, fa1
	lw	a0, 128(sp)
	lw	a1, 112(sp)
	lw	s11, 72(sp)
	fsw	fa0, 136(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 68(sp)
	lw	a1, 64(sp)
	call	veccpy_2479
	lw	a0, 128(sp)
	lw	a1, 64(sp)
	lw	s11, 60(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 124(sp)
	slli	a0, a0, 2
	lw	a1, 56(sp)
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 108(sp)
	slli	a2, a1, 2
	lw	a3, 120(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	lw	a0, 52(sp)
	call	p_intersection_points_2551
	lw	a1, 108(sp)
	slli	a2, a1, 2
	add	t6, a0, a2
	lw	a0, 0(t6)
	lw	a2, 64(sp)
	mv	a1, a2
	call	veccpy_2479
	lw	a0, 52(sp)
	call	p_calc_diffuse_2555
	fli	fa0, l_6384
	lw	a1, 128(sp)
	sw	a0, 144(sp)
	fsw	fa0, 152(sp)
	mv	a0, a1
	call	o_diffuse_2531
	flw	fa1, 152(sp)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_8914
	li	a0, 0
	b	bne_cont_8915
bne_else_8914:
	li	a0, 1
bne_cont_8915:
	bne	a0, zero, beq_else_8916
	li	a0, 1
	lw	a1, 108(sp)
	slli	a2, a1, 2
	lw	a3, 144(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	lw	a0, 52(sp)
	call	p_energy_2557
	lw	a1, 108(sp)
	slli	a2, a1, 2
	add	t6, a0, a2
	lw	a2, 0(t6)
	lw	a3, 48(sp)
	sw	a0, 160(sp)
	mv	a1, a3
	mv	a0, a2
	call	veccpy_2479
	lw	a0, 108(sp)
	slli	a1, a0, 2
	lw	a2, 160(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa0, l_6422
	flw	fa1, 136(sp)
	fmul.s	fa0, fa0, fa1
	mv	a0, a1
	call	vecscale_2500
	lw	a0, 52(sp)
	call	p_nvectors_2566
	lw	a1, 108(sp)
	slli	a2, a1, 2
	add	t6, a0, a2
	lw	a0, 0(t6)
	lw	a2, 44(sp)
	mv	a1, a2
	call	veccpy_2479
	b	beq_cont_8917
beq_else_8916:
	li	a0, 0
	lw	a1, 108(sp)
	slli	a2, a1, 2
	lw	a3, 144(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
beq_cont_8917:
	fli	fa0, l_6424
	lw	a0, 112(sp)
	lw	a1, 44(sp)
	fsw	fa0, 168(sp)
	call	veciprod_2485
	flw	fa1, 168(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 112(sp)
	lw	a1, 44(sp)
	call	vecaccum_2493
	lw	a0, 128(sp)
	call	o_hilight_2533
	flw	fa1, 96(sp)
	fmul.s	fa0, fa1, fa0
	li	a0, 0
	lw	a1, 40(sp)
	lw	a1, 0(a1)
	lw	s11, 36(sp)
	fsw	fa0, 176(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_8919
	lw	a0, 44(sp)
	lw	a1, 104(sp)
	call	veciprod_2485
	fneg.s	fa0, fa0
	flw	fa1, 136(sp)
	fmul.s	fa0, fa0, fa1
	lw	a0, 112(sp)
	lw	a1, 104(sp)
	fsw	fa0, 184(sp)
	call	veciprod_2485
	fneg.s	fa1, fa0
	flw	fa0, 184(sp)
	flw	fa2, 176(sp)
	lw	s11, 32(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_8920
beq_else_8919:
beq_cont_8920:
	lw	a0, 64(sp)
	lw	s11, 28(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 24(sp)
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, 136(sp)
	flw	fa1, 176(sp)
	lw	a1, 112(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	fli	fa0, l_6427
	flw	fa1, 96(sp)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_8921
	li	a0, 0
	b	bne_cont_8922
bne_else_8921:
	li	a0, 1
bne_cont_8922:
	bne	a0, zero, beq_else_8923
	b	trace_ray_2788_ret
beq_else_8923:
	lw	a0, 108(sp)
	li	t6, 4
	blt	a0, t6, bge_else_8925
	b	bge_cont_8926
bge_else_8925:
	addi	a1, a0, 1
	li	a2, -1
	slli	a1, a1, 2
	lw	a3, 120(sp)
	add	t6, a3, a1
	sw	a2, 0(t6)
bge_cont_8926:
	lw	a1, 132(sp)
	li	t6, 2
	bne	a1, t6, beq_else_8927
	fli	fa0, l_5979
	lw	a1, 128(sp)
	fsw	fa0, 192(sp)
	mv	a0, a1
	call	o_diffuse_2531
	flw	fa1, 192(sp)
	fsub.s	fa0, fa1, fa0
	flw	fa1, 96(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 108(sp)
	addi	a0, a0, 1
	lw	a1, 16(sp)
	flw	fa1, 0(a1)
	flw	fa2, 8(sp)
	fadd.s	fa1, fa2, fa1
	lw	a1, 112(sp)
	lw	a2, 52(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_8928
beq_else_8927:
beq_cont_8928:
ble_else_8902:
trace_ray_2788_ret:
	lw	ra, 208(sp)
	lw	fp, 204(sp)
	addi	sp, sp, 212
	jr	ra
trace_diffuse_ray_2794:
	addi	sp, sp, -84
	sw	ra, 80(sp)
	sw	fp, 76(sp)
	addi	fp, sp, 84
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
	bne	a0, zero, beq_else_8931
	b	trace_diffuse_ray_2794_ret
beq_else_8931:
	lw	a0, 52(sp)
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, 48(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 44(sp)
	sw	a0, 56(sp)
	mv	a0, a1
	call	d_vec_2568
	mv	a1, a0
	lw	a0, 56(sp)
	lw	s11, 40(sp)
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
	bne	a0, zero, beq_else_8933
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	call	veciprod_2485
	fneg.s	fa0, fa0
	fli	fa1, l_5978
	fle.s	t6, fa0, fa1
	beq	t6, zero, bne_else_8934
	li	a0, 0
	b	bne_cont_8935
bne_else_8934:
	li	a0, 1
bne_cont_8935:
	bne	a0, zero, beq_else_8936
	fli	fa0, l_5978
	b	beq_cont_8937
beq_else_8936:
beq_cont_8937:
	flw	fa1, 8(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 56(sp)
	fsw	fa0, 64(sp)
	call	o_diffuse_2531
	flw	fa1, 64(sp)
	fmul.s	fa0, fa1, fa0
	lw	a0, 4(sp)
	lw	a1, 0(sp)
	call	vecaccum_2493
beq_else_8933:
trace_diffuse_ray_2794_ret:
	lw	ra, 80(sp)
	lw	fp, 76(sp)
	addi	sp, sp, 84
	jr	ra
iter_trace_diffuse_rays_2797:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	lw	a4, 4(s11)
	blt	a3, zero, bge_else_8940
	slli	a5, a3, 2
	add	t6, a0, a5
	lw	a5, 0(t6)
	sw	a2, 0(sp)
	sw	s11, 4(sp)
	sw	a4, 8(sp)
	sw	a0, 12(sp)
	sw	a3, 16(sp)
	sw	a1, 20(sp)
	mv	a0, a5
	call	d_vec_2568
	lw	a1, 20(sp)
	call	veciprod_2485
	fli	fa1, l_5978
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_8941
	li	a0, 0
	b	bne_cont_8942
bne_else_8941:
	li	a0, 1
bne_cont_8942:
	bne	a0, zero, beq_else_8943
	lw	a0, 16(sp)
	slli	a1, a0, 2
	lw	a2, 12(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l_6445
	fdiv.s	fa0, fa0, fa1
	lw	s11, 8(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_8944
beq_else_8943:
	lw	a0, 16(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 12(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l_6443
	fdiv.s	fa0, fa0, fa1
	lw	s11, 8(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_8944:
	lw	a0, 16(sp)
	addi	a3, a0, -2
	lw	a0, 12(sp)
	lw	a1, 20(sp)
	lw	a2, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_8940:
iter_trace_diffuse_rays_2797_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
trace_diffuse_rays_2802:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	sw	a4, 12(sp)
	mv	a0, a2
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 8(sp)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_diffuse_rays_2802_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
trace_diffuse_ray_80percent_2806:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	fp, 24(sp)
	addi	fp, sp, 32
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	a3, 8(sp)
	sw	a4, 12(sp)
	sw	a0, 16(sp)
	bne	a0, zero, beq_else_8946
	b	beq_cont_8947
beq_else_8946:
	lw	a5, 0(a4)
	mv	a0, a5
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_8947:
	lw	a0, 16(sp)
	li	t6, 1
	bne	a0, t6, beq_else_8948
	b	beq_cont_8949
beq_else_8948:
	lw	a1, 12(sp)
	lw	a2, 4(a1)
	lw	a3, 4(sp)
	lw	a4, 0(sp)
	lw	s11, 8(sp)
	mv	a1, a3
	mv	a0, a2
	mv	a2, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_8949:
	lw	a0, 16(sp)
	li	t6, 2
	bne	a0, t6, beq_else_8950
	b	beq_cont_8951
beq_else_8950:
	lw	a1, 12(sp)
	lw	a2, 8(a1)
	lw	a3, 4(sp)
	lw	a4, 0(sp)
	lw	s11, 8(sp)
	mv	a1, a3
	mv	a0, a2
	mv	a2, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_8951:
	lw	a0, 16(sp)
	li	t6, 3
	bne	a0, t6, beq_else_8952
	b	beq_cont_8953
beq_else_8952:
	lw	a1, 12(sp)
	lw	a2, 12(a1)
	lw	a3, 4(sp)
	lw	a4, 0(sp)
	lw	s11, 8(sp)
	mv	a1, a3
	mv	a0, a2
	mv	a2, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_8953:
	lw	a0, 16(sp)
	li	t6, 4
	bne	a0, t6, beq_else_8954
	b	trace_diffuse_ray_80percent_2806_ret
beq_else_8954:
	lw	a0, 12(sp)
	lw	a0, 16(a0)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_diffuse_ray_80percent_2806_ret:
	lw	ra, 28(sp)
	lw	fp, 24(sp)
	addi	sp, sp, 32
	jr	ra
calc_diffuse_using_1point_2810:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	fp, 40(sp)
	addi	fp, sp, 48
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	sw	a3, 0(sp)
	sw	a2, 4(sp)
	sw	a4, 8(sp)
	sw	a1, 12(sp)
	sw	a0, 16(sp)
	call	p_received_ray_20percent_2559
	lw	a1, 16(sp)
	sw	a0, 20(sp)
	mv	a0, a1
	call	p_nvectors_2566
	lw	a1, 16(sp)
	sw	a0, 24(sp)
	mv	a0, a1
	call	p_intersection_points_2551
	lw	a1, 16(sp)
	sw	a0, 28(sp)
	mv	a0, a1
	call	p_energy_2557
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 20(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	lw	a3, 8(sp)
	sw	a0, 32(sp)
	mv	a1, a2
	mv	a0, a3
	call	veccpy_2479
	lw	a0, 16(sp)
	call	p_group_id_2561
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 24(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	slli	a3, a1, 2
	lw	a4, 28(sp)
	add	t6, a4, a3
	lw	a3, 0(t6)
	lw	s11, 4(sp)
	mv	a1, a2
	mv	a2, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 12(sp)
	slli	a0, a0, 2
	lw	a1, 32(sp)
	add	t6, a1, a0
	lw	a1, 0(t6)
	lw	a0, 0(sp)
	lw	a2, 8(sp)
	call	vecaccumv_2503
calc_diffuse_using_1point_2810_ret:
	lw	ra, 44(sp)
	lw	fp, 40(sp)
	addi	sp, sp, 48
	jr	ra
calc_diffuse_using_5points_2813:
	addi	sp, sp, -56
	sw	ra, 52(sp)
	sw	fp, 48(sp)
	addi	fp, sp, 56
	lw	a5, 8(s11)
	lw	a6, 4(s11)
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
	call	p_received_ray_20percent_2559
	lw	a1, 20(sp)
	addi	a2, a1, -1
	slli	a2, a2, 2
	lw	a3, 16(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	sw	a0, 24(sp)
	mv	a0, a2
	call	p_received_ray_20percent_2559
	lw	a1, 20(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	sw	a0, 28(sp)
	mv	a0, a2
	call	p_received_ray_20percent_2559
	lw	a1, 20(sp)
	addi	a2, a1, 1
	slli	a2, a2, 2
	lw	a3, 16(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	sw	a0, 32(sp)
	mv	a0, a2
	call	p_received_ray_20percent_2559
	lw	a1, 20(sp)
	slli	a2, a1, 2
	lw	a3, 12(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	sw	a0, 36(sp)
	mv	a0, a2
	call	p_received_ray_20percent_2559
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 24(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	lw	a3, 4(sp)
	sw	a0, 40(sp)
	mv	a1, a2
	mv	a0, a3
	call	veccpy_2479
	lw	a0, 8(sp)
	slli	a1, a0, 2
	lw	a2, 28(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 4(sp)
	mv	a0, a2
	call	vecadd_2497
	lw	a0, 8(sp)
	slli	a1, a0, 2
	lw	a2, 32(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 4(sp)
	mv	a0, a2
	call	vecadd_2497
	lw	a0, 8(sp)
	slli	a1, a0, 2
	lw	a2, 36(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 4(sp)
	mv	a0, a2
	call	vecadd_2497
	lw	a0, 8(sp)
	slli	a1, a0, 2
	lw	a2, 40(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 4(sp)
	mv	a0, a2
	call	vecadd_2497
	lw	a0, 20(sp)
	slli	a0, a0, 2
	lw	a1, 16(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	call	p_energy_2557
	lw	a1, 8(sp)
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a0, 0(sp)
	lw	a2, 4(sp)
	call	vecaccumv_2503
calc_diffuse_using_5points_2813_ret:
	lw	ra, 52(sp)
	lw	fp, 48(sp)
	addi	sp, sp, 56
	jr	ra
do_without_neighbors_2819:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	lw	a2, 4(s11)
	li	t6, 4
	bgt	a1, t6, ble_else_8956
	sw	s11, 0(sp)
	sw	a2, 4(sp)
	sw	a0, 8(sp)
	sw	a1, 12(sp)
	call	p_surface_ids_2553
	lw	a1, 12(sp)
	slli	a2, a1, 2
	add	t6, a0, a2
	lw	a0, 0(t6)
	blt	a0, zero, bge_else_8957
	lw	a0, 8(sp)
	call	p_calc_diffuse_2555
	lw	a1, 12(sp)
	slli	a2, a1, 2
	add	t6, a0, a2
	lw	a0, 0(t6)
	bne	a0, zero, beq_else_8958
	b	beq_cont_8959
beq_else_8958:
	lw	a0, 8(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_8959:
	lw	a0, 12(sp)
	addi	a1, a0, 1
	lw	a0, 8(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_8957:
ble_else_8956:
do_without_neighbors_2819_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
neighbors_exist_2822:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	fp, 4(sp)
	addi	fp, sp, 12
	lw	a2, 4(s11)
	lw	a3, 4(a2)
	addi	a4, a1, 1
	bgt	a3, a4, ble_else_8962
	li	a0, 0
	b	neighbors_exist_2822_ret
ble_else_8962:
	bgt	a1, zero, ble_else_8963
	li	a0, 0
	b	neighbors_exist_2822_ret
ble_else_8963:
	lw	a1, 0(a2)
	addi	a2, a0, 1
	bgt	a1, a2, ble_else_8964
	li	a0, 0
	b	neighbors_exist_2822_ret
ble_else_8964:
	bgt	a0, zero, ble_else_8965
	li	a0, 0
	b	neighbors_exist_2822_ret
ble_else_8965:
	li	a0, 1
neighbors_exist_2822_ret:
	lw	ra, 8(sp)
	lw	fp, 4(sp)
	addi	sp, sp, 12
	jr	ra
get_surface_id_2826:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	fp, 8(sp)
	addi	fp, sp, 16
	sw	a1, 0(sp)
	call	p_surface_ids_2553
	lw	a1, 0(sp)
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
get_surface_id_2826_ret:
	lw	ra, 12(sp)
	lw	fp, 8(sp)
	addi	sp, sp, 16
	jr	ra
neighbors_are_available_2829:
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
	call	get_surface_id_2826
	lw	a1, 16(sp)
	slli	a2, a1, 2
	lw	a3, 12(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	lw	a3, 8(sp)
	sw	a0, 20(sp)
	mv	a1, a3
	mv	a0, a2
	call	get_surface_id_2826
	lw	a1, 20(sp)
	bne	a0, a1, beq_else_8966
	lw	a0, 16(sp)
	slli	a2, a0, 2
	lw	a3, 4(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	lw	a3, 8(sp)
	mv	a1, a3
	mv	a0, a2
	call	get_surface_id_2826
	lw	a1, 20(sp)
	bne	a0, a1, beq_else_8967
	lw	a0, 16(sp)
	addi	a2, a0, -1
	slli	a2, a2, 2
	lw	a3, 0(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	lw	a4, 8(sp)
	mv	a1, a4
	mv	a0, a2
	call	get_surface_id_2826
	lw	a1, 20(sp)
	bne	a0, a1, beq_else_8968
	lw	a0, 16(sp)
	addi	a0, a0, 1
	slli	a0, a0, 2
	lw	a2, 0(sp)
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a2, 8(sp)
	mv	a1, a2
	call	get_surface_id_2826
	lw	a1, 20(sp)
	bne	a0, a1, beq_else_8969
	li	a0, 1
	b	neighbors_are_available_2829_ret
beq_else_8969:
	li	a0, 0
	b	neighbors_are_available_2829_ret
beq_else_8968:
	li	a0, 0
	b	neighbors_are_available_2829_ret
beq_else_8967:
	li	a0, 0
	b	neighbors_are_available_2829_ret
beq_else_8966:
	li	a0, 0
neighbors_are_available_2829_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
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
	bgt	a5, t6, ble_else_8970
	sw	a1, 0(sp)
	sw	s11, 4(sp)
	sw	a7, 8(sp)
	sw	s1, 12(sp)
	sw	a6, 16(sp)
	sw	a5, 20(sp)
	sw	a4, 24(sp)
	sw	a3, 28(sp)
	sw	a2, 32(sp)
	sw	a0, 36(sp)
	mv	a1, a5
	mv	a0, s1
	call	get_surface_id_2826
	blt	a0, zero, bge_else_8971
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	a3, 24(sp)
	lw	a4, 20(sp)
	call	neighbors_are_available_2829
	bne	a0, zero, beq_else_8972
	lw	a0, 36(sp)
	slli	a0, a0, 2
	lw	a1, 28(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 20(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	try_exploit_neighbors_2835_ret
beq_else_8972:
	lw	a0, 12(sp)
	call	p_calc_diffuse_2555
	lw	a4, 20(sp)
	slli	a1, a4, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	bne	a0, zero, beq_else_8973
	b	beq_cont_8974
beq_else_8973:
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	a3, 24(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_8974:
	lw	a0, 20(sp)
	addi	a5, a0, 1
	lw	a0, 36(sp)
	lw	a1, 0(sp)
	lw	a2, 32(sp)
	lw	a3, 28(sp)
	lw	a4, 24(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_8971:
ble_else_8970:
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
	bgt	a0, t6, ble_else_8977
	blt	a0, zero, bge_else_8979
	b	bge_cont_8980
bge_else_8979:
	li	a0, 0
bge_cont_8980:
	b	ble_cont_8978
ble_else_8977:
	li	a0, 255
ble_cont_8978:
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
	addi	sp, sp, -44
	sw	ra, 40(sp)
	sw	fp, 36(sp)
	addi	fp, sp, 44
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	li	t6, 4
	bgt	a1, t6, ble_else_8981
	sw	s11, 0(sp)
	sw	a2, 4(sp)
	sw	a3, 8(sp)
	sw	a4, 12(sp)
	sw	a1, 16(sp)
	sw	a0, 20(sp)
	call	get_surface_id_2826
	blt	a0, zero, bge_else_8982
	lw	a0, 20(sp)
	call	p_calc_diffuse_2555
	lw	a1, 16(sp)
	slli	a2, a1, 2
	add	t6, a0, a2
	lw	a0, 0(t6)
	bne	a0, zero, beq_else_8983
	b	beq_cont_8984
beq_else_8983:
	lw	a0, 20(sp)
	call	p_group_id_2561
	lw	a1, 12(sp)
	sw	a0, 24(sp)
	mv	a0, a1
	call	vecbzero_2477
	lw	a0, 20(sp)
	call	p_nvectors_2566
	lw	a1, 20(sp)
	sw	a0, 28(sp)
	mv	a0, a1
	call	p_intersection_points_2551
	lw	a1, 24(sp)
	slli	a1, a1, 2
	lw	a2, 8(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 16(sp)
	slli	a3, a2, 2
	lw	a4, 28(sp)
	add	t6, a4, a3
	lw	a3, 0(t6)
	slli	a4, a2, 2
	add	t6, a0, a4
	lw	a0, 0(t6)
	lw	s11, 4(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 20(sp)
	call	p_received_ray_20percent_2559
	lw	a1, 16(sp)
	slli	a2, a1, 2
	add	t6, a0, a2
	lw	a0, 0(t6)
	lw	a2, 12(sp)
	mv	a1, a2
	call	veccpy_2479
beq_cont_8984:
	lw	a0, 16(sp)
	addi	a1, a0, 1
	lw	a0, 20(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
bge_else_8982:
ble_else_8981:
pretrace_diffuse_rays_2848_ret:
	lw	ra, 40(sp)
	lw	fp, 36(sp)
	addi	sp, sp, 44
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
	blt	a1, zero, bge_else_8987
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
	lw	a0, 32(sp)
	call	vecbzero_2477
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	call	veccpy_2479
	li	a0, 0
	fli	fa0, l_5979
	lw	a1, 20(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	fli	fa1, l_5978
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
	mv	a0, a1
	call	p_rgb_2549
	lw	a1, 32(sp)
	call	veccpy_2479
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a3, 8(sp)
	mv	a0, a1
	mv	a1, a3
	call	p_set_group_id_2563
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, 0
	lw	s11, 4(sp)
	mv	a0, a1
	mv	a1, a3
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
bge_else_8987:
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
	addi	sp, sp, -56
	sw	ra, 52(sp)
	sw	fp, 48(sp)
	addi	fp, sp, 56
	lw	a5, 24(s11)
	lw	a6, 20(s11)
	lw	a7, 16(s11)
	lw	s1, 12(s11)
	lw	s2, 8(s11)
	lw	s3, 4(s11)
	lw	s2, 0(s2)
	bgt	s2, a0, ble_else_8992
	b	scan_pixel_2862_ret
ble_else_8992:
	slli	s2, a0, 2
	add	t6, a3, s2
	lw	s2, 0(t6)
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
	sw	a7, 40(sp)
	mv	a0, s2
	call	p_rgb_2549
	mv	a1, a0
	lw	a0, 40(sp)
	call	veccpy_2479
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_8994
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
	b	beq_cont_8995
beq_else_8994:
	li	a5, 0
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 8(sp)
	lw	a3, 20(sp)
	lw	a4, 24(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_8995:
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
	lw	ra, 52(sp)
	lw	fp, 48(sp)
	addi	sp, sp, 56
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
	bgt	s1, a0, ble_else_8996
	b	scan_line_2868_ret
ble_else_8996:
	lw	a7, 4(a7)
	addi	a7, a7, -1
	sw	s11, 0(sp)
	sw	a4, 4(sp)
	sw	a3, 8(sp)
	sw	a2, 12(sp)
	sw	a1, 16(sp)
	sw	a0, 20(sp)
	sw	a5, 24(sp)
	bgt	a7, a0, ble_else_8998
	b	ble_cont_8999
ble_else_8998:
	addi	a7, a0, 1
	mv	a2, a4
	mv	a1, a7
	mv	a0, a3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
ble_cont_8999:
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
	fli	fa0, l_5978
	call	min_caml_create_array
	mv	a1, a0
	li	a0, 5
	call	min_caml_create_array
	li	a1, 3
	fli	fa0, l_5978
	sw	a0, 0(sp)
	mv	a0, a1
	call	min_caml_create_array
	lw	a1, 0(sp)
	sw	a0, 4(a1)
	li	a0, 3
	fli	fa0, l_5978
	call	min_caml_create_array
	lw	a1, 0(sp)
	sw	a0, 8(a1)
	li	a0, 3
	fli	fa0, l_5978
	call	min_caml_create_array
	lw	a1, 0(sp)
	sw	a0, 12(a1)
	li	a0, 3
	fli	fa0, l_5978
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
	fli	fa0, l_5978
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
	blt	a1, zero, bge_else_9001
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
bge_else_9001:
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
tan_2883:
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
tan_2883_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
adjust_position_2885:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	sw	fp, 20(sp)
	addi	fp, sp, 28
	fmul.s	fa0, fa0, fa0
	fli	fa2, l_6427
	fadd.s	fa0, fa0, fa2
	fsqrt.s	fa0, fa0
	fli	fa2, l_5979
	fdiv.s	fa2, fa2, fa0
	fsw	fa0, 0(sp)
	fsw	fa1, 8(sp)
	fmv.s	fa0, fa2
	call	min_caml_atan
	flw	fa1, 8(sp)
	fmul.s	fa0, fa0, fa1
	call	tan_2883
	flw	fa1, 0(sp)
	fmul.s	fa0, fa0, fa1
adjust_position_2885_ret:
	lw	ra, 24(sp)
	lw	fp, 20(sp)
	addi	sp, sp, 28
	jr	ra
calc_dirvec_2888:
	addi	sp, sp, -88
	sw	ra, 84(sp)
	sw	fp, 80(sp)
	addi	fp, sp, 88
	lw	a3, 4(s11)
	li	t6, 5
	blt	a0, t6, bge_else_9002
	fmul.s	fa2, fa0, fa0
	fmul.s	fa3, fa1, fa1
	fadd.s	fa2, fa2, fa3
	fli	fa3, l_5979
	fadd.s	fa2, fa2, fa3
	fsqrt.s	fa2, fa2
	fdiv.s	fa0, fa0, fa2
	fdiv.s	fa1, fa1, fa2
	fli	fa3, l_5979
	fdiv.s	fa2, fa3, fa2
	slli	a0, a1, 2
	add	t6, a3, a0
	lw	a0, 0(t6)
	slli	a1, a2, 2
	add	t6, a0, a1
	lw	a1, 0(t6)
	sw	a0, 0(sp)
	sw	a2, 4(sp)
	fsw	fa2, 8(sp)
	fsw	fa1, 16(sp)
	fsw	fa0, 24(sp)
	mv	a0, a1
	call	d_vec_2568
	flw	fa0, 24(sp)
	flw	fa1, 16(sp)
	flw	fa2, 8(sp)
	call	vecset_2469
	lw	a0, 4(sp)
	addi	a1, a0, 40
	slli	a1, a1, 2
	lw	a2, 0(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	mv	a0, a1
	call	d_vec_2568
	flw	fa0, 16(sp)
	fneg.s	fa2, fa0
	flw	fa1, 24(sp)
	flw	fa3, 8(sp)
	fmv.s	fa0, fa1
	fmv.s	fa1, fa3
	call	vecset_2469
	lw	a0, 4(sp)
	addi	a1, a0, 80
	slli	a1, a1, 2
	lw	a2, 0(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	mv	a0, a1
	call	d_vec_2568
	flw	fa0, 24(sp)
	fneg.s	fa1, fa0
	flw	fa2, 16(sp)
	fneg.s	fa3, fa2
	flw	fa4, 8(sp)
	fmv.s	fa2, fa3
	fmv.s	fa0, fa4
	call	vecset_2469
	lw	a0, 4(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 0(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	mv	a0, a1
	call	d_vec_2568
	flw	fa0, 24(sp)
	fneg.s	fa1, fa0
	flw	fa2, 16(sp)
	fneg.s	fa3, fa2
	flw	fa4, 8(sp)
	fneg.s	fa5, fa4
	fmv.s	fa2, fa5
	fmv.s	fa0, fa1
	fmv.s	fa1, fa3
	call	vecset_2469
	lw	a0, 4(sp)
	addi	a1, a0, 41
	slli	a1, a1, 2
	lw	a2, 0(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	mv	a0, a1
	call	d_vec_2568
	flw	fa0, 24(sp)
	fneg.s	fa1, fa0
	flw	fa2, 8(sp)
	fneg.s	fa3, fa2
	flw	fa4, 16(sp)
	fmv.s	fa2, fa4
	fmv.s	fa0, fa1
	fmv.s	fa1, fa3
	call	vecset_2469
	lw	a0, 4(sp)
	addi	a0, a0, 81
	slli	a0, a0, 2
	lw	a1, 0(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	call	d_vec_2568
	flw	fa0, 8(sp)
	fneg.s	fa0, fa0
	flw	fa1, 24(sp)
	flw	fa2, 16(sp)
	call	vecset_2469
	b	calc_dirvec_2888_ret
bge_else_9002:
	fsw	fa2, 32(sp)
	sw	a2, 4(sp)
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
	lw	a2, 4(sp)
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
	blt	a0, zero, bge_else_9004
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	fsw	fa0, 8(sp)
	sw	a2, 16(sp)
	sw	a1, 20(sp)
	sw	a3, 24(sp)
	call	min_caml_float_of_int
	fli	fa1, l_6539
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_6540
	fsub.s	fa2, fa0, fa1
	li	a0, 0
	fli	fa0, l_5978
	fli	fa1, l_5978
	flw	fa3, 8(sp)
	lw	a1, 20(sp)
	lw	a2, 16(sp)
	lw	s11, 24(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	call	min_caml_float_of_int
	fli	fa1, l_6539
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_6427
	fadd.s	fa2, fa0, fa1
	li	a0, 0
	fli	fa0, l_5978
	fli	fa1, l_5978
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
bge_else_9004:
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
	blt	a0, zero, bge_else_9006
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	sw	a1, 12(sp)
	sw	a3, 16(sp)
	call	min_caml_float_of_int
	fli	fa1, l_6539
	fmul.s	fa0, fa0, fa1
	fli	fa1, l_6540
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
bge_else_9006:
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
	fli	fa0, l_5978
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
	blt	a1, zero, bge_else_9008
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
bge_else_9008:
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
	blt	a0, zero, bge_else_9010
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
bge_else_9010:
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
	blt	a1, zero, bge_else_9012
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
bge_else_9012:
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
	blt	a0, zero, bge_else_9014
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
bge_else_9014:
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
	sw	a0, 56(sp)
	call	d_vec_2568
	flw	fa0, 48(sp)
	flw	fa1, 40(sp)
	flw	fa2, 32(sp)
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
	addi	sp, sp, -76
	sw	ra, 72(sp)
	sw	fp, 68(sp)
	addi	fp, sp, 76
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	slli	a0, a0, 2
	lw	a5, 0(a2)
	fli	fa0, l_5979
	sw	a2, 0(sp)
	sw	a5, 4(sp)
	sw	a4, 8(sp)
	sw	a0, 12(sp)
	sw	a3, 16(sp)
	fsw	fa0, 24(sp)
	mv	a0, a1
	call	o_diffuse_2531
	flw	fa1, 24(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 16(sp)
	flw	fa1, 0(a0)
	fneg.s	fa1, fa1
	flw	fa2, 4(a0)
	fneg.s	fa2, fa2
	flw	fa3, 8(a0)
	fneg.s	fa3, fa3
	lw	a1, 12(sp)
	addi	a2, a1, 1
	flw	fa4, 0(a0)
	lw	a3, 4(sp)
	lw	s11, 8(sp)
	fsw	fa2, 32(sp)
	fsw	fa3, 40(sp)
	fsw	fa1, 48(sp)
	fsw	fa0, 56(sp)
	mv	a1, a2
	mv	a0, a3
	fmv.s	fa1, fa4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	addi	a1, a0, 1
	lw	a2, 12(sp)
	addi	a3, a2, 2
	lw	a4, 16(sp)
	flw	fa2, 4(a4)
	flw	fa0, 56(sp)
	flw	fa1, 48(sp)
	flw	fa3, 40(sp)
	lw	s11, 8(sp)
	mv	a0, a1
	mv	a1, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	addi	a1, a0, 2
	lw	a2, 12(sp)
	addi	a2, a2, 3
	lw	a3, 16(sp)
	flw	fa3, 8(a3)
	flw	fa0, 56(sp)
	flw	fa1, 48(sp)
	flw	fa2, 32(sp)
	lw	s11, 8(sp)
	mv	a0, a1
	mv	a1, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	addi	a0, a0, 3
	lw	a1, 0(sp)
	sw	a0, 0(a1)
setup_rect_reflection_2926_ret:
	lw	ra, 72(sp)
	lw	fp, 68(sp)
	addi	sp, sp, 76
	jr	ra
setup_surface_reflection_2929:
	addi	sp, sp, -100
	sw	ra, 96(sp)
	sw	fp, 92(sp)
	addi	fp, sp, 100
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	slli	a0, a0, 2
	addi	a0, a0, 1
	lw	a5, 0(a2)
	fli	fa0, l_5979
	sw	a2, 0(sp)
	sw	a0, 4(sp)
	sw	a5, 8(sp)
	sw	a4, 12(sp)
	sw	a3, 16(sp)
	sw	a1, 20(sp)
	fsw	fa0, 24(sp)
	mv	a0, a1
	call	o_diffuse_2531
	flw	fa1, 24(sp)
	fsub.s	fa0, fa1, fa0
	lw	a0, 20(sp)
	fsw	fa0, 32(sp)
	call	o_param_abc_2523
	mv	a1, a0
	lw	a0, 16(sp)
	call	veciprod_2485
	fli	fa1, l_6106
	lw	a0, 20(sp)
	fsw	fa0, 40(sp)
	fsw	fa1, 48(sp)
	call	o_param_a_2517
	flw	fa1, 48(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 40(sp)
	fmul.s	fa0, fa0, fa1
	lw	a0, 16(sp)
	flw	fa2, 0(a0)
	fsub.s	fa0, fa0, fa2
	fli	fa2, l_6106
	lw	a1, 20(sp)
	fsw	fa0, 56(sp)
	fsw	fa2, 64(sp)
	mv	a0, a1
	call	o_param_b_2519
	flw	fa1, 64(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 40(sp)
	fmul.s	fa0, fa0, fa1
	lw	a0, 16(sp)
	flw	fa2, 4(a0)
	fsub.s	fa0, fa0, fa2
	fli	fa2, l_6106
	lw	a1, 20(sp)
	fsw	fa0, 72(sp)
	fsw	fa2, 80(sp)
	mv	a0, a1
	call	o_param_c_2521
	flw	fa1, 80(sp)
	fmul.s	fa0, fa1, fa0
	flw	fa1, 40(sp)
	fmul.s	fa0, fa0, fa1
	lw	a0, 16(sp)
	flw	fa1, 8(a0)
	fsub.s	fa3, fa0, fa1
	flw	fa0, 32(sp)
	flw	fa1, 56(sp)
	flw	fa2, 72(sp)
	lw	a0, 8(sp)
	lw	a1, 4(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	a1, 0(sp)
	sw	a0, 0(a1)
setup_surface_reflection_2929_ret:
	lw	ra, 96(sp)
	lw	fp, 92(sp)
	addi	sp, sp, 100
	jr	ra
setup_reflections_2932:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	sw	fp, 28(sp)
	addi	fp, sp, 36
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	blt	a0, zero, bge_else_9022
	slli	a4, a0, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	sw	a3, 12(sp)
	mv	a0, a3
	call	o_reflectiontype_2511
	li	t6, 2
	bne	a0, t6, beq_else_9023
	fli	fa0, l_5979
	lw	a0, 12(sp)
	fsw	fa0, 16(sp)
	call	o_diffuse_2531
	flw	fa1, 16(sp)
	fle.s	t6, fa1, fa0
	beq	t6, zero, bne_else_9024
	li	a0, 0
	b	bne_cont_9025
bne_else_9024:
	li	a0, 1
bne_cont_9025:
	bne	a0, zero, beq_else_9026
	b	setup_reflections_2932_ret
beq_else_9026:
	lw	a0, 12(sp)
	call	o_form_2509
	li	t6, 1
	bne	a0, t6, beq_else_9028
	lw	a0, 4(sp)
	lw	a1, 12(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	setup_reflections_2932_ret
beq_else_9028:
	li	t6, 2
	bne	a0, t6, beq_else_9029
	lw	a0, 4(sp)
	lw	a1, 12(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_else_9029:
beq_else_9023:
bge_else_9022:
setup_reflections_2932_ret:
	lw	ra, 32(sp)
	lw	fp, 28(sp)
	addi	sp, sp, 36
	jr	ra
rt_2934:
	addi	sp, sp, -80
	sw	ra, 76(sp)
	sw	fp, 72(sp)
	addi	fp, sp, 80
	lw	a2, 56(s11)
	lw	a3, 52(s11)
	lw	a4, 48(s11)
	lw	a5, 44(s11)
	lw	a6, 40(s11)
	lw	a7, 36(s11)
	lw	s1, 32(s11)
	lw	s2, 28(s11)
	lw	s3, 24(s11)
	lw	s4, 20(s11)
	lw	s5, 16(s11)
	lw	s6, 12(s11)
	lw	s7, 8(s11)
	lw	s8, 4(s11)
	sw	a0, 0(s6)
	sw	a1, 4(s6)
	srai	s6, a0, 1
	sw	s6, 0(s7)
	srai	a1, a1, 1
	sw	a1, 4(s7)
	fli	fa0, l_6573
	sw	a6, 0(sp)
	sw	s1, 4(sp)
	sw	a3, 8(sp)
	sw	s2, 12(sp)
	sw	a4, 16(sp)
	sw	s4, 20(sp)
	sw	s3, 24(sp)
	sw	s5, 28(sp)
	sw	a2, 32(sp)
	sw	a7, 36(sp)
	sw	s8, 40(sp)
	sw	a5, 44(sp)
	fsw	fa0, 48(sp)
	call	min_caml_float_of_int
	flw	fa1, 48(sp)
	fdiv.s	fa0, fa1, fa0
	lw	a0, 44(sp)
	fsw	fa0, 0(a0)
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 40(sp)
	sw	a0, 56(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 40(sp)
	sw	a0, 60(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 36(sp)
	sw	a0, 64(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 32(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 28(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 24(sp)
	call	d_vec_2568
	lw	a1, 20(sp)
	call	veccpy_2479
	lw	a0, 24(sp)
	lw	s11, 16(sp)
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
	lw	a0, 60(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 0
	li	a4, 2
	lw	a1, 56(sp)
	lw	a2, 60(sp)
	lw	a3, 64(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
rt_2934_ret:
	lw	ra, 76(sp)
	lw	fp, 72(sp)
	addi	sp, sp, 80
	jr	ra
end:
	j	end
	.data
l_6573:	# 128.000000
	.word	1124073472
l_6540:	# 0.900000
	.word	1063675494
l_6539:	# 0.200000
	.word	1045220557
l_6445:	# 150.000000
	.word	1125515264
l_6443:	# -150.000000
	.word	-1021968384
l_6427:	# 0.100000
	.word	1036831949
l_6424:	# -2.000000
	.word	-1073741824
l_6422:	# 0.003906
	.word	998244352
l_6400:	# 20.000000
	.word	1101004800
l_6399:	# 0.050000
	.word	1028443341
l_6394:	# 0.250000
	.word	1048576000
l_6390:	# 10.000000
	.word	1092616192
l_6386:	# 0.300000
	.word	1050253722
l_6385:	# 255.000000
	.word	1132396544
l_6384:	# 0.500000
	.word	1056964608
l_6383:	# 0.150000
	.word	1041865114
l_6381:	# 3.141593
	.word	1078530011
l_6380:	# 30.000000
	.word	1106247680
l_6379:	# 15.000000
	.word	1097859072
l_6378:	# 0.000100
	.word	953267991
l_6335:	# 100000000.000000
	.word	1287568416
l_6331:	# 1000000000.000000
	.word	1315859240
l_6310:	# -0.100000
	.word	-1110651699
l_6298:	# 0.010000
	.word	1008981770
l_6297:	# -0.200000
	.word	-1102263091
l_6106:	# 2.000000
	.word	1073741824
l_6072:	# -200.000000
	.word	-1018691584
l_6070:	# 200.000000
	.word	1128792064
l_6066:	# 0.017453
	.word	1016003125
l_5980:	# -1.000000
	.word	-1082130432
l_5979:	# 1.000000
	.word	1065353216
l_5978:	# 0.000000
	.word	0
