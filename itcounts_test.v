`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:39:12 07/21/2015
// Design Name:   itcounts
// Module Name:   C:/Users/pichu/Desktop/CSE140 LAB3/Lab3/itcounts_test.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: itcounts
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module itcounts_test;

	// Inputs
	reg Clock;
	reg Reset;
	reg En;
   reg [1:0]select;
	
	wire out1;
	// Outputs
	wire [1:0] Counter_Out;

	// Instantiate the Unit Under Test (UUT)
	itcounts uut (
		.Clock(Clock), 
		.Reset(Reset), 
		.En(En), 
		.Counter_Out(Counter_Out),
		.out1(out1),
		.select(select)
	);

	initial begin
		// Initialize Inputs
		Clock = 1;
		Reset = 0;
		En = 0;
		select = 2'b00;

      #5		Reset = 1;
		#10	Reset = 0;
		#10	En = 1;
		#100	En = 0;
		
		#10
		select = 2'b01;
      #5		Reset = 1;
		#10	Reset = 0;
		#10	En = 1;
		#100	En = 0;
		
		#10
		select = 2'b10;
      #5		Reset = 1;
		#10	Reset = 0;
		#10	En = 1;
		#100	En = 0;
		
		#10
		select = 2'b11;
      #5		Reset = 1;
		#10	Reset = 0;
		#10	En = 1;
		#100	En = 0;
		
		#5		$finish;
        
		// Add stimulus here
	end
      
	always begin
	#5
	Clock = ~Clock;
	end
endmodule

