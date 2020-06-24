module myALU4(A, B, P, C0, C4, Z, V, R);
	input [3:0] A;
	input [3:0] B;
	input [3:0] P;
	input C0;
	reg[3:0] w;
	reg w0;
	
	output C4, Z, V;
	output [3:0] R;
	
	always @(P[2:0])
		case (P[2:0])
			3'b001: begin
				w0 = 1'b1;
				w = B;
			end
			3'b010: begin
				w = ~B;
				w0 = C0;
			end
			3'b011: begin
				w = ~B; 
				w0 = 1'b1;
			end
			3'b100: begin
				w = 4'b000;
				w0 = C0;
			end
			3'b101: begin
				w0 = 1'b1;
				w = 4'b000;
			end
			3'b110: begin
				w = 4'b1111;
				w0 = C0;
			end
			3'b111: begin
				w = 4'b0000;
				w0 = C0;
			end
			default: begin
				w = B;
				w0 = C0;
			end
		endcase
	
	myadder4 u1(A, w, w0, R, Z, C4);
		

	assign V = ~(R[3]|R[2]|R[1]|R[0]);
	
	
endmodule 