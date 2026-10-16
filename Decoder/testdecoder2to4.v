`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2026 02:47:07 AM
// Design Name: 
// Module Name: testdecoder2to4
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


module testdecoder2to4;

     reg en;
     reg i1;
     reg i2;
     
     wire o1;
     wire o2;
     wire o3;
     wire o4;
     
     decoder2to4 uut (
     .en(en) , .i1(i1) , .i2(i2),
     .o1(o1) , .o2(o2) , .o3(o3) , .o4(o4)
    );
    
    initial
    begin
    
    en=0 ; i2=0 ; i1=0 ; #10;
    en=0 ; i2=0 ; i1=1 ; #10;
    en=0 ; i2=1 ; i1=0 ; #10;
    en=0 ; i2=1 ; i1=1 ; #10;
    en=1 ; i2=0 ; i1=0 ; #10;
    en=1 ; i2=0 ; i1=1 ; #10;
    en=1 ; i2=1 ; i1=0 ; #10;
    en=1 ; i2=1 ; i1=1 ; #10;  
    
    end
endmodule
