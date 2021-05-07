module Multiplexer12(out, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, sel);
  parameter WIDTH = 1;
  output reg [WIDTH-1:0] out;
  input [WIDTH-1:0] in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11;
  input [2:0] sel;
  
  always @ (*)
    case (sel)
      0 : out = in0;
      1 : out = in1;
      2 : out = in2;
      3 : out = in3;
      4 : out = in4;
      5 : out = in5;
      6 : out = in6;
      7 : out = in7;
      8 : out = in8;
      9 : out = in9;
      10 : out = in10;
      11 : out = in11;
    endcase
endmodule