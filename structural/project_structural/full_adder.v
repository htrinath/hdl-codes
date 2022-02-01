`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:20:12 01/28/2022 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(s,cout,a,b,cin);
input a,b,cin;
output s,cout;
wire w1,w2,w3;
xor x1(s,a,b,cin);
and a1(w1,a,b);
and a2(w2,b,cin);
and a3(w3,cin,a);
or o1(cout,w1,w2,w3);
endmodule
