`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 02:49:18 PM
// Design Name: 
// Module Name: one_shift_flip_32
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


module one_shift_flip_32(
    input logic [31:0] in,
    input logic lr,
    output logic [31:0] out
    );
    
    logic [15:0] msb_rotate, lsb_rotate;
    
    one_shift_flip_16 shift_msb(.in(in[31:16]), .out(msb_rotate), .lr(lr));
    one_shift_flip_16 shift_lsb(.in(in[15:0]), .out(lsb_rotate), .lr(lr));
    
    assign out = lr ? {lsb_rotate[15], msb_rotate[14:0], msb_rotate[15], lsb_rotate[14:0]}
        : {msb_rotate[15:1], lsb_rotate[0], lsb_rotate[15:1], msb_rotate[0]};
    
    
endmodule
