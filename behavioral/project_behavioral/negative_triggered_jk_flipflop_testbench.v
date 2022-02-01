`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:57:39 02/01/2022
// Design Name:   negative_edge_jk_flipflop
// Module Name:   D:/xilinx/HDL Coding/behavioral/project_behavioral/negative_triggered_jk_flipflop_testbench.v
// Project Name:  project_behavioral
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: negative_edge_jk_flipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module negative_triggered_jk_flipflop_testbench;

	// Inputs
	reg j;
	reg k;
	reg clk;
	reg rst;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	negative_edge_jk_flipflop uut (
		.q(q), 
		.j(j), 
		.k(k), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
	clk=0;
	forever
	#10 clk=~clk;
	end
	
	initial begin
		j = 0;
		k = 0;
		rst=0;
		#20;
		
		j = 0;
		k = 1;
		#20;
		
		j = 1;
		k = 0;
		#20;
		
		j = 1;
		k = 1;
		#20;
		
		j = 0;
		k = 0;
		rst=1;
		#20;
		
		j = 0;
		k = 1;
		rst=1;
		#20;
		
		j = 1;
		k = 0;
		rst=1;
		#20;
		
		j = 1;
		k = 1;
		rst=1;
		#20;
		$finish;
	end
      
endmodule

