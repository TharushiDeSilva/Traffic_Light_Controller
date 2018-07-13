`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:38:43 07/12/2018
// Design Name:   Timer
// Module Name:   /home/tharushi/Programs/HDL/Traffic_Light_Controller/Timer_test.v
// Project Name:  Traffic_Light_Controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Timer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Timer_test;

	// Inputs
	reg clock;
	reg reset_sync;
	reg enable;
	reg [3:0] value;
	reg start_timer;

	// Outputs
	wire expired;
	wire divider_reset;

	// Instantiate the Unit Under Test (UUT)
	Timer uut (
		.clock(clock), 
		.reset_sync(reset_sync), 
		.enable(enable), 
		.value(value), 
		.start_timer(start_timer), 
		.expired(expired), 
		.divider_reset(divider_reset)
	);
	initial begin
		#80
		forever #10 clock = ~clock;
	end
	initial begin
		#100
		forever begin
			#40 enable = ~enable;
			#20 enable = ~enable;
		end
	end
	initial begin
		// Initialize Inputs
		clock = 0;
		reset_sync = 0;
		enable = 0;
		value = 0;
		start_timer = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		value = 4'd2;
		start_timer = 1;
		
		#20
		start_timer = 0;
		
		#140
		value = 4'd6;
		start_timer = 1;

		#20
		start_timer = 0;
		
		#440
		value = 4'd3;
		start_timer = 1;
		
		#20 
		start_timer = 0;
	end
      
endmodule

