module Demultiplexer5(out0, out1, out2, out3, out4, in, sel);
  parameter WIDTH = 1;
  output reg [WIDTH-1:0] out0, out1, out2, out3, out4;
  input [WIDTH-1:0] in;
  input [2:0] sel;
  
  always @ (*) begin
    out0 = 0;
    out1 = 0;
    out2 = 0;
    out3 = 0;
    out4 = 0;
    case (sel)
      0 : out0 = in;
      1 : out1 = in;
      2 : out2 = in;
      3 : out3 = in;
      4 : out4 = in;
    endcase
  end
endmodule