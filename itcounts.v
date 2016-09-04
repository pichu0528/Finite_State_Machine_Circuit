`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:38:15 07/21/2015 
// Design Name: 
// Module Name:    itcounts 
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
module itcounts(
    input Clock,
    input Reset,
    input En,
	 input [1:0]select,
    output reg [1:0] Counter_Out,
	 output reg out1
    );
	 
	 always @ (posedge Clock)
	 begin : CounterBlock // Block Name
		if (Reset == 1'b1) 
		begin
			Counter_Out = 2'b00;
			out1 = 1'b1;
		end
		else if (En == 1'b1) 
		begin
			Counter_Out = Counter_Out + 1;
			if(Counter_Out == 2'b00)
			begin
			  out1 = 1'b1;
			end
		end
		
		///////
		if (select == 2'b00 && Counter_Out == 2'b01) 
		  begin
			out1 = 1'b0;
		  end

		else if (select == 2'b01 && Counter_Out == 2'b10) 
		  begin
			out1 = 1'b0;
		  end
		
		else if (select == 2'b10 && Counter_Out == 2'b11) 
		  begin
			out1 = 1'b0;
		  end
		///////
	 end
endmodule
