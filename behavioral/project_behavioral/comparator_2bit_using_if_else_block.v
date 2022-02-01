`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:47 01/31/2022 
// Design Name: 
// Module Name:    comparator_2bit_using_if_else_block 
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
module comparator_2bit_using_if_else_block(y,a,b);
input [1:0]a,b;
output reg [2:0]y;
always @(a,b)
if(a==b)
y=3'b001;
else if(a<b)
y=3'b010;
else if(b<a)
y=3'b100;
endmodule
