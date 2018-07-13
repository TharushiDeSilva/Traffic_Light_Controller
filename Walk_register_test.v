`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:29:28 07/12/2018
// Design Name:   Walk_register
// Module Name:   /home/tharushi/Programs/HDL/Traffic_Light_Controller/Walk_register_test.v
// Project Name:  Traffic_Light_Controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Walk_register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Walk_register_test;

	// Inputs
	reg clock;
	reg reset_sync;
	reg wr_sync;
	reg wr_reset;

	// Outputs
	wire wr;

	// Instantiate the Unit Under Test (UUT)
	Walk_register uut (
		.clock(clock), 
		.reset_sync(reset_sync), 
		.wr_sync(wr_sync), 
		.wr_reset(wr_reset), 
		.wr(wr)
	);
	initial begin
		forever #10 clock = ~clock;
	end
	initial begin
		// Initialize Inputs
		clock = 0;
		reset_sync = 0;
		wr_sync = 0;
		wr_reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#50;
		wr_sync = 1;
		#50;
		reset_sync = 1;
		#100;
		wr_sync = 0;
		reset_sync = 0;
		#50;
		wr_sync = 1;
		#50
		wr_reset = 1;
	end
      
endmodule

