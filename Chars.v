module Chars(in,out,en);
input [6:0] in;
input en;
output reg [3:0] out;
 
always @(in or en)
	begin
      if (en) 
        begin
				case (in)
					7'b1000001: out= 4'b0000; // A
					7'b1000011: out= 4'b0001; // C
					7'b1000100: out= 4'b0010; // D
					7'b1000101: out= 4'b0011; // E
					7'b1001001: out= 4'b0100; // I
					7'b1001010: out= 4'b0101; // J
					7'b1001101: out= 4'b0110; // M
					7'b1001111: out= 4'b0111; // O
					7'b1010000: out= 4'b1000; // P
					7'b1010010: out= 4'b1001; // R
					7'b1010100: out= 4'b1010; // T
					default: out=7'b1111;
				endcase
			end
		else 
		out=7'b1111;
end
endmodule

//module char_A(in,out,en);
//input [2:0] in;
//input en;
//output reg [6:0] out;
// 
//always @(in or en)
//	begin
//      if (en) 
//        begin
//          out=7'b1111111;
//          case (in)
//					3'b000: out=7'b1100000;
//					3'b001: out=7'b1011011;
//					3'b010: out=7'b0111011;
//					3'b011: out=7'b1011011;
//					3'b100: out=7'b1100000;
//					default: out=7'b1111111;
//          endcase
//      end
//else 
//out=7'b1111111;
//end
//endmodule