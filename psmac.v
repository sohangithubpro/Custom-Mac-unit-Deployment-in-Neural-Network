`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2023 18:19:49
// Design Name: 
// Module Name: psmac
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module psmac(

  input  [7:0]mr,
  input  [7:0]md,
  input [3:0]sx,sy,
  input [1:0]mode,
  input clk,
  
  
   output  [15:0]y
    
    );
    
    //reg [15:0] y;
    wire [4:0] pr1,pr2,pr3,pr4,pr5,pr6,pr7,pr8,pr9,pr10,pr11,pr12,pr13,pr14,pr15,pr16;
    wire [8:0]z1,z2,z3,z4,z5,z6,z7,z8;
    wire [4:0]x1,x2,x3,x4;
    wire [8:0]y1,y2,y3,y4,x5;
    wire [16:0]w1,w2;
    wire [13:0]y5,y6,y7,y8,w3,w4;
    
   
    
    
 // BBU1 partial products of mr[3:0]*md[3*0]
    sbb i1(mr[1:0],md[1:0],sx[0],sy[0],pr1);
    sbb i2(mr[3:2],md[1:0],sx[1],sy[0],pr2);
    sbb i3(mr[1:0],md[3:2],sx[0],sy[1],pr3);
    sbb i4(mr[3:2],md[3:2],sx[1],sy[1],pr4); 
    
 // BBU2 partial products of mr[7:4]*md[3*0] 
    sbb i5(mr[5:4],md[1:0],sx[2],sy[0],pr5);
    sbb i6(mr[7:6],md[1:0],sx[3],sy[0],pr6);
    sbb i7(mr[5:4],md[3:2],sx[2],sy[1],pr7);
    sbb i8(mr[7:6],md[3:2],sx[3],sy[1],pr8);
    
 // BBU2 partial products of mr[3:0]*md[7*4]  
    sbb i9(mr[1:0],md[5:4],sx[0],sy[2],pr9);
    sbb i10(mr[3:2],md[5:4],sx[1],sy[2],pr10);
    sbb i11(mr[1:0],md[7:6],sx[0],sy[3],pr11);
    sbb i12(mr[3:2],md[7:6],sx[1],sy[3],pr12);
    
 // BBU2  partial products of mr[7:4]*md[7*4]    
    sbb i13(mr[5:4],md[5:4],sx[2],sy[2],pr13);
    sbb i14(mr[7:6],md[5:4],sx[3],sy[2],pr14);
    sbb i15(mr[5:4],md[7:6],sx[2],sy[3],pr15);
    sbb i16(mr[7:6],md[7:6],sx[3],sy[3],pr16);  
    

//bbu1 4bX4b product computation
assign z1={pr4[4:0],pr1[3:0]};
assign x1= pr2[4:0]+pr3[4:0];
assign z2= (pr2[4]==1&&pr3[4]==1)?({2'b11,x1,2'b00}): (pr2[4]==0&&pr3[4]==0)?({2'b00,x1,2'b00}):({x1[4],x1[4],x1,2'b00}); 
assign y1=z1+z2;
    
//bbu2 4bX4b product computation
assign z3={pr8[4:0],pr5[3:0]};
assign x2= pr6[4:0]+pr7[4:0];
assign z4= (pr6[4]==1&&pr7[4]==1)?({2'b11,x2,2'b00}): (pr6[4]==0&&pr7[4]==0)?({2'b00,x2,2'b00}):({x2[4],x2[4],x2,2'b00});     
assign y2=z3+z4;  


//bbu3 4bX4b product computation
assign z5={pr12[4:0],pr9[3:0]};
assign x3= pr10[4:0]+pr11[4:0];
assign z6= (pr10[4]==1&&pr11[4]==1)?({2'b11,x3,2'b00}): (pr10[4]==0&&pr11[4]==0)?({2'b00,x2,2'b00}):({x3[4],x3[4],x3,2'b00}); 
assign y3=z5+z6;

//bbu4 4bX4b product computation
assign z7={pr16[4:0],pr13[3:0]};
assign x4= pr14[4:0]+pr15[4:0];
assign z8= (pr14[4]==1&&pr15[4]==1)?({2'b11,x4,2'b00}): (pr14[4]==0&&pr15[4]==0)?({2'b00,x4,2'b00}):({x4[4],x4[4],x4,2'b00}); 
assign y4=z7+z8; 


//8bX8b product computation
assign w1={y4[8:0],y1[7:0]};
assign x5= y2+y3;
assign w2= (y2[8]==1&&y3[8]==1)?({4'b1111,x5,4'b0000}): (y2[8]==0&&y3[8]==0)?({4'b0000,x5,4'b0000}):({x5[8],x5[8],x5[8],x5[8],x5,4'b0000}); 

//8bX4b product computation
assign y5={y1[8],y1[8],y1[8],y1[8],y1};
assign y6={y2,4'b0000};
assign y7={y3[8],y3[8],y3[8],y3[8],y3};
assign y8={y4,4'b0000};
assign w3=y5+y6;
assign w4=y7+y8;


      
   
   
     assign y={(w1+w2)};
     
    
    
    
    
    
         
        
   
    
  

    

 endmodule
    
    
    
    


