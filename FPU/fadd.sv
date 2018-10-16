`timescale 1ns / 1ps


module fadd(
  input wire [31:0] x1,
  input wire [31:0] x2,
  output wire [31:0] y,
  output wire ovf);
  
  wire s1;
  wire s2;
  wire [7:0] e1;
  wire [7:0] e2;
  wire [22:0] m1;  
  wire [22:0] m2;
     
  assign {s1, e1, m1}=x1;
  assign {s2, e2, m2}=x2;
  
  wire [24:0] m1a;
  wire [24:0] m2a;  

  assign m1a= (e1==0) ? 25'b0 : {2'b01, m1};  //ayasii
  assign m2a= (e2==0) ? 25'b0 : {2'b01, m2}; 
  
  wire [7:0] e1a;
  wire [7:0] e2a;  

  assign e1a= (e1==8'b0) ? 1 : e1; //ayasii
  assign e2a= (e2==8'b0) ? 1 : e2;  
 
  wire [7:0] e2ai;    
  assign e2ai=~e2a;  //ayasii
  
  wire [8:0] te; //nannbittoshiftsuruka
  assign te={1'b0, e1a}+{1'b0, e2ai};        
  
  wire ce;
  wire [7:0] tde;
  assign ce=~te[8];  //ayasii
  
  wire [8:0] te2;
  assign te2=te+9'b01;
  wire [8:0] te3;
  assign te3=~te;
  assign tde = (ce==0) ? te2[7:0] : te3[7:0]; //ayasii

  wire [4:0] de;  
  assign de = tde>31 ? 31 : tde[4:0];    //ayasii
  
  wire sel; //sel=0 means |x1|>|x2|. sel1=1 means |x1|<=|x2|
  assign sel = (de==0) ? ((m1a > m2a) ? 0 : 1) : ce;  
  
  wire [24:0] ms;
  wire [24:0] mi;   
  wire [7:0] es;
  wire [7:0] ei;  
  wire  ss;
  
  assign ms = (sel==0) ? m1a : m2a ;
  assign mi = (sel==0) ? m2a : m1a ;
  assign es = (sel==0) ? e1a : e2a ;
  assign ei = (sel==0) ? e2a : e1a ;
  assign ss = (sel==0) ? s1  : s2  ;

  wire [55:0] mie;
  assign mie={mi, 31'b0};

  wire [55:0] mia;  
  assign mia=mie>>de; //ayasii
  
  wire tstck;
  assign tstck=|(mia[28:0]);
  
  
  wire [26:0] mye; //if signs are same then add, and if they are different then sub
  assign mye = (s1==s2) ? {ms, 2'b0}+mia[55:29]  : {ms, 2'b0} - mia[55:29] ;  

  wire [7:0] esi;
  assign esi=es+1;
  
  wire [7:0] eyd;    
  wire [26:0] myd;
  wire stck;    
  
  wire flag1;
  assign flag1 = (mye[26]==1 && esi==255) ? 1 : 0; //1 if overflow
  assign myd = (mye[26]==0) ? mye  :  ( (esi==255) ?  {2'b01,25'b0} : mye>>1 )  ;  
  assign eyd = (mye[26]==0) ? es   :  ( (esi==255) ?  255 : esi ) ;  
  assign stck = (mye[26]==0) ? tstck :  tstck || mye[0] ;      

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
              
  wire [8:0] eyf;      
  assign eyf = {1'b0, eyd} - {4'b0, se};

  wire [7:0] eyr;    
  wire [26:0] myf;
  assign myf = ({1'b0, eyd} > {4'b0, se}) ? (myd<<se)  : myd<<(eyd[4:0]-1) ;                
  assign eyr = ({1'b0, eyd} > {4'b0, se}) ? eyf[7:0] : 8'b0  ;                              
  
  wire a;
  assign a=(myf[1] == 1 && myf[0] == 0 && stck == 0 && myf[2] == 1) ? 1 : 0;
  wire b;
  assign b=(myf[1] == 1 && myf[0] == 0 && s1 == s2 && stck ==1) ? 1 : 0;
  wire c;
  assign c=(myf[1] == 1 && myf[0] == 1) ? 1 : 0 ;
  wire d;
  assign d=a||b||c ? 1 : 0;



  wire [24:0] myr;  
  assign myr = (d==1) ? (myf[26:2] + 23'b1) : myf[26:2];
  
  wire [7:0] eyri;      
  assign eyri = eyr + 8'b1;
  
  wire [7:0] ey;        
  wire [22:0] my;       
  wire fack;
  assign fack = |(myr[23:0]) ; //1 if at least there is 1. 0 if all of them is 0 
  assign ey = (myr[24]==1) ? eyri  : ((fack==0) ? 0 : eyr) ; //overflow arier.  honnmani 0 ka? 7'b0では?               
  assign my = (myr[24]==1) ? 23'b0 : ((fack==0) ? 23'b0 : myr[22:0])  ;      
  
  wire flag2;
  assign flag2 = ((myr[24]==1 && eyri==255) || flag1==1) ? 1 : 0; //1 if overflow
  wire sy;
  assign sy = (ey==0 && my==0) ? s1&&s2 : ss;
  
  wire nzm1;
  wire nzm2;
  assign nmz1 = |(m1[22:0]); 
  assign nmz2 = |(m2[22:0]);              
  
  assign y = 
    (e1 == 255 && e2 != 255) ? {s1, 8'd255, nmz1, m1[21:0]} :
    (e2 == 255 && e1 != 255) ? {s2, 8'd255, nmz2, m2[21:0]} :
    (e1 == 255 && e2 == 255 && nmz2) ? {s2, 8'd255, 1'b1, m2[21:0]} :
    (e1 == 255 && e2 == 255 && nmz1) ? {s1, 8'd255, 1'b1, m1[21:0]} :
    (e1 == 255 && e2 == 255 && s1==s2) ? {s1, 8'd255, 23'b0} :
    (e1 == 255 && e2 == 255) ? {1'b1, 8'd255, 1'b1, 22'b0} :   //+mugenn-mugenn=NaN. sentou 1'b0deha?
    {sy,ey,my};    
    
  //overflow ha wakaran
  assign ovf=(e1<255 && e2<255 && flag2==1) ? 1 : 0;
  
endmodule   
   
   
   
   
   
   
   
   
   
   
   
   
