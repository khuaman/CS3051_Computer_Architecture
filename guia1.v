`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2025 04:54:07 PM
// Design Name: 
// Module Name: Guia1
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


module Guia1(a, b, c, d, e, f, g, h, s, y); // structural
    input s, a, b, c, d, e, f, g, h;
    output y;
    wire not_s_out, and_a_out, and_b_out;
    
    //instance: module module_name (ports)
    not not_s (not_s_out, s);
    and and_a (and_a_out, a, not_s_out);
    and and_b (and_b_out, b, s);
    or or_out_mux (f, and_a_out, and_b_out);

endmodule
