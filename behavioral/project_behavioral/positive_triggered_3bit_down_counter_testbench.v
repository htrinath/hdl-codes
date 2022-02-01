`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:49:28 02/01/2022
// Design Name:   negative_triggered_3bit_down_counter
// Module Name:   D:/xilinx/HDL Coding/behavioral/project_behavioral/positive_triggered_3bit_down_counter_testbench.v
// Project Name:  project_behavioral
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: negative_triggered_3bit_down_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module positive_triggered_3bit_down_counter_testbench;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [2:0] q;

	// Instantiate the Unit Under Test (UUT)
	negative_triggered_3bit_down_counter uut (
		.q(q), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
	clk=0;
		forever
		#5 clk = ~clk;
	end
	
	initial begin
	rst=0;
	#20;
	rst=1;
	#100;
	rst=0;
	#10
	$finish;
   end
      
endmodule

