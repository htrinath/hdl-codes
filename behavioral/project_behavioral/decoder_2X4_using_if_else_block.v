`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:41 01/31/2022 
// Design Name: 
// Module Name:    decoder_2X4_using_if_else_block 
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
module decoder_2X4_using_if_else_block(y,a,en);
input [1:0]a;
input en;
output reg [3:0]y;
always @(a,en)
	if(a == 2'b00 && en == 1)
	y = 4'b0001;
	else if(a == 2'b01 && en == 1)
	y = 4'b0010;
	else if(a == 2'b10 && en == 1)
	y = 4'b0100;
	else if(a == 2'b11 && en == 1)
	y = 4'b1000;
	else y = 4'b0000;
endmodule
