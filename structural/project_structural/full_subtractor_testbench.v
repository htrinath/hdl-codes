`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:39:34 02/01/2022
// Design Name:   full_subtractor
// Module Name:   D:/xilinx/HDL Coding/structural/project_structural/full_subtractor_testbench.v
// Project Name:  project_structural
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

	reg a,b,bin;

	// Outputs
	wire diff,bout;

	// Instantiate the Unit Under Test (UUT)
	full_subtractor uut (diff,bout,a,b,bin);

	initial begin
		a=0;b=0;bin=0;#10;
		a=0;b=0;bin=1;#10;
		a=0;b=1;bin=0;#10;
		a=0;b=1;bin=1;#10;
		a=1;b=0;bin=0;#10;
		a=1;b=0;bin=1;#10;
		a=1;b=1;bin=0;#10;
		a=1;b=1;bin=1;#10;

	end
      
endmodule

