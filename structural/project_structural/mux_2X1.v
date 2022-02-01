`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:46:23 01/28/2022 
// Design Name: 
// Module Name:    mux_2X1 
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
module mux_2X1(o,a,b,s);
input a,b,s;
output o;
wire w1,w2,w3;
not n1(w1,s);
and a1(w2,a,w1);
and a2(w3,b,s);
or o1(o,w2,w3);
endmodule
