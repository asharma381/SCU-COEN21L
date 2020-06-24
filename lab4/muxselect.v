module muxselect(A, B, s, F);
	input A, B, s;
	output F;
	
	assign F = (~s&A)|(s&B);
endmodule 