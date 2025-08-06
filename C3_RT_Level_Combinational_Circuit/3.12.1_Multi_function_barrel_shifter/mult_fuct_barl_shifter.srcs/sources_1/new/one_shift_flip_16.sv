`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 02:45:11 PM
// Design Name: 
// Module Name: one_shift_flip_16
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


module one_shift_flip_16(
    input logic [15:0] in,
    input logic lr,
    output logic [15:0] out
    );
    
    logic [7:0] msb_rotate, lsb_rotate;

    // step 1-2
    one_shift_lr_flip shift_msb (.in(in[15:8]), .out(msb_rotate), .lr(lr));
    one_shift_lr_flip shift_lsb (.in(in[7:0]), .out(lsb_rotate), .lr(lr));
    
    assign out = lr ? {lsb_rotate[7], msb_rotate[6:0], msb_rotate[7], lsb_rotate[6:0]}
        : {msb_rotate[7:1], lsb_rotate[0], lsb_rotate[7:1], msb_rotate[0]};
endmodule
