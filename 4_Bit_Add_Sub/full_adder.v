`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2026 11:17:14 PM
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
    
    wire w1 , w2 ,w3;
    
    xor g1(s,x,y,cin);
    
    and g2(w1,x,y);
    and g3(w2,x,cin);
    and g4(w3,y,cin);
    
    or g5(cout,w1,w2,w3);
    
    
endmodule
