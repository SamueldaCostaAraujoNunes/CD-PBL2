module coder_mensage(aceito, comprometido, rejeitado, out);
  output reg [1:0] out;
  input aceito, comprometido, rejeitado;
  
  always @ (*)
	begin
	out = 2'b10;
	  if  (aceito & ~comprometido & ~rejeitado)
		out = 2'b00;
	  else if(~aceito & comprometido & ~rejeitado)
		out = 2'b01;
	  else if(~aceito & ~comprometido & rejeitado)
		out = 2'b10;
	end
	
endmodule