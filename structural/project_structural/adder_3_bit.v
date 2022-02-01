`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:19:16 01/28/2022 
// Design Name: 
// Module Name:    adder_3_bit 
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
module adder_3_bit(s[2:0],cout,a[2:0],b[2:0],cin);
input [2:0]a,b;
input cin;
output [2:0]s;
output cout;
wire c1,c2,c3;
full_adder fa1(s[0],c1,a[0],b[0],cin);
full_adder fa2(s[1],c2,a[1],b[1],c1);
full_adder fa3(s[2],cout,a[2],b[2],c2);

endmodule
