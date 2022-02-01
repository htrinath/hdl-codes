`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:48:08 01/31/2022
// Design Name:   decoder_2X4_using_case_statement
// Module Name:   D:/xilinx/HDL Coding/behavioral/project_behavioral/decoder_2X4_using_case_statement_testbench.v
// Project Name:  project_behavioral
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder_2X4_using_case_statement
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_2X4_using_case_statement_testbench;

	// Inputs
	reg [1:0] a;
	reg en;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	decoder_2X4_using_case_statement uut (
		.y(y), 
		.a(a), 
		.en(en)
	);

	initial begin
		a = 2'b11;
		en = 0;
		#10;
		
		a = 2'b00;
		en = 1;
		#10;
		
		a = 2'b01;
		en = 1;
		#10;
		
		a = 2'b10;
		en = 1;
		#10;
		
		a = 2'b11;
		en = 1;
		#10;
		
		$finish;
	end
      
endmodule

