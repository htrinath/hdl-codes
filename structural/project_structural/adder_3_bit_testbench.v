`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:24:33 01/28/2022
// Design Name:   adder_3_bit
// Module Name:   D:/xilinx/HDL Coding/structural/project_structural/adder_3_bit_testbench.v
// Project Name:  project_structural
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_3_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_3_bit_testbench;

	// Inputs
	reg [2:0]a ;
	reg [2:0]b ;
	reg cin;

	// Outputs
	wire [2:0]s ;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	adder_3_bit uut (
		.s(s), 
		.cout(cout), 
		.a(a), 
		.b(b), 
		.cin(cin)
	);

	initial begin
		// Initialize Inputs
		a = 3'b000;
		b = 3'b000;
		cin = 1;
		#10;
		
		a = 3'b001;
		b = 3'b001;
		cin = 1;
		#10;
		
		a = 3'b010;
		b = 3'b010;
		cin = 1;
		#10;
		
		a = 3'b100;
		b = 3'b100;
		cin = 1;
		#10;
		
		a = 3'b010;
		b = 3'b101;
		cin = 0;
		#10;
		
		a = 3'b101;
		b = 3'b010;
		cin = 1;
		#10;
		
		a = 3'b111;
		b = 3'b111;
		cin = 1;
		#10;
		
		$finish;
		
	end
      
endmodule

