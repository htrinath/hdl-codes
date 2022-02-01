`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:32:12 01/28/2022
// Design Name:   half_adder
// Module Name:   D:/xilinx/HDL Coding/behavioral/project/half_adder_testbench.v
// Project Name:  project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module half_adder_testbench;

	// Inputs
	reg a_tb;
	reg b_tb;

	// Outputs
	wire s_tb;
	wire c_tb;

	// Instantiate the Unit Under Test (UUT)
	half_adder uut (
		.s(s_tb), 
		.c(c_tb), 
		.a(a_tb), 
		.b(b_tb)
	);

	initial begin
		// Initialize Inputs
		a_tb = 0;
		b_tb = 0;

		// Wait 10 ns for global reset to finish
		#10;
		
      a_tb = 0;
		b_tb = 1;
		#10;
		
		a_tb = 1;
		b_tb = 0;
		#10;
		
		a_tb = 1;
		b_tb = 1;
		#10;
		
		$finish;

	end
      
endmodule

