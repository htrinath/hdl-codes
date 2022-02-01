`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:23:07 01/28/2022
// Design Name:   full_adder
// Module Name:   D:/xilinx/HDL Coding/structural/project_structural/full_adder_testbench.v
// Project Name:  project_structural
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_testbench;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.s(s), 
		.cout(cout), 
		.a(a), 
		.b(b), 
		.cin(cin)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;
		#10;
		
		a = 0;
		b = 0;
		cin = 1;
		#10;
		
		a = 0;
		b = 1;
		cin = 0;
		#10;
		
		a = 0;
		b = 1;
		cin = 1;
		#10;
		
		a = 1;
		b = 0;
		cin = 0;
		#10;
		
		a = 1;
		b = 0;
		cin = 1;
		#10;
		
		a = 1;
		b = 1;
		cin = 0;
		#10;
		
		a = 1;
		b = 1;
		cin = 1;
		#10;

	end
      
endmodule

