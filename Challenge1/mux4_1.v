`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2025 05:39:16 PM
// Design Name: 
// Module Name: design_module
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
    input s,a, b;
    output f;
    wire not_s_out, and_a_out, and_b_out;
   
    not not_s(not_s_out, s);
    and nd_a(and_a_out, a, not_s_out);
    and and_b(and_b_out, b, s);
    or or_out_mux(f, and_a_out, and_b_out);
   
endmodule
  
module mux4(a, b, c, d, s, y);
    input a, b, c, d;
    input [1:0] s;
    wire y0, y1;
    output y;
    
    // FIRST CAPE
    mux2 mux0(.a(a), .b(b), .s(s[0]), .f(y0));
    mux2 mux1(.a(c), .b(d), .s(s[0]), .f(y1));
    
    //SECOND CAPE
    mux2 mux2(.a(y0), .b(y1), .s(s[1]), .f(y));
    
endmodule
   
module mux4_2(a, b, s, y);
    input a, b;
    input [1:0] s;
    output y;
    wire a_and_b_out, a_or_b_out, a_or_b_not_out;
    
    and a_and_b(a_and_b_out, a, b);
    or a_or_b(a_or_b_out, a, b); not a_or_b_not(a_or_b_not_out, a_or_b_out);
    
    mux4 mux1(a_and_b_out, a_or_b_not_out, a, 1, s, y);
    
endmodule
