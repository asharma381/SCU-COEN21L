module pong_game12(ireset, irsrv, ilsrv, irpad, ilpad, sp, mclock50, q, lscore, rscore, lsi, rsi, vclk, curS);
	input ireset, irsrv, ilsrv, irpad, ilpad, mclock50;
	input [2:0] sp;
	wire lq, rq;
	wire [1:0] ws;
	wire r, l;
	output [11:0] q;
	output [3:0] curS;
	output lscore, rscore; 
	output lsi, rsi, vclk;
	
	var_clock vc(mclock50, sp, vclk);
	pong_controller2 pc2(q[10], q[1], ireset, irsrv, ilsrv, irpad, ilpad, vclk, ws, lscore, rscore, l, r, curS);
	pong12 p12(r, l, ws, vclk, q);
	assign lsi = l;
	assign rsi = r;
endmodule