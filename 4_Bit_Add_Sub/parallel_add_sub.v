`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2026 11:34:56 PM
// Design Name: 
// Module Name: parallel_add_sub
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


module parallel_add_sub(
    input [3:0]x,
    input [3:0]y,
    input cin,
    output [3:0]s,
    output cout
    );
    
    wire w0,w1,w2,w3;
    wire c0 ,c1,c2, c3;
    
    
    assign w0 = y[0] ^ cin ;
    full_adder a0 (
    .x(x[0]) , .y(w0) , .cin(cin) , .s(s[0]) , .cout(c0)
    );
    
    assign w1 = y[1] ^ cin ;
    full_adder a1 (
    .x(x[1]) , .y(w1) , .cin(c0) , .s(s[1]) , .cout(c1)
    );
    
    assign w2 = y[2] ^ cin ;
    full_adder a2 (
    .x(x[2]) , .y(w2) , .cin(c1) , .s(s[2]) , .cout(c2)
    );
    
    assign w3 = y[3] ^ cin ;
    full_adder a3 (
    .x(x[3]) , .y(w3) , .cin(c2) , .s(s[3]) , .cout(c3)
    );
    
    assign cout = c3 ^ c2;
endmodule
