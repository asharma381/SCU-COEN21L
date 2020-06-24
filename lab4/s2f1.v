module s2f1(a0, b0, b1, F);
	input a0, b0, b1;
	output F;
	
	assign F = b1 | (a0 & b0);
endmodule 