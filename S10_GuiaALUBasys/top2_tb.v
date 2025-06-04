`timescale 1ns / 1ps
// TESTBENCH DE EJERCICIOS 4 Y 5.
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2025 04:53:50 PM
// Design Name: 
// Module Name: top2_tb
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


module top2_tb();

  reg  [4:0] a, b;
  reg  [2:0] ALUControl;
  reg  [1:0] bshift;
  reg direction;
  wire [4:0] Result;
  wire [3:0] ALUFlags;

  top2 uut (
    .a(a),
    .b(b),
    .ALUControl(ALUControl),
    .bshift(bshift),
    .direction(direction),
    .Result(Result),
    .ALUFlags(ALUFlags)
  );


  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, top2_tb);

    $monitor("Time=%0t | a=%0d b=%0d ALUControl=%b Result=%0d Flags= N Z C V", 
              $time, a, b, ALUControl, bshift, direction, Result, ALUFlags[3], ALUFlags[2], ALUFlags[1], ALUFlags[0]);
    
    // 1 xor 1 
	//a = 5'd0; b = 5'd0; ALUControl = 3'b100; #10;
    //a = 5'd0; b = 5'd1; ALUControl = 3'b100; #10;
	//a = 5'd1; b = 5'd0; ALUControl = 3'b100; #10;
	a = 5'd1; b = 5'd1; ALUControl = 3'b000; bshift = 2'b00; direction=1'b0;
	
    #10;

    bshift=2'b01;
    
    #10;

    a = 5'd2;
    
    #10
    
    direction=1'b1;
    
    #10;

    bshift=2'b01;
    
    // 1) 3 + 5
    //a = 5'd3; b = 5'd5; ALUControl = 3'b00; #10;

    // 2) 5 - 5
    //a = 5'd5; b = 5'd5; ALUControl = 3'b01; #10;

    // 3) 8 and 1
    //a = 5'd8; b = 5'd1; ALUControl = 3'b10; #10;

    // 4) 5 or 7
    //a = 5'd5; b = 5'd7; ALUControl = 3'b11; #10;
    

    $finish;
  end

endmodule

