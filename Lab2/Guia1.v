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


module mux2(a, b, s, f);
    input s, a, b;
    output f;
    wire not_s_out, and_a_out, and_b_out;
   
    not not_s(not_s_out, s);
    and and_a(and_a_out, a, not_s_out);
    and and_b(and_b_out, b, s);
    or or_out_mux(f, and_a_out, and_b_out);
   
endmodule
   
   

module Guia1(a, b, c, d, e, f, g, h, s, y);
    input a, b, c, d, e, f, g, h; // s empieza en 1
    input wire [2:0] s;
    output wire y;
   
    wire f0, f1, f2, f3, f4, f5; // f empieza en 0
    
    // FIRST CAPE
    mux2 mux0(.a(a), .b(b), .s(s[0]), .f(f0));
    mux2 mux1(.a(c), .b(d), .s(s[0]), .f(f1));
    mux2 mux2(.a(e), .b(f), .s(s[0]), .f(f2));
    mux2 mux3(.a(g), .b(h), .s(s[0]), .f(f3));
   
    // SECOND CAPE
   
    mux2 mux4(.a(f0), .b(f1), .s(s[1]), .f(f4));
    mux2 mux5(.a(f2), .b(f3), .s(s[1]), .f(f5));
   
    // THIRD CAPE
   
    mux2 mux6(.a(f4), .b(f5), .s(s[2]), .f(y));
    
    
endmodule
