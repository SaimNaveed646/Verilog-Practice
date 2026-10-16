`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2026 12:38:58 AM
// Design Name: 
// Module Name: testhalf_sub
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


module testhalf_sub;


    reg x;
    reg y;
    
    wire d;
    wire b;
    
    half_adder uut(
    .x(x) , .y(y) , .d(d) , .b(b)
    );
    
    initial
    begin
    
    x=0 ; y=0 ; #10 ;
    x=0 ; y=1 ; #10 ;
    x=1 ; y=0 ; #10 ;
    x=1 ; y=1 ; #10 ;
    
    
    end
endmodule



