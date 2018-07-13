`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:43:23 07/12/2018
// Design Name:   FSM
// Module Name:   /home/tharushi/Programs/HDL/Traffic_Light_Controller/FSM_test.v
// Project Name:  Traffic_Light_Controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FSM_test;

	// Inputs
	reg clock;
	reg reset_sync;
	reg sensor_sync;
	reg wr;
	reg prog_sync;
	reg expired;

	// Outputs
	wire wr_reset;
	wire [1:0] interval;
	wire start_timer;
	wire [6:0] lights;

	// Instantiate the Unit Under Test (UUT)
	FSM uut (
		.clock(clock), 
		.reset_sync(reset_sync), 
		.sensor_sync(sensor_sync), 
		.wr(wr), 
		.prog_sync(prog_sync), 
		.expired(expired), 
		.wr_reset(wr_reset), 
		.interval(interval), 
		.start_timer(start_timer), 
		.lights(lights)
	);
	
	initial begin
		forever #10 clock = ~clock;
	end
	initial begin
		forever begin
			#80 expired = 1;
			#20 expired = 0;
		end
	end
	initial begin
		// Initialize Inputs
		clock = 0;
		reset_sync = 1;
		sensor_sync = 0;
		wr = 0;
		prog_sync = 0;
		expired = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset_sync = 0;
		#220 wr = 1;
		#100 wr = 0;	
		#120 sensor_sync = 1;
		#100 sensor_sync = 0;
		#200 sensor_sync = 1;
		#100 sensor_sync = 0;
		#100 prog_sync = 1;
		#100 prog_sync = 0;
	end
      
endmodule

