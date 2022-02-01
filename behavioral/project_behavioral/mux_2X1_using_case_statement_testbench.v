`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:29:32 01/31/2022
// Design Name:   mux_2X1_using_case_statement
// Module Name:   D:/xilinx/HDL Coding/behavioral/project_behavioral/mux_2X1_using_case_statement_testbench.v
// Project Name:  project_behavioral
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_2X1_using_case_statement
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_2X1_using_case_statement_testbench;

	// Inputs
	reg a;
	reg b;
	reg s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux_2X1_using_case_statement uut (
		.y(y), 
		.a(a), 
		.b(b), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		s = 0;
		#10;
		
		a = 0;
		b = 0;
		s = 1;
		#10;
		
		a = 0;
		b = 1;
		s = 0;
		#10;
		
		a = 0;
		b = 1;
		s = 1;
		#10;
		
		a = 1;
		b = 0;
		s = 0;
		#10;
		
		a = 1;
		b = 0;
		s = 1;
		#10;
		
		a = 1;
		b = 1;
		s = 0;
		#10;
		
		a = 1;
		b = 1;
		s = 1;
		#10;
		
		$finish;
	end
      
endmodule

