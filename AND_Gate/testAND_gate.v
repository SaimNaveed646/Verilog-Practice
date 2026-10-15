`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2026 10:29:45 PM
// Design Name: 
// Module Name: testAND_gate
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


module testAND_gate;

     reg a;
     reg b;
     
     wire c;
     
     AND_gate uut (
     .a(a),.b(b),.c(c)
    );
    
    initial
    begin
    
    a=0 ; b=0 ;   #10;
    a=0 ; b=1 ;   #10;
    a=1 ; b=0 ;   #10;
    a=1 ; b=1 ;   #10;
       
    end
endmodule
