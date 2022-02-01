`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:12:48 01/31/2022
// Design Name:   bcd_to_7segment_using_case_statement
// Module Name:   D:/xilinx/HDL Coding/behavioral/project_behavioral/bcd_to_7segment_using_case_statement_testbench.v
// Project Name:  project_behavioral
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd_to_7segment_using_case_statement
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bcd_to_7segment_using_case_statement_testbench;

	// Inputs
	reg [3:0] a;

	// Outputs
	wire [6:0] y;

	// Instantiate the Unit Under Test (UUT)
	bcd_to_7segment_using_case_statement uut (
		.y(y), 
		.a(a)
	);

	initial begin
		a=4'b0000;
		#10;
		a=4'b0001;
		#10;
		a=4'b0010;
		#10;
		a=4'b0011;
		#10;
		a=4'b0100;
		#10;
		a=4'b0101;
		#10;
		a=4'b0110;
		#10;
		a=4'b0111;
		#10;
		a=4'b1000;
		#10;
		a=4'b1001;
		#10;
		a=4'b1010;
		#10;
		a=4'b1011;
		#10;
		a=4'b1100;
		#10;
		a=4'b1101;
		#10;
		a=4'b1110;
		#10;
		a=4'b1111;
		#10;
		$finish;

	end
      
endmodule

