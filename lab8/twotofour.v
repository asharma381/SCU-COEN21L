module twotofour(x, y);
	input [1:0] x;
	output [3:0] y;
	
	assign y[3] = 0;
	assign y[2] = 0;
	assign y[1] = x[1];
	assign y[0] = x[0];
endmodule 