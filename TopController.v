`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:57:03 07/12/2018 
// Design Name: 
// Module Name:    TopController 
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
module TopController(clock, reset, sensor, walk_request, reprogram, time_param_selector, time_value, Rm, Ym, Gm, Rs, Ys, Gs, W, st_state, expired_state, enable_state, time_val);
	input clock;
	input reset;
	input sensor;
	input walk_request;
	input reprogram;
	input[1:0] time_param_selector;
	input[3:0] time_value;
	output Rm;
	output Ym;
	output Gm;
	output Rs;
	output Ys;
	output Gs;
	output W;
	
	//this section is to output test values--------------
	output st_state, expired_state, enable_state;
	reg st_state, expired_state, enable_state;
	output[3:0] time_val;
	reg[3:0] time_val;
	//---------------------------------------------------
	wire reset_sync;
	wire sensor_sync;
	wire prog_sync;
	wire wr_sync;
	wire wr_reset;
	wire wr;
	wire[1:0] interval;
	wire[3:0] value;
	wire divider_reset;
	wire enable_1Hz;
	wire start_timer;
	wire expired;
	wire[6:0] lights;
	
	always @(posedge clock)
		begin								//this block is for testing 
			time_val <= value;
			st_state <= start_timer;
			expired_state <= expired;
			enable_state <= enable_1Hz; // end
		end
	
	Synchronizer syncronizer1(	.clock(clock), 
										.reset(reset), 
										.sensor(sensor), 
										.walk_request(walk_request), 
										.reprogram(reprogram), 
										.reset_sync(reset_sync), 
										.sensor_sync(sensor_sync), 
										.wr_sync(wr_sync), 
										.prog_sync(prog_sync));
	
	Walk_register walk_register1(	.clock(clock), 
											.reset_sync(reset_sync), 
											.wr_sync(wr_sync), 
											.wr_reset(wr_reset), 
											.wr(wr));
	
	TimeParameters timeParameters1(	.clock(clock), 
												.reset_sync(reset_sync), 
												.prog_sync(prog_sync), 
												.interval(interval), 
												.time_param_selector(time_param_selector), 
												.time_value(time_value), 
												.value(value));
												
	Divider divider1(	.clock(clock), 
							.timer_reset(divider_reset), 
							.enable(enable_1Hz));
							
	Timer timer1(	.clock(clock), 
						.reset_sync(reset_sync), 
						.enable(enable_1Hz), 
						.value(value), 
						.start_timer(start_timer), 
						.expired(expired), 
						.divider_reset(divider_reset));
						
	FSM fsm1(	.clock(clock), 
					.reset_sync(reset_sync), 
					.sensor_sync(sensor_sync), 
					.wr(wr), 
					.prog_sync(prog_sync), 
					.expired(expired), 
					.wr_reset(wr_reset), 
					.interval(interval), 
					.start_timer(start_timer), 
					.lights(lights));
	
	LEDs leds1(	.lights(lights), 
					.Rm(Rm), 
					.Ym(Ym), 
					.Gm(Gm), 
					.Rs(Rs), 
					.Ys(Ys), 
					.Gs(Gs), 
					.W(W));

endmodule
