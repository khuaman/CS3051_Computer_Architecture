`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2025 04:23:17 PM
// Design Name: 
// Module Name: guide_h
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


module mux4_2_tb();
    reg a, b;
    reg s;
    wire y;

    // Instancia del multiplexor
    mux4_2 mux_test(.a(a), .b(b), .s(s), .y(y));
    
    integer i, j;
    initial begin
        for (i = 0; i < 4; i = i + 1) begin
        {a, b} = i; // pasar por los 4 casos de a, b
        for (j = 0; j < 4; j = j + 1) begin
            s = j; // pasar por los 4 casos de sel[1:0]

            #10;
        end
        #10;
    end

    $finish; // Termina la simulación
    end
endmodule