`timescale 1ns / 1ps


module fadd(
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
  
  //x1の指数部が0の場合。そのときは、我々の仕様だとx1==0とみなすため、最後、y=x2を出力
  wire state1;
  assign state1 = (e1==8'b0) ? 1 : 0 ;

  //x2の指数部が0の場合。そのときは、我々の仕様だとx2==0とみなすため、最後、y=x1を出力  
  wire state2;
  assign state2 = (e2==8'b0) ? 1 : 0 ;

  wire [24:0] m1a;
  wire [24:0] m2a; 
  assign m1a= {2'b01, m1};  
  assign m2a= {2'b01, m2};  
   
  wire [7:0] e2_inv;    
  assign e2_inv=~e2;  //bit反転


  //引き算の代わりに、反転bitして和をとり、2つの差を求める.  
  wire [8:0] te; 
  assign te={1'b0, e1}+{1'b0, e2_inv};        

  
  //ce==1だと、e1>e2を意味し、ce==0だとe1<=e2を意味する.flag.
  wire ce;
  assign ce=te[8];  
  
  //[7:0]が,指数の差の絶対値.仮数部をずらして和を取るときに使用される
  wire [8:0] tde;
  assign tde = ce ? {te + 9'd1} : ~te; 
  
  //指数部の差が31以上あるときは、31を上限とした.
  wire [4:0] de;  
  assign de = (tde[7:0] > 8'd31) ? 31 : tde[4:0] ;
  
  //sel=0 means |x1|>|x2|. sel1=1 means |x1|<=|x2|  
  wire sel; 
  assign sel = (de==0) ? ((m1a > m2a) ? 0 : 1) : ~ce; 
  
  
  //追加した.|x1|==|x2|を意味する.最後に使う.
  wire same_abs;
  assign same_abs = ((de==0) && (m1a==m2a)) ? 1 : 0;


  //s means superior, i means inferior  
  wire [24:0] ms;
  wire [24:0] mi;   
  wire [7:0] es;
  wire  ss;
  
  assign ms = (sel==0) ? m1a : m2a ;
  assign mi = (sel==0) ? m2a : m1a ;
  assign es = (sel==0) ? e1 : e2 ;
  assign ss = (sel==0) ? s1 : s2 ;



  wire [55:0] mie;
  assign mie={mi, 31'b0};

  //inferiorの仮数部を、指数差分、ずらす.
  wire [55:0] mia;  
  assign mia=mie>>de; 


  
  //if signs are same then add, and if they are different then sub  
  //ずらして引いてるので、引き算問題ない.
  wire [26:0] mye; 
  assign mye = (s1==s2) ? {ms, 2'b0}+mia[55:29]  : {ms, 2'b0} - mia[55:29] ;  


  wire [7:0] eyd;    
  wire [26:0] myd;
  
  //基本的にはmye[26]==0である.  
  assign myd = (mye[26]==0) ? mye  :  (mye>>1)  ;  
  assign eyd = (mye[26]==0) ? es   :  es+8'd1 ;  


  //どこに初めて1が立っているか調べる
  wire [4:0] se;    
  assign se = (myd[25] == 1) ? 0 :
              (myd[24] == 1) ? 1 :
              (myd[23] == 1) ? 2 :
              (myd[22] == 1) ? 3 :
              (myd[21] == 1) ? 4 :
              (myd[20] == 1) ? 5 :
              (myd[19] == 1) ? 6 :              
              (myd[18] == 1) ? 7 :
              (myd[17] == 1) ? 8 :
              (myd[16] == 1) ? 9 :
              (myd[15] == 1) ? 10 :
              (myd[14] == 1) ? 11 :
              (myd[13] == 1) ? 12 :
              (myd[12] == 1) ? 13 :
              (myd[11] == 1) ? 14 :
              (myd[10] == 1) ? 15 :
              (myd[9] == 1) ? 16 :              
              (myd[8] == 1) ? 17 :
              (myd[7] == 1) ? 18 :
              (myd[6] == 1) ? 19 :
              (myd[5] == 1) ? 20 :
              (myd[4] == 1) ? 21 :
              (myd[3] == 1) ? 22 :
              (myd[2] == 1) ? 23 :
              (myd[1] == 1) ? 24 :
              (myd[0] == 1) ? 25 :  26;

  //基本的に、出力すべき指数部          
  wire [8:0] eyf;      
  assign eyf = {1'b0, eyd} - {4'b0, se};
  
  //ただし、seの方が大きい時は、非正規化数とする.
  wire [7:0] ey;    
  assign ey = ({1'b0, eyd} > {4'b0, se}) ? eyf[7:0] : 8'b0 ;                                
  
  //我々の仕様では、非正規化数になるときは、仮数部27桁全て0にしてもよい
  wire [26:0] myf;
  assign myf = ({1'b0, eyd} > {4'b0, se}) ? (myd<<se) : 27'd0 ;           
  
  wire [22:0] my;
  assign my = myf[24:2] ;     
 
  wire sy;
  assign sy = same_abs ? (s1 && s2) : ss;
         
  assign y = state1 ? x2 : (state2 ? x1 : {sy,ey,my}) ;
  
endmodule   
   
