module realwiretobus(t0,t1,t2,t3, bus);
	input t0, t1, t2, t3;
	output [3:0] bus;
	
	assign bus[0] = t0;
	assign bus[1] = t1;
	assign bus[2] = t2;
	assign bus[3] = t3;
endmodule 