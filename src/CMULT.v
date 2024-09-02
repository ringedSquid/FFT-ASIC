module CMULT (
	input wire [31:0] a_i,
	input wire [31:0] a_r,
	input wire [31:0] b_i,
	input wire [31:0] b_r,
	output reg [31:0] c_i,
	output reg [31:0] c_r
);
	//Fixed point 2^-20 scaling factor	
	assign c_r = ((a_r * b_r) << 20) + (~((a_i*b_i) << 20) + 1);
	assign c_i = ((a_i * b_r) << 20) + ((a_r * b_i) << 20);

endmodule
