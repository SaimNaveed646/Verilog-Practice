`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2026 11:59:27 PM
// Design Name: 
// Module Name: test_parallel_add_sub
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


module test_parallel_add_sub;

    reg [3:0] x;
    reg [3:0] y;
    reg cin;
    
    wire [3:0]s;
    wire cout;
    
    
    parallel_add_sub  uut(
    .x(x) , .y(y) , .cin(cin) , .s(s) , .cout(cout) 
    );
    
    initial
    begin
    
    x[3]=0;x[2]=1;x[1]=0;x[0]=1;
    y[3]=0;y[2]=1;y[1]=0;y[0]=1;  cin=0;  #100;
    
    x[3]=0;x[2]=1;x[1]=1;x[0]=0;
    y[3]=1;y[2]=1;y[1]=1;y[0]=0;  cin=0;  #100;
    
    x[3]=1;x[2]=0;x[1]=0;x[0]=0;
    y[3]=0;y[2]=1;y[1]=1;y[0]=1;  cin=0;  #100;
    
    end
endmodule
