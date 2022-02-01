`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:06:22 01/31/2022 
// Design Name: 
// Module Name:    level_triggered_D_flipflop 
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
module level_triggered_D_flipflop(q,d,clk);
input d,clk;
output reg q;
always @(clk,d) //2nd method would be always@(clk) so that the o/p does not depend on d.
begin
if(clk==1'b1)
q=d;
end
endmodule
