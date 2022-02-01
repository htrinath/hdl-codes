`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:26:55 02/01/2022
// Design Name:   full_subtractor
// Module Name:   D:/xilinx/HDL Coding/dataflow/project_dataflow/full_subtractor_testbench.v
// Project Name:  project_dataflow
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_subtractor_testbench;

	// Inputs
	reg a;
	reg b;
	reg bin;

	// Outputs
	wire diff;
	wire bout;

	// Instantiate the Unit Under Test (UUT)
	full_subtractor uut (
		.diff(diff), 
		.bout(bout), 
		.a(a), 
		.b(b), 
		.bin(bin)
	);
	
	initial begin
	$monitor($time,"diff=%b,bout=%b,a=%b,b=%b,bin=%b",diff,bout,a,b,bin); //Prints the output in the console log
	
	a=0;
	b=0;
	bin = 0;
	#10;
	
	a=0;
	b=0;
	bin = 1;
	#10;
	
	a=0;
	b=1;
	bin = 0;
	#10;
	
	a=0;
	b=1;
	bin = 1;
	#10;
	
	a=1;
	b=0;
	bin = 0;
	#10;
	
	a=1;
	b=0;
	bin = 1;
	#10;
	
	a=1;
	b=1;
	bin = 0;
	#10;
	
	a=1;
	b=1;
	bin = 1;
	#10;
	
	end
endmodule

