`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:59:44 01/31/2022 
// Design Name: 
// Module Name:    bcd_to_7segment_using_case_statement 
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
module bcd_to_7segment_using_case_statement(y,a);
input [3:0]a;
output reg [6:0]y;
always @(a)
case (a)
4'b0000 : y = 7'b0111111;
4'b0001 : y = 7'b0000110;
4'b0010 : y = 7'b1011011;
4'b0011 : y = 7'b1001111;
4'b0100 : y = 7'b1100110;
4'b0101 : y = 7'b1101101;
4'b0110 : y = 7'b1111101;
4'b0111 : y = 7'b0000111;
4'b1000 : y = 7'b1111111;
4'b1001 : y = 7'b1101111;
default : y = 7'b0000000;
endcase
endmodule
