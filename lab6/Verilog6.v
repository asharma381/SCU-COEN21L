module wire_to_bus(T3,T2,T1,T0,out);
input T3;
input T2;
input T1;
input T0;

output [3:0] out;

assign out = {T3,T2, T1, T0};

endmodule