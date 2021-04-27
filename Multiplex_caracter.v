module multiplex_caracter(next_col, A, C, D, E, I, J, M, O, P, R, T, caracter_code);
  output [6:0] next_col;
  input [3:0] caracter_code;
  input [6:0] A, C, D, E, I, J, M, O, P, R, T;
  wire [6:0] multiplex_out;
  Multiplexer16 #(7) multiplex(multiplex_out, A, C, D, E, I, J, M, O, P, R, T, , , , , , caracter_code);
  assign next_col = multiplex_out;
endmodule