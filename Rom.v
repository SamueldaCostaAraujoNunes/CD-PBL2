module Rom(dout, addr, en);
parameter WIDTH = 8;
parameter ADDR = 4;
output reg [WIDTH-1:0] dout;
input [ADDR-1:0] addr;
input en;

always @ (*) begin
	if (en == 0)
	dout = {WIDTH{1'bz}};
	else
	case (addr)
		0 : dout = 'b1100000;
		1 : dout = 'b1011011;
		2 : dout = 'b0111011;
		3 : dout = 'b1011011;
		4 : dout = 'b1100000;
		5 : dout = 'b1111111;
		6 : dout = 0;
		7 : dout = 0;
		8 : dout = 0;
		9 : dout = 0;
		10 : dout = 0;
		11 : dout = 0;
		12 : dout = 0;
		13 : dout = 0;
		14 : dout = 0;
		15 : dout = 0;
	endcase
end
endmodule