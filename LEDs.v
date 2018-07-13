`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:55:36 07/12/2018 
// Design Name: 
// Module Name:    LEDs 
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
module LEDs(lights, Rm, Ym, Gm, Rs, Ys, Gs, W);
	input[6:0] lights;
	output Rm;
	output Ym;
	output Gm;
	output Rs;
	output Ys;
	output Gs;
	output W;
	reg Rm;
	reg Ym;
	reg Gm;
	reg Rs;
	reg Ys;
	reg Gs;
	reg W;
	
	always @(lights)
		begin
			Rm <= lights[6:6];
			Ym <= lights[5:5];
			Gm <= lights[4:4];
			Rs <= lights[3:3];
			Ys <= lights[2:2];
			Gs <= lights[1:1];
			W <= lights[0:0];
		end

endmodule

