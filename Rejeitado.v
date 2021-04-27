module rejeitado(caracter, len_string, counter_caracter);

  output [3:0] caracter, len_string;
  input [3:0] counter_caracter;
  
  wire [3:0] multiplexer_out, R, E, J, I, T, A, D, O;
  Multiplexer16 #(4) multiplex(multiplexer_out, R, E, J, E, I, T, A, D, O, , , , , , , ,counter_caracter);
  assign caracter = multiplexer_out;
  assign len_string = 4'b1000;
  
  assign R = 4'b1001;
  assign E = 4'b0011;
  assign J = 4'b0101;
  assign I = 4'b0100;
  assign T = 4'b1010;
  assign A = 4'b0000;
  assign D = 4'b0010;
  assign O = 4'b0111;
  
endmodule