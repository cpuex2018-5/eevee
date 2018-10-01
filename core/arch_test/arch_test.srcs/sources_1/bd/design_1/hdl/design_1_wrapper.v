//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Tue Sep 25 15:40:02 2018
//Host        : ispc2016 running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (GPIO_LED_0_LS,
    reset,
    sysclk_125_clk_n,
    sysclk_125_clk_p);
  output [0:0]GPIO_LED_0_LS;
  input reset;
  input sysclk_125_clk_n;
  input sysclk_125_clk_p;

  wire [0:0]GPIO_LED_0_LS;
  wire reset;
  wire sysclk_125_clk_n;
  wire sysclk_125_clk_p;

  design_1 design_1_i
       (.GPIO_LED_0_LS(GPIO_LED_0_LS),
        .reset(reset),
        .sysclk_125_clk_n(sysclk_125_clk_n),
        .sysclk_125_clk_p(sysclk_125_clk_p));
endmodule
