`timescale 1ns / 1ps

//y=1 means true, y=0 means false
//if x1==x2 then y=1

module feq(
  input wire [31:0] x1,
  input wire [31:0] x2,
  output wire y);

//数のエリアを3区分に区切り、stateがその大小を表すようにした
  wire [1:0] state1;
  assign state1 = (x1[30:23]==8'd0) ? 2'd1 :
                  (x1[31]==1'b0)    ? 2'd2 :
                  2'd0 ; 
  
  wire [1:0] state2;
  assign state2 = (x2[30:23]==8'd0) ? 2'd1 :
                  (x2[31]==1'b0)    ? 2'd2 :
                  2'd0 ;                 
  
  assign y = (state1 > state2) ? 0 :
             (state2 > state1) ? 0 :
             (state1 == 2'd1 ) ? 1 :
             x1[30:0] == x2[30:0] ;
   
endmodule    

