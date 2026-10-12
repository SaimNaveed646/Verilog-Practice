`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2026 02:58:34 AM
// Design Name: 
// Module Name: decoder3to8
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


module decoder3to8(
    input i1,
    input i2,
    input i3,
    output o1,
    output o2,
    output o3,
    output o4,
    output o5,
    output o6,
    output o7,
    output o8
    );
    
    decoder2to4 d1 (
    .en(~i3) , .i2(i2) , .i1(i1) ,
    .o4(o4) , .o3(o3) , .o2(o2) , .o1(o1)
    );
    
    decoder2to4 d2 (
    .en(i3) , .i2(i2) , .i1(i1) ,
    .o4(o8) , .o3(o7) , .o2(o6) , .o1(o5)
    );
    
endmodule
