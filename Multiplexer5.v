module Multiplexer5(out, in0, in1, in2, in3, in4, sel);
  parameter WIDTH = 1;
  output reg [WIDTH-1:0] out;
  input [WIDTH-1:0] in0, in1, in2, in3, in4;
  input [2:0] sel;
  
  always @ (*)
    case (sel)
      0 : out = in0;
      1 : out = in1;
      2 : out = in2;
      3 : out = in3;
      4 : out = in4;
    endcase
endmodule