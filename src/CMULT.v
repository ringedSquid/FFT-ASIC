module CMULT (
	input wire [15:0] a_i,
	input wire [15:0] a_r,
	input wire [15:0] b_i,
	input wire [15:0] b_r,
	output reg [15:0] c_i,
	output reg [15:0] c_r,

	input wire enable,
	input wire clk,
	output reg ready
);
	reg [4:0] state;
	always @(posedge clk) begin
		if ((state == 4'b0000) && (enable && ready)) begin
			ready <= 1'b0;
			state <= 4'b0001;
		end
		if (state == 4'b0001) begin
			c_r <= a_r*b_r;
			state <= 4'b0010;
		end
		if (state == 4'b0010) begin
			c_r <= c_r - a_i*b_i;
			state <=
		if (state == 4'b1111) begin
			ready <= 1'b1;
		end



endmodule
