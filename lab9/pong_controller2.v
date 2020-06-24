module pong_controller2(qleft, qright, ireset, irsrv, ilsrv, irpad, ilpad, clk, s, lct, rct, lsi, rsi, curS);
	input qleft, qright, ireset, irsrv, ilsrv, irpad, ilpad, clk;
	output reg lsi, rsi;
	output reg lct, rct;
	output reg [1:0] s;
	reg [3:0] nextS;
	output reg [3:0]curS;
	parameter [3:0] sidle=4'b0000, srsrv=4'b0001, slsrv=4'b0010, srmovl=4'b0011, slmovl=4'b0100, slmisl=4'b0101, srmisl=4'b0110, sendl=4'b0111, sendr=4'b1000;

	always @(*)
		begin
		case (curS)
		sidle:
		begin
			lct = 0;
			rct = 0;
			lsi = 0;
			rsi = 0;
			s[1] = 1;
			s[0] = 1;
			if (irsrv == 0) nextS <= srsrv;
			else if (ilsrv == 0) nextS <= slsrv;
			else nextS <= sidle;
		end
		srsrv:
		begin
			lct = 0;
			rct = 0;
			lsi = 1;
			rsi = 0;
			s[1] = 1;
			s[0] = 0;
			if (ireset == 1) nextS <= sidle;
			else nextS <= slmovl;
		end
		slsrv:
		begin
			lct = 0;
			rct = 0;
			lsi = 0;
			rsi = 1;
			s[1] = 0;
			s[0] = 1;
			if (ireset == 1) nextS <= sidle;
			else nextS <= srmovl;
		end
		slmovl:
		begin
			lct = 0;
			rct = 0;
			lsi = 0;
			rsi = 0;
			s[1] = 1;
			s[0] = 0;
			if (ireset == 1) nextS <= sidle;
			else if (qleft == 1 && ilpad == 0) nextS <= srmovl;
			else if (qleft == 1 && ilpad == 1) nextS <= sendl;
			else if (qleft == 0 && ilpad == 0) nextS <= slmisl;
			else nextS <= slmovl;
		end
		srmovl:
		begin
			lct = 0;
			rct = 0;
			lsi = 0;
			rsi = 0;
			s[1] = 0;
			s[0] = 1;
			if (ireset == 1) nextS <= sidle;
			else if (qright == 1 && irpad == 0) nextS <= slmovl;
			else if (qright == 1 && irpad == 1) nextS <= sendr;
			else if (qright == 0 && irpad == 0) nextS <= srmisl;
			else nextS <= srmovl;
		end
		slmisl:
		begin
			lct = 0;
			rct = 0;
			lsi = 0;
			rsi = 0;
			s[1] = 0;
			s[0] = 0;
			nextS <= sendl;
		end
		srmisl:
		begin
			lct = 0;
			rct = 0;
			lsi = 0;
			rsi = 0;
			s[1] = 0;
			s[0] = 0;
			nextS <= sendr;
		end
		sendl:
		begin
			rct = 0;
			lct = 1;
			lsi = 0;
			rsi = 0;
			s[1] = 0;
			s[0] = 0;
			nextS <= sidle;
		end
		sendr:
		begin
			lct = 0;
			rct = 1;
			lsi = 0;
			rsi = 0;
			s[1] = 0;
			s[0] = 0;
			nextS <= sidle;
		end
		endcase
		end
		
		always @(posedge clk)
			begin
			curS <= nextS;
			end
			
endmodule
