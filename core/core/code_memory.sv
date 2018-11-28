`timescale 1ns / 1ps

module code_memory #(
    parameter CODE_SIZE = 32767
) (
    input clk,
    input we,
    input [31:0] addr,
    output logic [31:0] r_data,
    input [31:0] w_data);
    
(* ram_style = "block" *) logic [31:0] mem [0:CODE_SIZE];
    
    initial $readmemb("code.coe", mem);
    
    always @(posedge clk) begin
        if (we) mem[addr] <= w_data;
        r_data <= mem[addr];
    end
endmodule
