`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2026 03:03:11 AM
// Design Name: 
// Module Name: testdecoder3to8
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


module testdecoder3to8;

   reg i1;
   reg i2;
   reg i3;
   
   wire o1;wire o2;wire o3;
   wire o4;
   wire o5;
   wire o6;
   wire o7;
   wire o8;
   

   decoder3to8 uut(
   .i3(i3) , .i2(i2) , .i1(i1),
   .o4(o4) , .o3(o3) , .o2(o2) , .o1(o1),
   .o8(o8) , .o7(o7) , .o6(o6) , .o5(o5)
   );
   
   initial 
   begin
   
       i3=0 ; i2=0 ; i1=0 ; #10;
       i3=0 ; i2=0 ; i1=1 ; #10;
       i3=0 ; i2=1 ; i1=0 ; #10;
       i3=0 ; i2=1 ; i1=1 ; #10;
       i3=1 ; i2=0 ; i1=0 ; #10;
       i3=1 ; i2=0 ; i1=1 ; #10;
       i3=1 ; i2=1 ; i1=0 ; #10;
       i3=1 ; i2=1 ; i1=1 ; #10; 
   
   end
   
endmodule
