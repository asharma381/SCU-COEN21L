module s1f1(a1, a0, b1, F);
	input a1, a0, b1;
	output F;
	
	assign F = a1^a0^b1;
endmodule