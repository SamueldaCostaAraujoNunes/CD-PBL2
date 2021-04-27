module Main(aceito, comprometido, rejeitado, clk50Mhz, rst, C0, C1, C2, C3, C4, L0, L1, L2, L3, L4, L5, L6);

  input clk50Mhz, rst, aceito, comprometido, rejeitado;
  output C0, C1, C2, C3, C4, L0, L1, L2, L3, L4, L5, L6;
  
  wire clk6hz, clk191hz, finish;
  wire [3:0] counter_coluna_value, counter_caracter_value, len_string;
  wire [6:0] next_col;
  wire [6:0] gen_char_out;
  
  DivClk divClk(clk6hz, clk191hz, clk50Mhz);
  Counter #(4) counter_coluna(counter_coluna_value,'b0101, clk6hz, rst);
  Counter #(4) counter_caracter(counter_caracter_value, len_string, finish, rst);

  select_mensage select_mensage(aceito, comprometido, rejeitado, counter_caracter_value, caracter_code, len_string);
  gen_char gen_char(next_col, finish, caracter_code, counter_coluna_value);
  
  Matrix matrix(C0, C1, C2, C3, C4, L0, L1, L2, L3, L4, L5, L6, clk191hz, next_col, clk6hz, rst);
  
endmodule