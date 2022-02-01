`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:02:56 01/28/2022 
// Design Name: 
// Module Name:    decoder_2X4 
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
module decoder_2X4(o,a,b,en);
input a,b,en;
output [3:0]o;
wire w1,w2;
not n1(w1,a);
not n2(w2,b);
and a1(o[0],w1,w2,en);
and a2(o[1],w1,b,en);
and a3(o[2],a,w2,en);
and a4(o[3],a,b,en);
endmodule
