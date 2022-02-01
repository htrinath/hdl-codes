`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:24:51 02/01/2022 
// Design Name: 
// Module Name:    negative_triggered_t_flipflop 
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
module negative_triggered_t_flipflop(q,t,clk,rst);
input t,clk,rst;
output reg q;
always @(negedge clk, negedge rst)
if(rst==0)
q=0;
else case(t)
1'b0 : q=q;
1'b1 : q=~q;
endcase
endmodule
