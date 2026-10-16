`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2026 08:22:01 PM
// Design Name: 
// Module Name: two_bit_multiplier
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


module two_bit_multiplier(
    input [1:0]a,
    input [1:0]b,
    output [3:0]c
    );   
    
    wire w1 , w2 , w3 , w4;
    
    assign c[0] = a[0] & b[0] ;
    
    assign w1 = a[0] & b[1];
    assign w2 = a[1] & b[0];
    assign w3 = a[1] & b[1];
      
    half_adder a0 (
    .x(w1) , . y(w2) , .s(c[1]) ,  .c(w4)
    );
    
    half_adder a1(
        .x(w3) , . y(w4) , .s(c[2]) ,  .c(c[3])
    );
    
endmodule
