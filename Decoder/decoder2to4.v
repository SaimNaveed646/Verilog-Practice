`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2026 02:24:59 AM
// Design Name: 
// Module Name: decoder2to4
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


module decoder2to4(
    input en,
    input i1,
    input i2,
    output o1,
    output o2,
    output o3,
    output o4
    );
    
    assign o1 = ~(en & ~i2 & ~i1);
    assign o2 = ~(en & ~i2 & i1);
    assign o3 = ~(en & i2 & ~i1);
    assign o4 = ~(en & i2 & i1);
    
endmodule
