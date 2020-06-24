module var_clock(mclock50, sp, vclk);
	input mclock50;
	input [2:0] sp;
	output reg vclk;
	wire [26:0] q;
	
	counter27 c27(mclock50, 1, 0, q);
	always @(posedge mclock50)
	case (sp)
	3'b000: vclk = q[26];
	3'b001: vclk = q[25];
	3'b010: vclk = q[24];
	3'b011: vclk = q[23];
	3'b100: vclk = q[22];
	3'b101: vclk = q[21];
	3'b110: vclk = q[20];
	3'b111: vclk = q[19];
	endcase
endmodule
				
	