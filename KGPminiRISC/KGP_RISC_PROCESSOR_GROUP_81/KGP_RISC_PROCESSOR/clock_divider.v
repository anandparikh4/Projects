`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Verilog Assignment 2
// Group 81
// Anand Manojkumar Parikh (20CS10007)
// Soni Aditya Bharatbhai (20CS10060)
// Clock divider slows down the clock so that the output is perceivable to the human eye
//////////////////////////////////////////////////////////////////////////////////

module clock_divider(input clk_in , output reg clk_out);

parameter max_cnt = 25;		// slows dowm by 500

reg [31:0] curr_cnt;

initial
begin
curr_cnt <= 32'd0;
clk_out <= 0;
end

always @(posedge clk_in)
begin

if(curr_cnt == max_cnt-1)
begin
curr_cnt <= 32'd0;
clk_out <= ~clk_out;
end

else
curr_cnt <= curr_cnt+1;

end

endmodule
