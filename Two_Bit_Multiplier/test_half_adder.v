`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2026 08:12:10 PM
// Design Name: 
// Module Name: test_half_adder
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


module test_half_adder;

    reg x;
    reg y;
    wire s;
    wire c;
    
    half_adder uut (
    .x(x) , .y(y) , .s(s) , .c(c)
   );
   
   initial 
   begin
   
   x=0 ; y=0 ; #100;
   x=0 ; y=1 ; #100;
   x=1 ; y=0 ; #100;
   x=1 ; y=1 ; #100;   
   
   end;
endmodule
