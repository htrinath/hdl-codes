`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:02:17 02/01/2022
// Design Name:   positive_triggered_siso_3bit
// Module Name:   D:/xilinx/HDL Coding/behavioral/project_behavioral/positive_triggered_siso_3bit_testbench.v
// Project Name:  project_behavioral
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: positive_triggered_siso_3bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module positive_triggered_siso_3bit_testbench;

	// Inputs
	reg d;
	reg clk;
	reg rst;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	positive_triggered_siso_3bit uut (
		.q(q), 
		.d(d), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
	clk=0;
	forever
	#5 clk=~clk;
	end
	
	initial begin
		// Initialize Inputs
		d = 1;
		rst = 1;
		#30;
		d = 0;
		rst = 1;
		#30;
		d = 1;
		rst = 1;
		#30;
		d = 1;
		#30;
		d = 0;
		#30;
		d = 1;
		#30;
		$finish;
	end
      
endmodule

