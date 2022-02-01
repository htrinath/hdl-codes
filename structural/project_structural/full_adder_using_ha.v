`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:28:24 01/28/2022 
// Design Name: 
// Module Name:    full_adder_using_ha 
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
module full_adder_using_ha(s,cout,a,b,cin);
input a,b,cin;
output s,cout;
wire w1,w2,w3;
half_adder h1(w1,w2,a,b);
half_adder h2(s,w3,w1,cin);
or o1 (cout,w2,w3);
endmodule
