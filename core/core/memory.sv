`timescale 1ns / 1ps

module memory #(
    parameter MEMORY_SIZE = 262143
) (
    input clk,
    input we,
    input [31:0] r_addr,
    output logic [31:0] r_data,
    input [31:0] w_addr,
    input [31:0] w_data);
    
    logic [31:0] mem [0:MEMORY_SIZE];
    
    initial $readmemb("read.coe", mem);
    
    always @(posedge clk) begin
        if (we) mem[w_addr>>2] <= w_data;
        r_data <= mem[r_addr>>2];
    end
endmodule
