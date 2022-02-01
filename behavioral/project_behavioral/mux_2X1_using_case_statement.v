`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:22 01/31/2022 
// Design Name: 
// Module Name:    mux_2X1_using_case_statement 
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
module mux_2X1_using_case_statement(y,a,b,s);
input a,b,s;
output reg y;
always @(a,b,s)
case(s)
1'b0 : y=a;
1'b1 : y=b;
default : y=0; //optional
endcase
endmodule
