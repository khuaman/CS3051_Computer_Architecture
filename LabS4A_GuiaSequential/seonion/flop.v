`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2025 04:52:01 PM
// Design Name: 
// Module Name: d_flip_flop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module flop(input      clk,
            input      [3:0] d,
            output reg [3:0] q);
            
  always @ (posedge clk)
    q <= d;                //"q obtiene d"
endmodule

module dflipflop (input t,input clock,input reset,output reg [0:0]  q);
    always @ (clock)
    begin
    if (t) q <= ~q;
    if (reset) q <= 0; // latch is transparent when
// clock is 1
    end
endmodule