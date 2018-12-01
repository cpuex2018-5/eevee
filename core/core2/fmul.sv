`timescale 1ns / 1ps


module fmul(
  input wire [31:0] x1,
  input wire [31:0] x2,
  output wire [31:0] y);
  
  wire s1;
  wire s2;
  wire [7:0] e1;
  wire [7:0] e2;
  wire [22:0] m1;  
  wire [22:0] m2;
     
  assign {s1, e1, m1}=x1;
  assign {s2, e2, m2}=x2;
  
//if zero1=1, e of x1 or x2 is 0, so zero_flag=1  
  wire zero1;
  assign zero1=(e1==0)||(e2==0) ;
  
//sign of output y  
  wire sy;
  assign sy = s1 ^ s2;
 
//add e1 and e2. 1bit余分に設けた。   
  wire [9:0] eadd;
  assign eadd={2'b00, e1}+{2'b00, e2};

//j1=1 means eadd > 127  
  wire j1;
  assign j1=|(eadd[9:7]);   //same to [8:7]

//if eadd=127 then j2=1, and if eadd<127 then j2=0  
  wire j2;
  assign j2=&(eadd[6:0]);
  
  wire [9:0] eout;
  assign eout = (j1||j2) ? eadd-127 : 0;  //don't care of the latter one.

//if zero2=1, e1+e2-127<0 , so zero_flag=1    
  wire zero2;
  assign zero2= (j1==0) && (j2==0) ;   //same to ~(j1||j2)

//if zero_flag=1, returns e=0 (and m=0), which means 0. 
  wire zero_flag; 
  assign zero_flag= zero1||zero2 ;
  
//caluculations of m  
  wire [24:0] m1a;
  wire [24:0] m2a;    
  assign m1a={2'b01, m1};
  assign m2a={2'b01, m2};

//pipe lineではここを工夫すべし。  
//size can be changed if needed, like [49:0].  
  wire [48:0] mmul;
  assign mmul=m1a*m2a;
  
//rise=1 means there's 桁上がり  
  wire rise;
  assign rise=mmul[47];

//丸めしない。切り捨てる。  
  wire [22:0] mout;
  assign mout= rise? mmul[46:24] : mmul[45:23];
  
  wire [7:0] eouti;
  assign eouti = eout[7:0]+ 8'b01; 
  
  wire [7:0] ey;
  assign ey=zero_flag ? 8'b0: (rise ? eouti : eout[7:0]);
  
  wire [22:0] my;
  assign my=zero_flag ? 23'b0: mout;
  
  assign y ={sy, ey, my};    
  
endmodule   


