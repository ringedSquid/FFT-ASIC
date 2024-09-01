module MULT (
	input wire [15:0] a,
	input wire [15:0] b,
	output reg [15:0] c
);
	assign c = a*b;
endmodule
