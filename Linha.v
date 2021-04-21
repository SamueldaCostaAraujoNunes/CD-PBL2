module Linha(led_out, new_data_in, clk_6hz, counter, rst);
  output led_out;
  input new_data_in, clk_6hz, rst;
  input [2:0] counter;
  wire dff0_Q, dff1_Q, dff2_Q, dff3_Q, dff4_Q;
  
  Multiplexer5 multiplexer(led_out, dff4_Q, dff3_Q, dff2_Q, dff1_Q, dff0_Q, counter);
  
  DflipFlop dff0(dff0_Q, rst, clk_6hz, new_data_in);
  DflipFlop dff1(dff1_Q, rst, clk_6hz, dff0_Q);
  DflipFlop dff2(dff2_Q, rst, clk_6hz, dff1_Q);
  DflipFlop dff3(dff3_Q, rst, clk_6hz, dff2_Q);
  DflipFlop dff4(dff4_Q, rst, clk_6hz, dff3_Q); 

endmodule