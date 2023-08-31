`timescale 1ns / 1ps

module program_counter(input clk, input rst, input [31:0] pc, output reg [31:0] next_pc);

always @(posedge clk or posedge rst) begin
		//if(rst) next_pc <= 0;
      //else next_pc <= pc;
		if(rst) next_pc <= 0;
      else if(pc >= 32'd2000)next_pc <= 32'd2000;
		else next_pc <= pc;
end

endmodule