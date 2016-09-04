`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:38:41 07/20/2015 
// Design Name: 
// Module Name:    TimeBomb 
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
module TimeBomb(
    input Clock, input Reset, input Start, input Stop,
    output reg[3:0] Counter_Out, output reg blow_up
    );
		
		always @ (posedge Clock)
		begin: CounterBlock
			if(blow_up == 1'b1)
				blow_up = 1'b0;
			if(Counter_Out == 4'b0000) begin
				blow_up = 1'b1;
				end
			if(Reset == 1'b1)begin
				Counter_Out = 4'b1111;
				blow_up = 1'b0;
				end
			else if(Stop == 1'b1)begin 
				Counter_Out = Counter_Out;
				end
			else if(Start == 1'b1) begin
				Counter_Out = Counter_Out - 1;
				end
		end

endmodule
