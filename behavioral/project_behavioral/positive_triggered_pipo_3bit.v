`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:10 02/01/2022 
// Design Name: 
// Module Name:    positive_triggered_pipo 
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
module positive_triggered_pipo(q,d,clk,rst);
input [2:0]d;
input clk,rst;
output reg [2:0]q;
always @(posedge clk, negedge rst)
if(rst==0)
q=3'b000;
else 
q=d;
endmodule
