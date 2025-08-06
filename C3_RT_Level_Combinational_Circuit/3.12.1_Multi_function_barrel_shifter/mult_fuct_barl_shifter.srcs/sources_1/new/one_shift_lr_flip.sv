`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 11:45:21 AM
// Design Name: 
// Module Name: one_shift_lr_flip
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
// if lr = 0, left shift, else right shift

module one_shift_lr_flip(
    input logic [7:0] in,
    input logic lr,
    output logic [7:0] out
    );
    
    logic [7:0] pre_flip, r_shift;
    
    // pre_flip stage
    assign pre_flip = lr ? in : {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7]};
    
    // right shift
    assign r_shift = {pre_flip[0], pre_flip[7:1]};
    
    // post_flip stage
    assign out = lr ? r_shift : 
        {r_shift[0], r_shift[1], r_shift[2], r_shift[3], r_shift[4], r_shift[5], r_shift[6], r_shift[7]};
        
endmodule

