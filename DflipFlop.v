module DflipFlop(output reg q, input rst, input clk, input d);  
    always @ (posedge clk or posedge rst)  
       if (rst)  
          q <= 1;  
       else  
          q <= d;  
endmodule  