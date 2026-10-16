`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2026 11:23:48 PM
// Design Name: 
// Module Name: test_full_adder
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


module test_full_adder;

    reg x;
    reg y;
    reg cin;
    
    wire s;
    wire cout;
    
    
    full_adder uut (
    .x(x) , .y(y) , .cin(cin) , .s(s) , .cout(cout)
    );
    
    initial
    begin
    
    x=1 ; y=1 ; cin=0 ; #100;
    x=1 ; y=1 ; cin=1 ; #100;
    x=1 ; y=0 ; cin=0 ; #100;
    
    
    
    end
endmodule
