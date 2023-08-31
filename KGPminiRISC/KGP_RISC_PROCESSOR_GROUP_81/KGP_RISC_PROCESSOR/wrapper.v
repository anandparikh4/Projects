`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:08:15 11/09/2022 
// Design Name: 
// Module Name:    wrapper 
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
module wrapper(input clk, input rst, input hld, input [10:0]addr, output [15:0] out);

wire [31:0] out_top;

wire clk_div;

assign out = (hld)? out_top[15:0] : 16'd0;

top TOP(.clk(clk_div), .rst(rst),.hld(hld),.addr_fpga(addr),.out_top(out_top));

clock_divider CLK_DIV(.clk_in(clk) , .clk_out(clk_div));

endmodule
