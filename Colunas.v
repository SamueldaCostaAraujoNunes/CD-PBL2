module Colunas(c0, c1, c2, c3, c4, counter);
  output c0,  c1,  c2,  c3,  c4;
  input [2:0] counter;
  wire demultiplex_out_0, demultiplex_out_1, demultiplex_out_2, demultiplex_out_3, demultiplex_out_4, Power_0_out;
  Demultiplexer5 demultiplex(demultiplex_out_0, demultiplex_out_1, demultiplex_out_2, demultiplex_out_3, demultiplex_out_4, 1'b1, counter);
  assign c4 = demultiplex_out_4;
  assign c3 = demultiplex_out_3;
  assign c2 = demultiplex_out_2;
  assign c1 = demultiplex_out_1;
  assign c0 = demultiplex_out_0;
endmodule