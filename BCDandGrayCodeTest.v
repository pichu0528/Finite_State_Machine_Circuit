`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:24:36 07/20/2015
// Design Name:   BCDandGrayCode
// Module Name:   C:/Users/Pin Chu/Desktop/laba/CSE 140/Lab3/BCDandGrayCodeTest.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCDandGrayCode
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCDandGrayCodeTest;

	// Inputs
	reg control;
	reg clk;
	reg reset;

	// Outputs
	wire out_flag;
	wire [2:0] counter;

	// Instantiate the Unit Under Test (UUT)
	BCDandGrayCode uut (
		.control(control), 
		.out_flag(out_flag), 
		.counter(counter), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		control = 0;
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#10	reset = 0;
		#100	control = 1;
		#100	$finish;
        
		// Add stimulus here

	end
            	
	always begin
		#5
		clk = ~clk; // Toggle clock every 5 ticks
	end
endmodule

