`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2026 10:31:18 PM
// Design Name: 
// Module Name: test_two_bit_multiplier
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


module test_two_bit_multiplier;

     reg [1:0]a;
     reg [1:0]b;
     
     wire [3:0]c;
     
     two_bit_multiplier uut(
     .a(a) , .b(b) , .c(c)
      );
      
      
     initial
     begin
     
             a[1] = 0;
             a[0] = 1;
             b[1] = 1;
             b[0] = 0;
             #100;
     
             a[1] = 1;
             a[0] = 1;
             b[1] = 1;
             b[0] = 1;
             #100;
     
             a[1] = 1;
             a[0] = 1;
             b[1] = 1;
             b[0] = 0;
             #100;
     
             a[1] = 0;
             a[0] = 1;
             b[1] = 0;
             b[0] = 0;
             #100;


      
     
     end
     
endmodule
