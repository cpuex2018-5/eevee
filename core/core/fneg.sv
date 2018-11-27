`timescale 1ns / 1ps

module fneg(
  input wire [31:0] x,
  output wire [31:0] y);
  
  wire s;
  assign s = ~x[31];
  
  assign y = {s, x[30:0]};
endmodule   
   
   
   
   
   
   
   
   
   
   
   
   
