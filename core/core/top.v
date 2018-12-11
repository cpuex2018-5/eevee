`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2018 04:54:11 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(clk,rst,s_axi_awaddr,s_axi_awready,s_axi_awvalid,s_axi_wdata,s_axi_wstrb,s_axi_wvalid,s_axi_wready,s_axi_bresp,s_axi_bvalid,s_axi_bready,s_axi_araddr,s_axi_arvalid,s_axi_arready,s_axi_rdata,s_axi_rresp,s_axi_rvalid,s_axi_rready,m_we,m_addr,m_r_data,m_w_data,b_addr,b_rdata);
    input clk;
    input rst;
    output [31:0] s_axi_awaddr;
    input s_axi_awready;
    output s_axi_awvalid;
    output [31:0] s_axi_wdata;
    output [3:0] s_axi_wstrb;
    output s_axi_wvalid;
    input s_axi_wready;
    input [1:0] s_axi_bresp;
    input s_axi_bvalid;
    output s_axi_bready;
    output [31:0] s_axi_araddr;
    output s_axi_arvalid;
    input s_axi_arready;
    input [31:0] s_axi_rdata;
    input [1:0] s_axi_rresp;
    input s_axi_rvalid;
    output s_axi_rready;
    output m_we;
    output [17:0] m_addr;
    input [31:0] m_r_data;
    output [31:0] m_w_data;
    output [14:0] b_addr;
    input [31:0] b_rdata;

    subtop subtop(.clk(clk),
           .rst(rst),
           .s_axi_araddr(s_axi_araddr),
           .s_axi_arready(s_axi_arready),
           .s_axi_arvalid(s_axi_arvalid),
           .s_axi_awaddr(s_axi_awaddr),
           .s_axi_awready(s_axi_awready),
           .s_axi_awvalid(s_axi_awvalid),
           .s_axi_bready(s_axi_bready),
           .s_axi_bresp(s_axi_bresp),
           .s_axi_bvalid(s_axi_bvalid),
           .s_axi_rdata(s_axi_rdata),
           .s_axi_rready(s_axi_rready),
           .s_axi_rresp(s_axi_rresp),
           .s_axi_rvalid(s_axi_rvalid),
           .s_axi_wdata(s_axi_wdata),
           .s_axi_wready(s_axi_wready),
           .s_axi_wstrb(s_axi_wstrb),
           .s_axi_wvalid(s_axi_wvalid),
           .m_we(m_we),
           .m_addr(m_addr),
           .m_r_data(m_r_data),
           .m_w_data(m_w_data),
           .b_addr(b_addr),
           .b_rdata(b_rdata));
endmodule
