module DivFreq(inp,out);
  output out;
  input inp;
  wire q, q_inv;
  DflipFlop dff(q, ,inp, ~q);
  assign out = q;
endmodule