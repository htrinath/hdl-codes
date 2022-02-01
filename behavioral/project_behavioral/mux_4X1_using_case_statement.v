`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:27 01/31/2022 
// Design Name: 
// Module Name:    mux_4X1_using_case_statement 
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
module mux_4X1_using_case_statement(y,a,s);
input [3:0]a;
input [1:0]s;
output reg y;
always@(a,s)
case(s)
2'b00 : y = a[0];
2'b01 : y = a[1];
2'b10 : y = a[2];
2'b11 : y = a[3];
default: y = 0;
endcase
endmodule
