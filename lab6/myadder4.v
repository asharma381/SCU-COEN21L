module myadder4 (X, Y, c0, S, v, c4);
	input [3:0] X;
	input [3:0] Y;
	input c0;
	output [3:0] S;
	output v, c4;
	wire w1,w2,w3;
	
	myfulladd u1(X[0], Y[0], c0, w1, S[0]);
	myfulladd u2(X[1], Y[1], w1, w2, S[1]);
	myfulladd u3(X[2], Y[2], w2, w3, S[2]);
	myfulladd u4(X[3], Y[3], w3, c4, S[3]);
	

	assign v = c4 ^ w3;
endmodule
	