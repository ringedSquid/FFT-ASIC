`include "CMULT.v"

module BFU (
	input wire [31:0] a_r_in,
	input wire [31:0] a_i_in,
	input wire [31:0] b_r_in,
	input wire [31:0] b_i_in,
	input wire [31:0] cos_k,
	input wire [31:0] isin_k,
	output wire [31:0] a_r_out,
	output wire [31:0] a_i_out,
	output wire [31:0] b_r_out,
	output wire [31:0] b_i_out,
);
	
	wire [31:0] wb_r;
	wire [31:0] wb_i;

	CMULT cmult (
		.a_r(b_r_in),
		.a_i(b_i_in),
		.b_r(cos_k),
		.b_i(isin_k),
		.c_r(wb_r),
		.c_i(wb_i)
	);

	assign a_r_out = a_r_in + wb_r;
	assign a_i_out = a_i_in + wb_i;
	assign a_r_out = a_r_in + ~(wb_r + 1'b1);
	assign a_i_out = a_i_in + ~(wb_i + 1'b1);
	
endmodule
