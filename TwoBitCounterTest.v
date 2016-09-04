`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:32:25 07/20/2015
// Design Name:   TwoBitCounter
// Module Name:   C:/Users/Pin Chu/Desktop/laba/CSE 140/Lab3/TwoBitCounterTest.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TwoBitCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TwoBitCounterTest;

	// Inputs
	reg Clock;
	reg Reset;
	//reg En;

	// Outputs
	wire [1:0] Counter_Out;

	// Instantiate the Unit Under Test (UUT)
	TwoBitCounter uut (
		.Clock(Clock), 
		.Reset(Reset), 
		.En(En), 
		.Counter_Out(Counter_Out)
	);

	initial begin
		// Initialize Inputs
		Clock = 0;
		Reset = 0;
		//En = 0;

		#5		Reset = 1;
		#10	Reset = 0;
		//#10	En = 1;
		//#100	En = 0;
		#5		$finish;
	end
	
	always begin
		#5
		Clock = ~Clock; // Toggle clock every 5 ticks
	end

endmodule

