module Main(clk50Mhz, rst, C0, C1, C2, C3, C4, L0, L1, L2, L3, L4, L5, L6);
  input clk50Mhz, rst;
  output C0, C1, C2, C3, C4, L0, L1, L2, L3, L4, L5, L6;
  wire clk6hz, clk191hz;
  wire [3:0] counter_value;
  wire [6:0] decoder_aceito;
  DivClk divClk(clk6hz, clk191hz, clk50Mhz);
  Counter #(4) counter(counter_value, , 'b1111, clk6hz, rst);
  Decodificador_aceito decodificador_aceito(decoder_aceito, counter_value);
  Matrix matrix(C0, C1, C2, C3, C4, L0, L1, L2, L3, L4, L5, L6, clk191hz, decoder_aceito, clk6hz, rst);
  
endmodule