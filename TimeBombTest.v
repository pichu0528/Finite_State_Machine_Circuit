`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:00:37 07/20/2015
// Design Name:   TimeBomb
// Module Name:   C:/Users/Pin Chu/Desktop/laba/CSE 140/Lab3/TimeBombTest.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TimeBomb
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TimeBombTest;

	// Inputs
	reg Clock;
	reg Reset;
	reg Start;
	reg Stop;

	// Outputs
	wire [3:0] Counter_Out;
	wire blow_up;

	// Instantiate the Unit Under Test (UUT)
	TimeBomb uut (
		.Clock(Clock), 
		.Reset(Reset), 
		.Start(Start), 
		.Stop(Stop), 
		.Counter_Out(Counter_Out), 
		.blow_up(blow_up)
		);
	
		initial begin
		// Initialize Inputs
		Clock = 1;
		Reset = 0;
		Start = 0;
		Stop = 0;
		#5
		Reset = 1;

		#10
		Reset = 0;

		#10
		Start = 1;
		#100
		Reset = 1;

		#20
		Stop = 1;
		Reset = 0;

		$finish;
		end

		always begin
		#5
		Clock = ~Clock; // Toggle clock every 5 ticks
		end
	
endmodule

