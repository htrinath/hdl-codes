`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:36:26 02/01/2022 
// Design Name: 
// Module Name:    positive_triggered_jk_flipflop 
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
module positive_triggered_jk_flipflop(q,j,k,clk,rst);
input j,k,clk,rst;
output reg q;
always@(posedge clk, negedge rst)
if(rst==0)
q=0;
else
case({j,k})
2'b00 : q=q;
2'b01 : q=0;
2'b10 : q=1;
2'b11 : q=~q;
endcase
endmodule
