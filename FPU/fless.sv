`timescale 1ns / 1ps

//y=1 means true, y=0 means false
//改善点はまだある。

module fless(
  input wire [31:0] x1,
  input wire [31:0] x2,
  output wire y);
  
  wire s1;
  wire s2;
  assign s1=x1[31];
  assign s2=x2[31];
  
  wire [1:0] state;
  assign state = (s1==1 && s2==0) ? 2'b00 : 
                 (s1==0 && s2==1) ? 2'b01 :
                 (s1==0 && s2==0) ? 2'b10 :
                 (s1==1 && s2==1) ? 2'b11 ;  
  
  assign y = (state==2'b00) ? 1 : 
             (state==2'b01) ? 0 :
             (state==2'b10) ? (x1[30:0] < x2[30:0]) :
             (state==2'b11) ? (x2[30:0] < x1[30:0]) ;
  
endmodule   

