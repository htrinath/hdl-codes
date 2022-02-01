`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:48:24 01/28/2022
// Design Name:   mux_2X1
// Module Name:   D:/xilinx/HDL Coding/structural/project_structural/mux_2X1_testbench.v
// Project Name:  project_structural
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_2X1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_2X1_testbench;

	// Inputs
	reg a;
	reg b;
	reg s;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	mux_2X1 uut (
		.o(o), 
		.a(a), 
		.b(b), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		s = 0;
		a = 0;
		b = 0;
		#10;
		s = 0;
		a = 0;
		b = 1;
		#10;
		s = 0;
		a = 1;
		b = 0;
		#10;
		s = 0;
		a = 1;
		b = 1;
		#10;
		s = 1;
		a = 0;
		b = 0;
		#10;
		s = 1;
		a = 0;
		b = 1;
		#10;
		s = 1;
		a = 1;
		b = 0;
		#10;
		s = 1;
		a = 1;
		b = 1;
		#10;
     $finish;
	end
      
endmodule

