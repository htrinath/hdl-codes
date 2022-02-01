`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:08:34 01/31/2022
// Design Name:   level_triggered_D_flipflop
// Module Name:   D:/xilinx/HDL Coding/behavioral/project_behavioral/level_triggered_d_flipflop_testbench.v
// Project Name:  project_behavioral
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: level_triggered_D_flipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module level_triggered_d_flipflop_testbench;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	level_triggered_D_flipflop uut (
		.q(q), 
		.d(d), 
		.clk(clk)
	);
	
	initial begin
	clk = 0;
	d = 1;
	#10;
	
	d=0;
	clk=1;
	#10;
	
	d=0;
	clk=0;
	#10;
	
	d=1;
	clk=1;
	#3;
	
	d=0;
	#2;
	
	d=1;
	#5;
	
	d=0;
	clk=0;
	#10;
	
	$finish;
	
	end
      
endmodule

