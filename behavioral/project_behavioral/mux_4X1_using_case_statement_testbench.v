`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:36:49 01/31/2022
// Design Name:   mux_4X1_using_case_statement
// Module Name:   D:/xilinx/HDL Coding/behavioral/project_behavioral/mux_4X1_using_case_statement_testbench.v
// Project Name:  project_behavioral
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_4X1_using_case_statement
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_4X1_using_case_statement_testbench;

	// Inputs
	reg [3:0] a;
	reg [1:0] s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux_4X1_using_case_statement uut (
		.y(y), 
		.a(a), 
		.s(s)
	);

	initial begin
		s= 2'b00;
		a=4'b0001;
		#10;
		
		s= 2'b01;
		a=4'b0010;
		#10;
		
		s= 2'b10;
		a=4'b0100;
		#10;
		
		s= 2'b11;
		a=4'b1000;
		#10;
		
		s= 2'b11;
		a=4'b0111;
		#10;
		
		s= 2'b00;
		a=4'b1110;
		#10;
		
		$finish;

	end
      
endmodule

