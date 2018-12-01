`timescale 1ns / 1ps


module fsub(
  input wire [31:0] x1,
  input wire [31:0] x2,
  output wire [31:0] y);
  
  wire s2;
  wire [30:0] em2;
  assign s2=~x2[31];
  assign em2=x2[30:0];
  
  fadd u1(x1,{s2,em2},y);
  
endmodule   
   
   
   
   
   
   
   
   
   
   
   
   
