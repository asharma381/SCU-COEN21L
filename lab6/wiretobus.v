module bustowire(out, T0, T1, T2, T3);

input [3:0] out;
output T0;
output T1;
output T2;
output T3;


assign T3 = out[0];
assign T2 = out[1];
assign T1 = out[2];
assign T0 = out[3];

endmodule