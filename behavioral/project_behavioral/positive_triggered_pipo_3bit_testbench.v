`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:24:23 02/01/2022
// Design Name:   positive_triggered_pipo
// Module Name:   D:/xilinx/HDL Coding/behavioral/project_behavioral/positive_triggered_pipo_3bit_testbench.v
// Project Name:  project_behavioral
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: positive_triggered_pipo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module positive_triggered_pipo_3bit_testbench;

	// Inputs
	reg [2:0] d;
	reg clk;
	reg rst;

	// Outputs
	wire [2:0] q;

	// Instantiate the Unit Under Test (UUT)
	positive_triggered_pipo uut (
		.q(q), 
		.d(d), 
		.clk(clk), 
		.rst(rst)
	);
	
	initial begin
	clk=0;
	forever
	#5 clk=~clk;
	end

	initial begin
		d = 3'b000;
		rst = 1;
		#12;
		d = 3'b001;
		rst = 1;
		#12;
		d = 3'b010;
		rst = 1;
		#12;
		d = 3'b011;
		rst = 1;
		#12;
		d = 3'b100;
		rst = 1;
		#12;
		d = 3'b101;
		rst = 1;
		#12;
		d = 3'b110;
		rst = 1;
		#12;
		d = 3'b111;
		rst = 1;
		#12;
		
		rst=0;
		#20;
		$finish;

	end
      
endmodule

