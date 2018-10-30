`timescale 1ns / 1ps

//return x1/x2
module fdiv(
  input wire [31:0] x1,
  input wire [31:0] x2,
  output wire [31:0] y);
  
  logic [31:0] x2_inv;
  finv u1(x2, x2_inv);
  
  fmul u2(x1, x2_inv, y);
endmodule   
   
   
   
   
   
   
   
   
   
   
   
   
