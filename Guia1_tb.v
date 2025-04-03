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
    reg a, b;   // entradas
    reg s; // selector
    wire f; // salida
    
    // instanciando el MUX 2:1
    Guia1 mux_test(.a(a), .b(b), .s(s), .f(f));
    
    initial begin
        // F debería ser igual a B si S=1.
        a=0;
        b=1;
        s=1;
        // imprimir valor binario usando: %b
        $display("A=%b ", a, "B=%b ", b, "S=%b ", s, "F=%b ", f);
        #1 // esperar 1 ns
        $display("A=%b ", a, "B=%b ", b, "S=%b ", s, "F=%b ", f);
        #1
        // F debería ser igual a A si S=0.
        a=0;
        b=1;
        s=0;
        $display("A=%b ", a, "B=%b ", b, "S=%b ", s, "F=%b ", f);
        #1
        $display("A=%b ", a, "B=%b ", b, "S=%b ", s, "F=%b ", f);
        
        // Casos de la pizarra:
        a=0;
        b=0;
        s=0;
        $display("A=%b ", a, "B=%b ", b, "S=%b ", s, "F=%b ", f);
        #1
        $display("A=%b ", a, "B=%b ", b, "S=%b ", s, "F=%b ", f);
        
        a=1;
        b=0;
        s=0;
        $display("A=%b ", a, "B=%b ", b, "S=%b ", s, "F=%b ", f);
        #1
        $display("A=%b ", a, "B=%b ", b, "S=%b ", s, "F=%b ", f);
        
        a=1;
        b=0;
        s=1;
        $display("A=%b ", a, "B=%b ", b, "S=%b ", s, "F=%b ", f);
        #1
        $display("A=%b ", a, "B=%b ", b, "S=%b ", s, "F=%b ", f);
        
        a=1;
        b=1;
        s=1;
        $display("A=%b ", a, "B=%b ", b, "S=%b ", s, "F=%b ", f);
        #1
        $display("A=%b ", a, "B=%b ", b, "S=%b ", s, "F=%b ", f);
        
        
        
        
        $finish;
    end
    
    // todos los bloques initial se ejecutan
    // al iniciar la simulación


endmodule

