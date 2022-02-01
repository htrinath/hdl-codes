`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:43:42 01/31/2022 
// Design Name: 
// Module Name:    decoder_2X4_using_case_statement 
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
module decoder_2X4_using_case_statement(y,a,en);
input [1:0]a;
input en;
output reg [3:0]y;
always @(a,en)
if(en==1)
	case(a)
	2'b00 : y = 4'b0001;
	2'b01 : y = 4'b0010;
	2'b10 : y = 4'b0100;
	2'b11 : y = 4'b1000;
	default : y = 4'b0000;
	endcase
else y = 4'b0000;
endmodule
