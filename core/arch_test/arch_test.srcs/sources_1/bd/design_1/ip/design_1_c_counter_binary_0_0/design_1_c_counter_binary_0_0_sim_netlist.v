// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Tue Sep 25 15:45:25 2018
// Host        : ispc2016 running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/tansei/arch_test/arch_test.srcs/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_0/design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 24}" *) output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_11 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "24" *) 
(* C_XDEVICEFAMILY = "kintexu" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_11" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_counter_binary_0_0_c_counter_binary_v12_0_11
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [23:0]L;
  output THRESH0;
  output [23:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [23:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_11_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
iO2Bdkfy0dqqValMR4KhTWXpD0gDQF+kyoly3tZBTZTVs0CbWJ4Owhu4jxMCf8X2gbWR6iweF6Ks
B5dmLHZTDA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dbcEbgyZfx3YLmYpvjegvD9sRQCV1qBv0GqFBvCakC3SMR/H82zqo5uv5MZldBGUVmNHnxF3Vejx
zSqxUKfTNc90CS6quuoQe0eeq3T5XSdgwbNtjPZKvJuJTmQKT96yB3CfQOz13fGjaLrn/8NBUBBh
I7OEoGGg7ADph9V3vRg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bD3a4YgAnaoJx9/hljj2C1rODcUhawTVE1gtdPkNj8/YjemaFM6/sF7Q0CXbDJ7a+OBrB5pUgj3O
Vesi4yVmFp+mGmFarftWat5KmZiP3RVWrXwdzMj+f8T7p+lE3iD4njqUxIUz0TsUaNvFeW0xVNNb
OwTEX04nyt5HrU82dltJCclpFxE6yrP9YvI7l328bphwnC63xxk8T3yXwCrvj3VrIYuDT2yMRxrB
TBCv/Fe2f07JQyV73J7+DGAeJG0B1dTHeu48auQT63g1HsYaUXREihEUKgZe70QlOqlPbrr6Quhx
2LXE8LSdCA+FbJ7LlQc/Sgasj3ZYjM5lhEKleQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GCfR7acMSeEtOw1DhZKkUXjh9Uw/vUar7CGDRG9rZcB9NFDtQTltJeuKjFg8eaeKH9HFBMryuX72
/tmzhtFaiSTjr2na4ncL2XV3QRXe7nQaiHdc7cKBcZDvdSSMzOSYcIxLunwLwQTLC7sCvINmlxO1
NXnYzJVL1xb9HP8QVnSYpo1p+gCXcRBZzrOjZjCUnl7F2t3ZZStSGjBEyXVLnV+ouU3+247oJAOa
kC7v+pOtG2ho4KclIg0MGijjPs+jyOFU+b5C+ufQp/zL9GiZ5waCjb/0Y1vkBc9jZKR7YRnv+ASG
ju1uP8oqEXR9742kXRnW4HkMKkCK1MLDgWYdqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L+AGKmFZ1zoRJFd2cA+zxJhkgQ1R0aEjGQCGRFLNNhLHZXpzGDIjdSLjralBVRJ2rD6UcJutapF5
YaMoV9kphGGG2B07dxBuIimVjOxS3ZQJ7ru59ddfGBxUe9EHrv00Q5hTwoxig0lxqnmjSSnfsDeF
weTIqNnXkG5kqqezKC8a2FvUD5QWQBibhK69OAdmhhIOwZmpfvQKbEKgLX70BzcNlmLnttRL7G+q
XZ3fabZ42+JJHDLiIfveB3Gp2Lf2tzTH1u2xx5aEUr9154pnC9PWIwL3y3VBAT1oHR7ScdoGDOEy
HoYUiDibldOidIeKW0KrTeAIuBNmtM4R0R+RSA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V5ClnklUs5Wo++EDemG/KeowZlAfqB8SUrvSxPQGrdIwGfUvoCajhuABAWdS/L/pQl7Eyz51aiuw
KzPMrWtQozAEITf1xzvzgKbWZqoi4PQD3rThywFsFq60u8DdvHYM/kEvit0cZVFvG8rAbtlseHLu
0vU1kbrNgxb3bxjOovg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cRqAgScIUeXUwYGfCC0XDtpcc+mFNm3p8oTcFdtIU1nnlMagpBMqRm5ELc+m/Yw8jBwvcvt4tUFv
u/ypEEw+y12B+5Pr6SmnLJ+NVB3Q3Eyh4Q/d7p3jReIIsUxrlENpCTi4PVXMKr1B1Htzm8F8mXDq
y2UV+0SC+4yrBIntsdS0S8jPBERhfJhzNC5z38pPHANtM4wGGIUuKxIALLz1aq+2AjLbEgFHNrzw
2bJiDwRSTwrY4Yx2MSzYJk3O+cQBUe8nJDPx+aGEvDzQ4ZdJMNg2z+iaiE7OTaqK492Jb/1jvU0j
wlI+n35s2rrnc9QgfljdOJuueruPuYDi5vTTxA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZDVW+iMb9Ph3iJjlkioI5r8xnO/rGjCDAvoMtCmI6IOVUK6M4w+bePxGPWyRkSQCNTvhc/BBgfGy
qPSJYglt08mWGTfphS1F2wTB7Ou9vABLiurZd9KrMNiUxMEoHbmQuAkjCxa7VTh7PacpwfF2zZ/m
hbjpiz9dAvcBZzrj/NGWRaGycZ6v8WUELDKQ23ID34EolxK5dgfMpSdNfSDOx1F2l+38/FOxEp4u
fk8DietbR2IK02Va4HI3oVr5dmCdAl79j4V/yFphBNwgo7ewJ5SCvOxq5+lrlEvfNSew1nFQ1AyB
0arH6Uj2LbLurOtMvSKFCxQGNKSNvMrZLJKDjw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sMqHYJHnxKqTkcxRX5nwTz7TOXau9GJv5hIq2WjpKqinl+ucFfpl7tgrq7eBUeHvFMYvtTR/rvES
R3lXUTO8N6BDd2LXbpGZQO0I0cMZ8h7eAgMUoXsV3BOmELOVDTOq5aP54S1+nddW9BEgZFs+VMdX
bKmUe7o+tB8QpKTS/S2O9/UXXntbsYxLUosjgH/4xln1+IHSaJyM+HDFvg52bpEII88Qpk+eO5TO
KO9GIZOjMnxmi0kQ+H4C2s+wnbO/yitfvfqsUv+eFc6trZMtPauX4Eo+jvzURIuiYE9aZZxRr2uJ
csxwXIEnEDEZhGKQfqC8njLKgWS8Tnbg4QO6Sw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13312)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
