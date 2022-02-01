`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:58:12 01/31/2022
// Design Name:   comparator_1bit_using_case_statement
// Module Name:   D:/xilinx/HDL Coding/behavioral/project_behavioral/comparator_1bit_using_case_statement_testbench.v
// Project Name:  project_behavioral
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator_1bit_using_case_statement
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_1bit_using_case_statement_testbench;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire [2:0] y;

	// Instantiate the Unit Under Test (UUT)
	comparator_1bit_using_case_statement uut (
		.y(y), 
		.a(a), 
		.b(b)
	);

	initial begin
		a = 0;
		b = 0;
		#10;
		
		a = 0;
		b = 1;
		#10;
		
		a = 1;
		b = 0;
		#10;
		
		a = 1;
		b = 1;
		#10;
		
		$finish;

	end
      
endmodule

