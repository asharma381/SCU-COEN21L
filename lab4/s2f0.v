module s2f0 (a0, b1, b0, F);
	input a0, b0, b1;
	output F;
	
	assign F = a0 & b1 & b0;
endmodule 