module char_m(out, in);
	output reg [6:0] out;
	input [2:0] in;
		always @ (*)
			begin
				case (in)
					0 : out = 7'b0000000;
					1 : out = 7'b1011111;
					2 : out = 7'b1100111;
					3 : out = 7'b1011111;
					4 : out = 7'b0000000;
					default : out = 7'b1111111;
				endcase
			end
endmodule
