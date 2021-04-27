module char_r(out, in);
	output reg [6:0] out;
	input [2:0] in;
		always @ (*)
			begin
				case (in)
					0 : out = 7'b0000000;
					1 : out = 7'b0110111;
					2 : out = 7'b0110011;
					3 : out = 7'b0110101;
					4 : out = 7'b0001110;
					default : out = 7'b1111111;
				endcase
			end
endmodule
