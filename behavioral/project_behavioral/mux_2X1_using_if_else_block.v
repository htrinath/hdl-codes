`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:38:26 01/31/2022 
// Design Name: 
// Module Name:    mux_2X1_using_if_else_block 
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
module mux_2X1_using_if_else_block(y,a,b,s);
input a,b,s;
output reg y;
always @(a,b,s)
begin
if(s==0)
y=a;
else y=b;
end
endmodule
