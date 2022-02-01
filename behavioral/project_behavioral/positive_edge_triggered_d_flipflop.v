`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:02:43 01/31/2022 
// Design Name: 
// Module Name:    positive_edge_triggered_d_flipflop 
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
module positive_edge_triggered_d_flipflop(q,d,clk,rst);
input d,clk,rst;
output reg q;
always @(posedge clk, posedge rst)//Can also be modelled so that reset will be applied when rst=0(negedge rst and rst==1)
if(rst==0)
q=d;
else 
q=0;
endmodule
