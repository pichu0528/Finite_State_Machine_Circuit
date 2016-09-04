`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:21:12 07/20/2015
// Design Name:   TrafficLightControl
// Module Name:   C:/Users/Pin Chu/Desktop/laba/CSE 140/Lab3/TrafficLightControlTest.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TrafficLightControl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TrafficLightControlTest;

	// Inputs
	reg clk;
	reg reset;
	reg [1:0] l1l2;

	// Outputs
	wire [1:0] y1y2;
	wire [1:0] state;

	// Instantiate the Unit Under Test (UUT)
	TrafficLightControl uut (
		.y1y2(y1y2),
		.clk(clk), 
		.reset(reset), 
		.state(state), 
		.l1l2(l1l2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
				l1l2 = 2'b00;
		#60		reset = 0;
		l1l2 = 2'b00;
	
		#60	l1l2 = 2'b11;
		
		#60  	l1l2 = 2'b10;
		
		#60   reset = 1;
		
		#60 	l1l2 = 2'b00; 
		      reset = 0;
		#60 	l1l2 = 2'b01;
		
		
		#60 	l1l2 = 2'b11;
		
		#60	$finish;        
		// Add stimulus here

	end
      	
	always begin
		#5
		clk = ~clk; // Toggle clock every 5 ticks
	end

endmodule

