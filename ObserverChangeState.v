module observerChangeState(output rst,input clk, input aceito,input comprometido,input rejeitado);

	reg aceito_delay;
	reg comprometido_delay;
	reg rejeitado_delay;
	
	always @ (posedge clk) begin
       aceito_delay <= aceito;
		 comprometido_delay <= comprometido;
		 rejeitado_delay <= rejeitado;
	end
		 
	assign rst = (aceito & ~aceito_delay) || (comprometido & ~comprometido_delay) || (rejeitado & ~rejeitado_delay);
	
endmodule
