`timescale 1ns/1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2025 04:54:21 PM
// Design Name: 
// Module Name: Guia1_tb
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


module Guia1_tb();
    reg a, b, c, d, e, f, g, h;   // entradas
    reg [2:0] s; // selector
    wire y; // salida
    
    // instanciando el MUX 2:1
    Guia1 mux_test(.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h),
                    .s(s), .y(y));
    
    initial begin
    
    
        // F debería ser igual a B si S=1.
        a=0;
        b=1;
        c=1;
        d=0;
        e=1;
        f=1;
        g=0;
        h=1;
        s=3'b000;
        //s1=0;
        //s2=0;
        //s3=0;
        
        // imprimir valor binario usando: %b
        $display("A=%b ", a, "B=%b ", b, "C=%b ", c, "D=%b ", d,
        "E=%b ", e, "F=%b ", f, "G=%b ", g, "H=%b ", h,
        "S=%b ", s, "Y=%b ", y);
        #1 // esperar 1 ns
        $display("A=%b ", a, "B=%b ", b, "C=%b ", c, "D=%b ", d,
        "E=%b ", e, "F=%b ", f, "G=%b ", g, "H=%b ", h,
        "S=%b ", s, "Y=%b ", y);
        #1
        // F debería ser igual a A si S=0.
        
        a=0;
        b=1;
        c=0;
        d=0;
        e=1;
        f=0;
        g=0;
        h=1;
        s=3'b010;
        //s1=0;
        //s2=1;
        //s3=0;
        
        // imprimir valor binario usando: %b
        $display("A=%b ", a, "B=%b ", b, "C=%b ", c, "D=%b ", d,
        "E=%b ", e, "F=%b ", f, "G=%b ", g, "H=%b ", h,
        "S=%b ", s, "Y=%b ", y);
        #1 // esperar 1 ns
        $display("A=%b ", a, "B=%b ", b, "C=%b ", c, "D=%b ", d,
        "E=%b ", e, "F=%b ", f, "G=%b ", g, "H=%b ", h,
        "S=%b ", s, "Y=%b ", y);
        #1
        
        
        a=0;
        b=1;
        c=1;
        d=0;
        e=1;
        f=1;
        g=0;
        h=1;
        s=3'b110;
        //s1=1;
        //s2=1;
        //s3=0;
        
        // imprimir valor binario usando: %b
        $display("A=%b ", a, "B=%b ", b, "C=%b ", c, "D=%b ", d,
        "E=%b ", e, "F=%b ", f, "G=%b ", g, "H=%b ", h,
        "S=%b ", s, "Y=%b ", y);
        #1 // esperar 1 ns
        $display("A=%b ", a, "B=%b ", b, "C=%b ", c, "D=%b ", d,
        "E=%b ", e, "F=%b ", f, "G=%b ", g, "H=%b ", h,
        "S=%b ", s, "Y=%b ", y);
        #1
        
        a=0;
        b=1;
        c=1;
        d=0;
        e=1;
        f=1;
        g=1;
        h=1;
        s=3'b110;
        //s1=1;
        //s2=1;
        //s3=0;
        
        // imprimir valor binario usando: %b
        $display("A=%b ", a, "B=%b ", b, "C=%b ", c, "D=%b ", d,
        "E=%b ", e, "F=%b ", f, "G=%b ", g, "H=%b ", h,
        "S=%b ", s, "Y=%b ", y);
        #1 // esperar 1 ns
        $display("A=%b ", a, "B=%b ", b, "C=%b ", c, "D=%b ", d,
        "E=%b ", e, "F=%b ", f, "G=%b ", g, "H=%b ", h,
        "S=%b ", s, "Y=%b ", y);
        #1
        
        
        $finish;
    end
    
    // todos los bloques initial se ejecutan
    // al iniciar la simulación


endmodule
