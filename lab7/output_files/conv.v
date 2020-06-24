module conv(A, Z);
	input [2:0] A;
	output [3:0] Z;
	
	assign Z[0] = A[0];
	assign Z[1] = A[1];
	assign Z[2] = A[2];
	assign Z[3] = 1'b0;
endmodule 