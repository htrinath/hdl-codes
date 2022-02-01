`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:23 01/28/2022 
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
reg s,cout;
always @(a,b,cin)
begin
s = a ^ b ^ cin;
cout = (a & b) | (b & cin) | (cin & a);
end
endmodule
