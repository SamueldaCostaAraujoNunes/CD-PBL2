module coder_mensage(aceito, comprometido, rejeitado, out);
  output [1:0] out;
  input aceito, comprometido, rejeitado;
  
  assign out[0] = comprometido;
  assign out[1] = rejeitado;
	
endmodule
