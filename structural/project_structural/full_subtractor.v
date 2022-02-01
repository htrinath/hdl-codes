`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:20 02/01/2022 
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
wire w1,w2,w3,w4;
xor x1 (diff,a,b,bin);
not n1(w1,a);
and a1(w2,w1,b);
and a2(w3,w1,bin);
and a3(w4,b,bin);
or o1(bout,w2,w3,w4);
endmodule
