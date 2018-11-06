`timescale 1ns / 1ps

//when 0<x, returns 1

module fispos(
  input wire [31:0] x,
  output wire y);
  
  assign y = (x[31]==0 && x[30:23] !=8'b0) ? 1 : 0;

endmodule   
   
   
   
   
   
   
   
   
   
   
   
   
