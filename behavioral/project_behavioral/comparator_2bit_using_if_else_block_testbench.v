`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:14:30 01/31/2022
// Design Name:   comparator_2bit_using_if_else_block
// Module Name:   D:/xilinx/HDL Coding/behavioral/project_behavioral/comparator_2bit_using_if_else_block_testbench.v
// Project Name:  project_behavioral
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator_2bit_using_if_else_block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_2bit_using_if_else_block_testbench;

	// Inputs
	reg [1:0] a;
	reg [1:0] b;

	// Outputs
	wire [2:0] y;

	// Instantiate the Unit Under Test (UUT)
	comparator_2bit_using_if_else_block uut (
		.y(y), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		a = 2'b00;
		b = 2'b00;
		#10;
		
		a = 2'b00;
		b = 2'b01;
		#10;
		
		a = 2'b00;
		b = 2'b10;
		#10;
		
		a = 2'b00;
		b = 2'b11;
		#10;
		
		a = 2'b01;
		b = 2'b00;
		#10;
		
		a = 2'b01;
		b = 2'b01;
		#10;
		
		a = 2'b01;
		b = 2'b10;
		#10;
		
		a = 2'b01;
		b = 2'b11;
		#10;
		
		a = 2'b10;
		b = 2'b00;
		#10;
		
		a = 2'b10;
		b = 2'b01;
		#10;
		
		a = 2'b10;
		b = 2'b10;
		#10;
		
		a = 2'b10;
		b = 2'b11;
		#10;
		
		a = 2'b11;
		b = 2'b00;
		#10;
		
		a = 2'b11;
		b = 2'b01;
		#10;
		
		a = 2'b11;
		b = 2'b10;
		#10;
		
		a = 2'b11;
		b = 2'b11;
		#10;
		
		$finish;
	end
      
endmodule

