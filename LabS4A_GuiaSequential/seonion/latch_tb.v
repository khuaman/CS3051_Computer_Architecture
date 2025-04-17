`timescale 1ns / 1ps
module dff_tb;

    reg clk, t, reset;
    wire q;

    // Instanciar el flip-flop correctamente
    dflipflop dff (
        .t(t),
        .clock(clk),
        .reset(reset),
        .q(q)
    );

    // Generador de reloj
    always #5 clk = ~clk;

    initial begin
        clk = 0; t = 0; reset = 0;
        #2 reset = 1;
        #5 reset = 0;

        #5 t = 1; // Toggle q
        #10 t = 1; // Toggle q
        #10 t = 0; // No cambio
        #10 reset = 1;
        #5 reset = 0;
        #20 $finish;
    end

    initial begin
        $monitor("Time = %0t | clk = %b | t = %b | reset = %b | q = %b", 
                 $time, clk, t, reset, q);
    end

endmodule