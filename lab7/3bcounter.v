module counter(C, Dir, En, F);
	input C, Dir, En;
	output [2:0] F;
	reg [2:0] temp;
	
	always @(posedge C)
		begin 
			if (En == 0)
				temp = F;
			else if (En == 1) 
				begin
					if (Dir == 1)
						if (temp == 3'b111)
							temp = 3'b001;
						else
							temp = temp + 1;
					else if (Dir == 0)
						if (temp == 3'b000)
							temp = 3'b110;
						else 
							temp = temp - 1;
				end
		end 
	assign F = temp;
endmodule 