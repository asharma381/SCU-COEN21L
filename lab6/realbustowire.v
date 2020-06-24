module realbustowire(bus, t3, t2, t1, t0);
	input [3:0] bus;
	output t3, t2, t1, t0;
	
	assign t3 = bus[3];
	assign t2 = bus[2];
	assign t1 = bus[1];
	assign t0 = bus[0];
endmodule 