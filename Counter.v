module Counter(val, max, clk, rst);
parameter WIDTH = 1;
output reg [WIDTH-1:0] val;
input [WIDTH-1:0] max;
input clk, rst;

initial
  val = 0;

always @ (posedge clk or posedge rst) begin
  if (rst)
	 val <= 0;
  else
	 if (val == max)
		val <= 0;
	 else
		val <= val + 1;
end
endmodule