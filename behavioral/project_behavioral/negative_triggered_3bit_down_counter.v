`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:47:55 02/01/2022 
// Design Name: 
// Module Name:    negative_triggered_3bit_down_counter 
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
module negative_triggered_3bit_down_counter(q,clk,rst);
input clk,rst;
output reg [2:0]q;
initial q=3'b111;
always @(negedge clk, negedge rst)
if(rst==0)
q=3'b111;
else
q = q - 1'b1;
endmodule