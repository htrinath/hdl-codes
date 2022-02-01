`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:01:29 01/31/2022 
// Design Name: 
// Module Name:    mux_4X1_using_if_else_block 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux_4X1_using_if_else_block(y,a,s);
input [3:0]a;
input [1:0]s;
output reg y;
always @(s,a)
if(s == 2'b00)
y = a[0];
else if (s == 2'b01)
y = a[1];
else if (s == 2'b10)
y = a[2];
else
y = a[3];
endmodule
