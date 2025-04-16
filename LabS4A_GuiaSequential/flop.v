`timescale 1ns / 1ps

module flop (input              clk,
             input          [3:0] d,
             output    reg [3:0] q); 
          
    always @ (posedge clk)
        q <= d; // q obtiene d
endmodule
