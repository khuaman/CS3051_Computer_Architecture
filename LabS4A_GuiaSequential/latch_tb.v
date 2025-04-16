module latch_tb();
    reg clk; // entradas
    reg [3:0] d;
    wire [3:0] q; // salida
    
     // instanciando el d-latch
    latch latch_test(.clk(clk), .d(d), .q(q));
    
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
      $display("Tiempo | clk | d    | q");
//      $monitor("%4t   |  %b   | %b | %b", $time, clk, d, q);

      // Valores iniciales
      d = 4'b0000;

      #7  d = 4'b1010;  // durante clk = 1 → latch transparente
      #10 d = 4'b1100;  // sigue cambiando mientras clk está en 1
      #10 d = 4'b1111;

      #10 d = 4'b0001;  // clk podría estar en 0 aquí → q no cambia
      #10 d = 4'b0010;

      #10 d = 4'b0101;  // cuando clk = 1 → q vuelve a cambiar

      #10 $finish;
  end
     
endmodule
