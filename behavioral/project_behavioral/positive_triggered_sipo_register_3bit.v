`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:31:35 02/01/2022 
// Design Name: 
// Module Name:    positive_triggered_sipo_register_3bit 
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
module positive_triggered_sipo_register_3bit(q,d,clk,rst);
input d,clk,rst;
output reg [2:0]q;
initial q=3'b000;
always @(posedge clk, negedge rst)
if(rst==0)
q=3'b000;
else begin
q[0]=q[1];
q[1]=q[2];
q[2]=d;
end

endmodule
