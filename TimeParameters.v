`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:56:26 07/12/2018 
// Design Name: 
// Module Name:    TimeParameters 
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
module TimeParameters(clock, reset_sync, prog_sync, interval, time_param_selector, time_value, value);
	input clock;
	input reset_sync;
	input prog_sync;
	input[1:0] time_param_selector;
	input[3:0] time_value;
	input[1:0] interval;
	output[3:0] value;
	reg[3:0] value;
	
	parameter ID_base = 2'b00;
	parameter ID_extended = 2'b01;
	parameter ID_yellow = 2'b10;
	
	parameter default_val_base = 4'd6;
	parameter default_val_extended = 4'd3;
	parameter default_val_yellow = 4'd2;
	
	(* KEEP = "TRUE" *)reg[3:0] value_base = default_val_base;
	(* KEEP = "TRUE" *)reg[3:0] value_extended = default_val_extended;
	(* KEEP = "TRUE" *)reg[3:0] value_yellow = default_val_yellow;
	
	always @(posedge clock)
		begin
			if(reset_sync)
				begin
					value_base=default_val_base;
					value_extended = default_val_extended;
					value_yellow = default_val_yellow;
				end
			else if(prog_sync)
				begin
					case(time_param_selector)
						ID_base:
							if(time_value == 4'd0)
								value_base = default_val_base;
							else
								value_base = time_value;
						
						ID_extended:
							if(time_value == 4'd0)
								value_extended = default_val_extended;
							else
								value_extended = time_value;
						
						ID_yellow:
							if(time_value == 4'd0)
								value_yellow = default_val_yellow;
							else
								value_yellow = time_value;
						
						default: //the default case 
							begin
								value_base = default_val_base;
								value_extended = default_val_extended;
								value_yellow = default_val_yellow;
							end
					endcase
				end
			
			else
				begin
					case(interval)
						ID_base:
							value <= value_base;
						ID_extended:
							value <= value_extended;
						ID_yellow:
							value <= value_yellow;
						
						default: //the default case for the situation
							value <= 4'd15;
					endcase
				end
		end
endmodule
