module aceito(caracter, len_string, counter_caracter);
  output [3:0] caracter, len_string;
  input [3:0] counter_caracter;
  wire [3:0] multiplexer_out, len_string, A, C, E, I, T, O;
  Multiplexer16 #(4) multiplex(multiplexer_out, A, C, E, I, T, O, , , , , , , , , , , counter_caracter);
  assign caracter = multiplexer_out;
  assign len_string = 4'b0101;
  assign len_string = len_string;
  
  assign A = 4'b0000;
  assign C = 4'b0001;
  assign E = 4'b0011;
  assign I = 4'b0100;
  assign T = 4'b1010;
  assign O = 4'b0111;
  
endmodule