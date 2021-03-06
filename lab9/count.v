module count(clk, en, reset, out);
	input clk, en, reset;
	output reg [3:0] out;
	reg [3:0] nextC;
	
	always @(posedge clk)
		if (en == 1)
			out = out + 1;
		else if (reset == 1)
			out = 0;
		else if (en == 0)
			out = out;
	
endmodule 