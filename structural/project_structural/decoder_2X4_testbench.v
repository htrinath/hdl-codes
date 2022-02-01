`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:05:43 01/28/2022
// Design Name:   decoder_2X4
// Module Name:   D:/xilinx/HDL Coding/structural/project_structural/decoder_2X4_testbench.v
// Project Name:  project_structural
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder_2X4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_2X4_testbench;

	// Inputs
	reg a;
	reg b;
	reg en;

	// Outputs
	wire [3:0] o;

	// Instantiate the Unit Under Test (UUT)
	decoder_2X4 uut (
		.o(o), 
		.a(a), 
		.b(b),
		.en(en)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		en=1;
		#10;
		
		a = 0;
		b = 1;
		en=1;
		#10;
		
		a = 1;
		b = 0;
		en=1;
		#10;
		
		a = 1;
		b = 1;
		en=1;
		#10;
		
		a = 1;
		b = 1;
		en=0;
		#10;
		
		$finish;
        
	end
      
endmodule

