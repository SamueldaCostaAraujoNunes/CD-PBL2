module Matrix(C0, C1, C2, C3, C4, L0, L1, L2, L3, L4, L5, L6, clk_191hz, prox_col, clk_6hz, rst);

  output C0,  C1,  C2,  C3,  C4,  L0, L1, L2, L3, L4, L5, L6;
  input clk_191hz, clk_6hz, rst;
  input [6:0] prox_col;
  
  wire linha_0, linha_1, linha_2, linha_3, linha_4, linha_5, linha_6, colunas_0, colunas_1, colunas_2, colunas_3, colunas_4;
  
  wire [2:0] counter_Value, max_5;
  assign max_5 = 3'b100;
  Counter #(3) counter(counter_Value, max_5, clk_191hz, rst);
  
  Linha linha0(linha_0, prox_col[6], clk_6hz, counter_Value, rst);
  Linha linha1(linha_1, prox_col[5], clk_6hz, counter_Value, rst);
  Linha linha2(linha_2, prox_col[4], clk_6hz, counter_Value, rst);
  Linha linha3(linha_3, prox_col[3], clk_6hz, counter_Value, rst);
  Linha linha4(linha_4, prox_col[2], clk_6hz, counter_Value, rst);
  Linha linha5(linha_5, prox_col[1], clk_6hz, counter_Value, rst);
  Linha linha6(linha_6, prox_col[0], clk_6hz, counter_Value, rst); 
  
  assign L0 = linha_0;
  assign L1 = linha_1;
  assign L2 = linha_2;
  assign L3 = linha_3;
  assign L4 = linha_4;
  assign L5 = linha_5;
  assign L6 = linha_6;
  
  Colunas colunas(colunas_0, colunas_1, colunas_2, colunas_3, colunas_4, counter_Value);
  
  assign C0 = colunas_0;
  assign C1 = colunas_1;
  assign C2 = colunas_2;
  assign C3 = colunas_3;
  assign C4 = colunas_4;
  
endmodule