module myfulladd (A, B, Cin, Cout, Sout);
	input A, B, Cin;
	output Cout, Sout;
	wire w1, w2, w3;

	assign w1 = A ^ B;
	assign w2 = w1 & Cin;
	assign w3 = A & B;

	assign Sout = w1 ^ Cin;
	assign Cout = w2 | w3;
endmodule