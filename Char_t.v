module char_t(out, in);
	output reg [6:0] out;
	input [2:0] in;
		always @ (*)
			begin
				case (in)
					0 : out = 7'b0111111;
					1 : out = 7'b0111111;
					2 : out = 7'b0000000;
					3 : out = 7'b0111111;
					4 : out = 7'b0111111;
					default : out = 7'b1111111;
				endcase
			end
endmodule
