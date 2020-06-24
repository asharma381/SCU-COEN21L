module pong12(rsi, lsi, s, clk, q);
	input [1:0] s;
	input rsi, lsi, clk;
	output reg [11:0] q;
	
	always @(posedge clk)
		begin
		case (s)
		2'b00:
		begin
			q[11] <= q[11];
			q[10] <= q[10];
			q[9] <= q[9];
			q[8] <= q[8];
			q[7] <= q[7];
			q[6] <= q[6];
			q[5] <= q[5];
			q[4] <= q[4];
			q[3] <= q[3];
			q[2] <= q[2];
			q[1] <= q[1];
			q[0] <= q[0];
		end
		2'b01:
		begin
			q[11] <= rsi;
			q[10] <= q[11];
			q[9] <= q[10];
			q[8] <= q[9];
			q[7] <= q[8];
			q[6] <= q[7];
			q[5] <= q[6];
			q[4] <= q[5];
			q[3] <= q[4];
			q[2] <= q[3];
			q[1] <= q[2];
			q[0] <= q[1];
		end
		2'b10:
		begin
			q[11] <= q[10];
			q[10] <= q[9];
			q[9] <= q[8];
			q[8] <= q[7];
			q[7] <= q[6];
			q[6] <= q[5];
			q[5] <= q[4];
			q[4] <= q[3];
			q[3] <= q[2];
			q[2] <= q[1];
			q[1] <= q[0];
			q[0] <= lsi;
		end
		2'b11:
		begin
			q[11] <= 0;
			q[10] <= 0;
			q[9] <= 0;
			q[8] <= 0;
			q[7] <= 0;
			q[6] <= 0;
			q[5] <= 0;
			q[4] <= 0;
			q[3] <= 0;
			q[2] <= 0;
			q[1] <= 0;
			q[0] <= 0;
		end
		endcase
		end
endmodule 