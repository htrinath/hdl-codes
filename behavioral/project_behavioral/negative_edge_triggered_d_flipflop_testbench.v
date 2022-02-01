`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:24:59 01/31/2022
// Design Name:   negative_edge_triggered_d_flipflop
// Module Name:   D:/xilinx/HDL Coding/behavioral/project_behavioral/negative_edge_triggered_d_flipflop_testbench.v
// Project Name:  project_behavioral
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: negative_edge_triggered_d_flipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module negative_edge_triggered_d_flipflop_testbench;

	// Inputs
	reg d;
	reg clk;
	reg rst;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	negative_edge_triggered_d_flipflop uut (
		.q(q), 
		.d(d), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin	
	clk=0;
	forever
	#10 clk = ~clk;
	end 
	initial begin
	d = 0;
	rst = 1;
	#30;
	d=1;
	rst=1;
	#31;
	d=1;
	rst=0;
	#20;
	d=0;
	#25
	$finish;
	end
      
endmodule

