`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:56:43 07/12/2018 
// Design Name: 
// Module Name:    Timer 
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
module Timer(clock, reset_sync, enable, value, start_timer, expired, divider_reset);
	input clock;
	input reset_sync;
	input enable;
	input start_timer;
	input[3:0] value;
	output expired;
	output divider_reset;
	reg expired; 			//true/false value
	reg divider_reset; 	//true/false value
	
	reg[3:0] seconds_to_expire;	//this register keeps a countdown
	
	always @(posedge clock)
		begin
			expired <=0; //time is not expired
			divider_reset <= 0; // false (don't have to reset)
			
			if(reset_sync) //if system reset command is true
				begin
					divider_reset <= 1;
					expired <= 0;
					seconds_to_expire <= 0;
				end
			else if(start_timer) //start timer by FSM.
				begin
					divider_reset <= 1;
					seconds_to_expire <= value;
				end
			else if(enable)
				begin
					if(seconds_to_expire == 4'd1)
						expired <= 1;
					else
						expired <= 0;
					seconds_to_expire <= seconds_to_expire - 1;
				end
			
		end

endmodule
