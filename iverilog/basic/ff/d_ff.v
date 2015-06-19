module d_ff (
	d,
	clk,
	reset,
	q
);

	input d;
	input clk;
	input reset;
	output q;
	reg q;
	always @(posedge clk) begin
		if (reset) begin
			q <= 1'b0;
		end
		else begin
			q <= d;
		end
	end
endmodule
