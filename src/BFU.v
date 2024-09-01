module BFU (
	input wire [15:0] a_r_in,
	input wire [15:0] a_i_in,
	input wire [15:0] b_r_in,
	input wire [15:0] b_i_in,
	input wire [15:0] cos_k,
	input wire [15:0] isin_k,
	output reg [15:0] a_r_out,
	output reg [15:0] a_i_out,
	output reg [15:0] b_r_out,
	output reg [15:0] b_i_out,

	input wire clk
);
	reg [2:0] state;
	reg [15:0] wb_r;
	reg [15:0] wb_i;

	always @(posedge clk) begin
		if (state == 3'b001) begin

		end


	end

	
	
endmodule
