`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:53 02/01/2022 
// Design Name: 
// Module Name:    positive_triggered_siso_3bit 
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
module positive_triggered_siso_3bit(q,d,clk,rst);
input d,clk,rst;
output reg q;
reg x,y;
always @(posedge clk, negedge rst)
if(rst==0)
begin
x=0;
y=0;
q=0;
end
else begin
x<=d;
y<=x;
q<=y;
end
endmodule
