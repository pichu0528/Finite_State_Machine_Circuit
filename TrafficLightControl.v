`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:57 07/20/2015 
// Design Name: 
// Module Name:    TrafficLightControl 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
 module TrafficLightControl(y1y2, clk, reset, state, l1l2
	);
	input	clk, reset;
	input [1:0] l1l2;

	output reg[1:0] state;
	output reg[1:0] y1y2;


	// state encoding
	parameter S0=2'b00, S1=2'b10, S2=2'b01, S3=2'b11;

	// register and logic 
	always @(posedge clk or posedge reset)
	begin
	if (reset == 1'b1)
		state <= S0;
	else
		case (state)
		S0: if ( l1l2 == 2'b00 ) 
				state <= S0;
			 else if( l1l2 == 2'b01 )
				state <= S2;
			 else
				state <= S1;
		S1: state <= S3;
		S2: state <= S0;
		S3: 
			if ( l1l2 == 2'b10 )
				state <= S1;
			else if ( l1l2 == 2'b00 )
				state <= S0;
			else 
				state <= S2;
		default: state <= S0;
		endcase
	end
	

	
	always @(*) begin

	if( state == S1)
		y1y2 <= 2'b10;
	else if( state == S2)
		y1y2 <= 2'b01;
	else
		y1y2 <= 2'b00;
	end
	
endmodule
