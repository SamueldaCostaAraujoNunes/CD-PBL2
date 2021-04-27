module char_o(out, in);
	output reg [6:0] out;
	input [2:0] in;
		always @ (*)
			begin
				case (in)
					0 : out = 7'b1000001;
					1 : out = 7'b0111110;
					2 : out = 7'b0111110;
					3 : out = 7'b0111110;
					4 : out = 7'b1000001;
					default : out = 7'b1111111;
				endcase
			end
endmodule
