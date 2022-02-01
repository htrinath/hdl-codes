`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:54:41 01/31/2022 
// Design Name: 
// Module Name:    comparator_1bit_using_case_statement 
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
module comparator_1bit_using_case_statement(y,a,b);
input a,b;
output reg [2:0]y;
always @(a,b)
case({a,b})
2'b00 : y = 3'b001;
2'b01 : y = 3'b010;
2'b10 : y = 3'b100;
2'b11 : y = 3'b001;
default : y = 3'b000;
endcase
endmodule
