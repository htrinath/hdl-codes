`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:19:30 02/01/2022
// Design Name:   positive_triggered_t_flipflop
// Module Name:   D:/xilinx/HDL Coding/behavioral/project_behavioral/positive_triggered_t_flipflop_testbench.v
// Project Name:  project_behavioral
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: positive_triggered_t_flipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module positive_triggered_t_flipflop_testbench;

	// Inputs
	reg t;
	reg clk;
	reg rst;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	positive_triggered_t_flipflop uut (
		.q(q), 
		.t(t), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		clk=0;
		forever
		#5 clk=~clk;
	end
	
	initial begin
	t=0;
	forever 
	#3 t=~t;
	end
	
	initial begin
	rst=0;
	#50 rst=1;
	#100 rst=0;
	end
	
	initial begin
	#200 $finish;
	end
	
endmodule

