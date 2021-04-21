module Decodificador_aceito(out, counter);
  output [6:0] out;
  input [3:0] counter;
  wire [7:0] data_out;
  Rom rom(data_out, counter, );
  
  assign out = data_out[6:0];
endmodule