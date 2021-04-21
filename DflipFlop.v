module DflipFlop(output reg q, input rst, input clk, input d);  
    always @ (posedge clk)  
       if (rst)  
          q <= 0;  
       else  
          q <= d;  
endmodule  