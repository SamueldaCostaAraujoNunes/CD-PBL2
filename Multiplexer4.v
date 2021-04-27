module Multiplexer4(out, in0, in1, in2, in3, sel);
  output reg [3:0] out;
  input [3:0] in0, in1, in2, in3;
  input [1:0] sel;
  
  always @ (*)
    case (sel)
      0 : out = in0;
      1 : out = in1;
      2 : out = in2;
      3 : out = in3;
    endcase
endmodule