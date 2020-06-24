module pong_controller1(clk, qleft, ireset, irsrv, s, lsi, a, b, c, d);
	input clk, qleft, ireset, irsrv;
	output reg [1:0] s;
	output reg lsi, a, b, c, d;
	
	reg [3:0] currentstate, nextstate;
	parameter [3:0] sidle = 4'b0001, srsrv = 4'b0010, smovl = 4'b0100, sendl = 4'b1000;
	always @(posedge clk)
		currentstate = nextstate;
	always @(*)
		case(currentstate)
		4'b0001: begin
			lsi = 0;
			s[1] = 1;
			s[0] = 1;
			if (irsrv == 1) nextstate = srsrv;
			else nextstate = sidle;
		end
		4'b0010: begin
			lsi = 1;
			s[1] = 1;
			s[0] = 0;
			if (ireset == 1) nextstate = sidle;
			else nextstate = smovl;
		end
		4'b0100: begin
			lsi = 0;
			s[1] = 1;
			s[0] = 0;
			if (ireset == 1) nextstate = sidle;
			else if(qleft == 1) nextstate = sendl;
			else nextstate = smovl;
		end
		4'b1000: begin
			lsi = 0;
			s[1] = 0;
			s[0] = 0;
			nextstate = sidle;
		end
	endcase
	always @(*)
		if (currentstate == sidle)begin
			a = 1;
			b = 0;
			c = 0;
			d = 0;
			end
		else if (currentstate == srsrv)begin
			a = 0;
			b = 1;
			c = 0;
			d = 0;
			end
		else if (currentstate == smovl)begin
			a = 0;
			b = 0;
			c = 1;
			d = 0;
			end
		else if (currentstate == sendl)begin
			a = 0;
			b = 0;
			c = 0;
			d = 1;
			end
endmodule 
		
	