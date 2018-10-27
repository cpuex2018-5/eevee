
connect_debug_port dbg_hub/clk [get_nets u_ila_1_clk_out1]

connect_debug_port u_ila_0/probe0 [get_nets [list design_1_i/top_0/inst/nolabel_line43/data_0]]



create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/clk_wiz_0/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/top_0_s_axi_WDATA[0]} {design_1_i/top_0_s_axi_WDATA[1]} {design_1_i/top_0_s_axi_WDATA[2]} {design_1_i/top_0_s_axi_WDATA[3]} {design_1_i/top_0_s_axi_WDATA[4]} {design_1_i/top_0_s_axi_WDATA[5]} {design_1_i/top_0_s_axi_WDATA[6]} {design_1_i/top_0_s_axi_WDATA[7]} {design_1_i/top_0_s_axi_WDATA[8]} {design_1_i/top_0_s_axi_WDATA[9]} {design_1_i/top_0_s_axi_WDATA[10]} {design_1_i/top_0_s_axi_WDATA[11]} {design_1_i/top_0_s_axi_WDATA[12]} {design_1_i/top_0_s_axi_WDATA[13]} {design_1_i/top_0_s_axi_WDATA[14]} {design_1_i/top_0_s_axi_WDATA[15]} {design_1_i/top_0_s_axi_WDATA[16]} {design_1_i/top_0_s_axi_WDATA[17]} {design_1_i/top_0_s_axi_WDATA[18]} {design_1_i/top_0_s_axi_WDATA[19]} {design_1_i/top_0_s_axi_WDATA[20]} {design_1_i/top_0_s_axi_WDATA[21]} {design_1_i/top_0_s_axi_WDATA[22]} {design_1_i/top_0_s_axi_WDATA[23]} {design_1_i/top_0_s_axi_WDATA[24]} {design_1_i/top_0_s_axi_WDATA[25]} {design_1_i/top_0_s_axi_WDATA[26]} {design_1_i/top_0_s_axi_WDATA[27]} {design_1_i/top_0_s_axi_WDATA[28]} {design_1_i/top_0_s_axi_WDATA[29]} {design_1_i/top_0_s_axi_WDATA[30]} {design_1_i/top_0_s_axi_WDATA[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 4 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/top_0/inst/nolabel_line43/stage[0]} {design_1_i/top_0/inst/nolabel_line43/stage[1]} {design_1_i/top_0/inst/nolabel_line43/stage[2]} {design_1_i/top_0/inst/nolabel_line43/stage[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list design_1_i/top_0_s_axi_ARREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list design_1_i/top_0_s_axi_ARVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list design_1_i/top_0_s_axi_AWREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list design_1_i/top_0_s_axi_AWVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list design_1_i/top_0_s_axi_BREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list design_1_i/top_0_s_axi_BVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list design_1_i/top_0_s_axi_RREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list design_1_i/top_0_s_axi_RVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list design_1_i/top_0_s_axi_WREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list design_1_i/top_0_s_axi_WVALID]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_clk_out1]
