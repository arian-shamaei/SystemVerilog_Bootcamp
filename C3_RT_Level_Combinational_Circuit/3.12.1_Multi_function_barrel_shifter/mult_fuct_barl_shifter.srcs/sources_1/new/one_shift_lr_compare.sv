`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 12:26:14 PM
// Design Name: 
// Module Name: one_shift_lr_compare
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
// if lr = 0, shift left, else shift right
// if shift_circuit = 0, chose l r circuit, else choose flip circuit


module one_shift_lr_compare(
    input logic [7:0] in,
    input logic lr, shift_circuit,
    output logic [7:0] out_lr, out_flip
    );
    
    one_shift_lr lr_circuit (.in(in), .out(out_lr), .lr(lr));
    one_shift_lr_flip flip_circuit (.in(in), .out(out_flip), .lr(lr));
    
    assign out = shift_circuit ? out_lr : out_flip;
    
    
endmodule
