module counter27(input clk,
				 input enable,
				 input reset,
				 output reg [26:0] Q);

				 
	always@(posedge clk)
		if(reset)
		begin
			Q <= 0;
		end
		
		else if(enable)
		begin
			Q <= Q + 1;
		end

endmodule