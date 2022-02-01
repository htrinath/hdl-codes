`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:25:08 02/01/2022 
// Design Name: 
// Module Name:    full_subtractor 
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
module full_subtractor(diff,bout,a,b,bin);
input a,b,bin;
output diff,bout;
assign diff = a ^ b ^ bin;
assign bout = (~a & b) | (~a & bin) | (b & bin);
endmodule
