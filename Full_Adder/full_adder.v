`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2026 11:53:27 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input x,
    input y,
    input cin,
    output s,
    output cout
    );
    
    wire and1_out;
    wire and2_out;
    wire and3_out;
    
    xor g1 (s,x,y,cin);
    
    and g2 (and1_out, x,y);
    and g3 (and2_out ,x,cin);
    and g4 (and3_out ,y,cin);
    
    or  g5 (cout,and1_out,and2_out,and3_out);
    
endmodule
