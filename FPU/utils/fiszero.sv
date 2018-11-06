`timescale 1ns / 1ps

//when x==0, returns 1

module fiszero(
  input wire [31:0] x,
  output wire y);
  
  assign y = (x[30:23]==8'b0) ? 1 : 0;

endmodule   
   
   
   
   
   
   
   
   
   
   
   
   
