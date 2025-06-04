`timescale 1ns / 1ps
// EJERCICIOS 4 Y 5. Contiene tmb parte del código de los anteriores ejercicios
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2025 04:54:18 PM
// Design Name: 
// Module Name: top2
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


module alu(
  input  [4:0] a, b,
  input  [2:0] ALUControl,
  output reg [4:0] Result,
  output wire [3:0] ALUFlags
);

  wire neg, zero, carry, overflow;
  wire [4:0] condinvb;
  wire [5:0] sum;  // 5 bits + carry

  assign condinvb = ALUControl[0] ? ~b : b;      
  assign sum = a + condinvb + ALUControl[0];

  always @(*) begin
    case(ALUControl)
      3'b000, 3'b001: Result = sum[4:0];    // suma o resta
      3'b010:        Result = a & b;
      3'b011:        Result = a | b;
      3'b100: 		Result = a ^ b;
      default:      Result = 5'b0;
    endcase
  end

  assign neg = Result[4];
  assign zero = (Result == 5'b0);
  assign carry = (ALUControl[1] == 1'b0) & sum[5];   
  assign overflow = (ALUControl[1] == 1'b0) &
                    ~(a[4] ^ b[4] ^ ALUControl[0]) &
                    (a[4] ^ sum[4]);

  assign ALUFlags = {neg, zero, carry, overflow};

endmodule
////////////////////////////////////////////////////////////////////////

module shift_operation(
  	input [4:0] a,
  	input [1:0] bshift,
  	input direction,
    output reg [4:0] salida_a
);
  always @(*) begin
    case(direction)
      1'b0: salida_a = a << bshift; // izquierda
      1'b1: salida_a = a >> bshift; // derecha
    endcase
  end

endmodule

///////////////////////////////////////////////////////////////////////

module top2(
  input  [4:0] a, b,
  input  [2:0] ALUControl,
  input  [1:0] bshift,
  input direction,
  output wire  [4:0] Result,
  output wire [3:0] ALUFlags
);
  wire [4:0] salida_a;
  shift_operation shifteando(.a(a),
                             .bshift(bshift),
                             .direction(direction),
                             .salida_a(salida_a));
  alu alu_implementado (
    .a(salida_a),
    .b(b),
    .ALUControl(ALUControl),
    .Result(Result),
    .ALUFlags(ALUFlags)
  );

endmodule

