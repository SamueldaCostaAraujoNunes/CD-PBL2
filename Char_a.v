module char_a(out, in);
	output reg [6:0] out;
	input [2:0] in;
		always @ (*)
			begin
				case (in)
					0 : out = 7'b1100000;
					1 : out = 7'b1011011;
					2 : out = 7'b0111011;
					3 : out = 7'b1011011;
					4 : out = 7'b1100000;
					default : out = 7'b1111111;
				endcase
			end
endmodule
