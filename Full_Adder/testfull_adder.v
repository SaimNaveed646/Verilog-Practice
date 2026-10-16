`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2026 12:00:30 AM
// Design Name: 
// Module Name: testfull_adder
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


module testfull_adder;

     reg x ;
     reg y ;
     reg cin ; 
     
     wire s ;
     wire cout ; 
     
     full_adder uut (
     .x(x) , .y(y) , .cin(cin),
     .s(s) , .cout(cout)
    );
    
    initial 
    begin
    
    x=0 ; y=0 ; cin=0 ;  #10;
    x=0 ; y=0 ; cin=1 ;  #10;
    x=0 ; y=1 ; cin=0 ;  #10;
    x=0 ; y=1 ; cin=1 ;  #10;
    x=1 ; y=0 ; cin=0 ;  #10;
    x=1 ; y=0 ; cin=1 ;  #10;
    x=1 ; y=1 ; cin=0 ;  #10;
    x=1 ; y=1 ; cin=1 ;  #10;
    
    
    end
    
endmodule
