module comprometido(caracter, len_string, counter_caracter);
  output [3:0] caracter, len_string;
  input [3:0] counter_caracter;
  wire [3:0] multiplexer_out, len_string, C, O, M, P, R, E, T, I, D;
  Multiplexer12 #(4) multiplex(multiplexer_out, C, O, M, P, R, O, M, E, T, I, D, O ,counter_caracter);
  assign caracter = multiplexer_out;
  assign len_string = 4'b1011;
  
  assign C = 4'b0001;
  assign O = 4'b0111;
  assign M = 4'b0110;
  assign P = 4'b1000;
  assign R = 4'b1001;
  assign E = 4'b0011;
  assign T = 4'b1010;
  assign I = 4'b0100;
  assign D = 4'b0010;
  
endmodule