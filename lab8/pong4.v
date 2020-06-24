module pong4 (rsi, lsi, clk, s, q);
	input [1:0] s;
	input lsi, rsi, clk;
	output reg [3:0] q;

	
	
	always @(posedge clk)
		if (s[1] == 0 && s[0] == 1)
			begin
				q[0] = q[1];
				q[1] = q[2];
				q[2] = q[3];
				q[3] = rsi;
			end
		else if (s[1] == 0 && s[0] == 0)
			begin
				q[3] = q[3];
				q[2] = q[2];
				q[1] = q[1];
				q[0] = q[0];
			end
		else if (s[1] == 1 && s[0] == 0)
			begin
				q[3] = q[2];
				q[2] = q[1];
				q[1] = q[0];
				q[0] = lsi;
			end
		else if (s[1] == 1 && s[0] == 1)
			begin
				q[3] = 0;
				q[2] = 0;
				q[1] = 0;
				q[0] = 0;
			end 
endmodule
			
		
	