module isolate(q, new);
	input [3:0] q;
	output new;
	
	assign new = q[3];
endmodule 