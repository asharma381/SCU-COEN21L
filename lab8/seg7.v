module seg7(bi_digit, overflow, seg);
input overflow;
input [3:0] bi_digit;
output [6:0] seg;
reg [6:0] seg;

always @ (bi_digit, overflow)
	if(!overflow)
	begin
		case (bi_digit)
			4'h0: seg = ~7'b0111111;
			4'h1: seg = ~7'b0000110;     	   
			4'h2: seg = ~7'b1011011;    		  
			4'h3: seg = ~7'b1001111;    		  
			4'h4: seg = ~7'b1100110; 		  	 
			4'h5: seg = ~7'b1101101;   		  
			4'h6: seg = ~7'b1111100;   		 
			4'h7: seg = ~7'b0000111;   		  
			4'h8: seg = ~7'b1111111;    	     
			4'h9: seg = ~7'b1101111;    		 
			4'ha: seg = ~7'b1110111;
			4'hb: seg = ~7'b1111100;
			4'hc: seg = ~7'b1011000;
			4'hd: seg = ~7'b1011110;
			4'he: seg = ~7'b1111001;
			4'hf: seg = ~7'b1110001;
		endcase
	end
	else
	begin
		seg = ~7'b1000000;
	end
endmodule