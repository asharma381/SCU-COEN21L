module bin_7seg(bi_digit,seg);
input [3:0] bi_digit;
output [6:0] seg;
reg [6:0] seg;
// seg = {g,f,e,d,c,b,a};
always @ (bi_digit)
case (bi_digit)
4'h0: seg = ~7'b0111111;
4'h1: seg = ~7'b0000110;                // ---a----
4'h2: seg = ~7'b1011011;                // |      |
4'h3: seg = ~7'b1001111;               // f      b
4'h4: seg = ~7'b1100110;
4'h5: seg = ~7'b1101101;
4'h6: seg = ~7'b1111101;
4'h7: seg = ~7'b0000111;
endcase
endmodule