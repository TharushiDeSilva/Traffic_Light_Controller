`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:55:20 07/12/2018 
// Design Name: 
// Module Name:    FSM 
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
module FSM(clock, reset_sync, sensor_sync, wr, prog_sync, expired, wr_reset, interval, start_timer, lights);
	input clock;
	input reset_sync;
	input sensor_sync;
	input wr;
	input prog_sync;
	input expired;
	output wr_reset;
	output[1:0] interval;
	output start_timer;
	output[6:0] lights;
	reg wr_reset;
	reg[1:0] interval = 2'b00; //the ID of the time selector is indicated. starting from base time.  
	reg start_timer;
	reg[6:0] lights = 7'b0011000; //each bit represents Rm,Ym,Gm, Rs,Gs,Ys, W. starting state is indecated here
	
	reg[2:0] state = 3'd0; //indicates the current state of the system. starting with state 0
	
	//the 8 states of the system
	parameter ms_green_initial = 0;		//the starting state by turning the green lights on
	parameter ms_green_no_traffic = 1;	//main street is green without traffic in side street
	parameter ms_green_traffic = 2;		//main street is green with traffic in the side street
	parameter ms_yellow = 3;				//main street is yellow
	parameter walk_lamp = 4;				//pedestrians cross the road
	parameter ss_green_initial = 5;		//side street is initially green
	parameter ss_green_traffic = 6;		//side street is green with side street traffic
	parameter ss_yellow = 7;				//side street is yellow
	
	
	parameter ID_base = 2'b00;				//the base interval 
	parameter ID_extended = 2'b01;
	parameter ID_yellow = 2'b10;
	
	always @(posedge clock)
		begin
			start_timer =0;
			wr_reset = 0;
			
			if(reset_sync || prog_sync)	//if there is a system reset or reprogramming request
				begin
					start_timer = 1;
					interval <= ID_base;
					state <= ms_green_initial;
				end
			else if(~expired)					//in normal operation and timer not expired
				begin
					case(state)
						ms_green_initial, ms_green_no_traffic, ms_green_traffic: //main street is green in any state
							lights <= 7'b0011000;    //the state of the lights 
						ms_yellow:  			//if main street is yellow
							lights <= 7'b0101000;
						walk_lamp:				//if pedestrains crossing the road
							lights <= 7'b1001001;
						ss_green_initial, ss_green_traffic:		//side street is green in any state
							lights <= 7'b1000010;
						ss_yellow:				//if the side street is yellow
							lights <= 7'b1000100;
					endcase
				end
			else                      //if expired in normal opearation  
				begin
					start_timer =1; //send this signal to timer
					case(state)
						ms_green_initial:
							begin
								if(sensor_sync) //if there's traffic in the side street
									begin
										interval <= ID_extended;  //change the remaining time to 3 seconds
										state <= ms_green_traffic;
									end
								else		//if no traffic sensored in the side street
									begin
										interval <= ID_base;
										state <= ms_green_no_traffic;
									end
							end
						ms_green_no_traffic, ms_green_traffic:
							begin
								interval <= ID_yellow;
								state <= ms_yellow;
							end
						ms_yellow:					
							begin
								if(wr)		//if pedestrail cross request in
									begin
										$display("Walk button pushed!");
										interval <= ID_extended;
										state <= walk_lamp;
									end
								else			//if no pending street crosings
									begin
										interval <= ID_base;
										state <= ss_green_initial;
									end
							end
						walk_lamp:		//the state where pedestrians cross the road
							begin
								interval <= ID_base;
								state <= ms_green_initial;
								wr_reset = 1;
							end
						ss_green_initial:
							begin
								if(sensor_sync)    //if there's still traffic on the side street
									begin
										interval <= ID_extended;
										state <= ss_green_traffic;
									end
								else						//if there's no traffic in the side street
									begin
										interval <= ID_yellow;
										state <= ss_yellow;
									end
							end
						ss_green_traffic:			//expired after side being green for extended time
							begin
								interval <= ID_yellow;
								state <= ss_yellow;
							end
						ss_yellow:
							begin
								interval <= ID_base;
								state <= ms_green_initial;
							end
					endcase
				end
		
		end
	
endmodule
