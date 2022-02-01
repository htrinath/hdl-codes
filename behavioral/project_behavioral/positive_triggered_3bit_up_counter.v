`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:38:16 02/01/2022 
// Design Name: 
// Module Name:    positive_triggered_3bit_up_counter 
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
module positive_triggered_3bit_up_counter(q,clk,rst);
input clk,rst;
output reg [2:0]q;
initial q=3'b000;
always @(posedge clk, negedge rst)
if(rst==0)
q=3'b000;
else
q = q + 1'b1;
endmodule
