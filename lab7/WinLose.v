module WinLose(A, B, S, E, W, L);
	input [2:0] A;
	input [2:0] B;
	input S;
	output reg E, W, L;
	
	always @ (*)
		begin
			if (S == 1'b0) begin
				E = 1'b1;
				W = 1'b0;
				L = 1'b0;
			end else if (S == 1'b1 && A == B) begin
				E = 1'b0;
				W = 1'b1;
				L = 1'b0;
			end else if (S == 1'b1 && A != B) begin
				E = 1'b0;
				W = 1'b0;
				L = 1'b1;
			end
		end

endmodule
			