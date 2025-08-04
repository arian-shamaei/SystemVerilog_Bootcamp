`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2025 05:50:43 PM
// Design Name: 
// Module Name: one_shift_lr
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
// if lr = 0, then shift left one, else shift right one

module one_shift_lr(
    input logic [7:0] in,
    input logic lr,
    output logic [7:0] out
    );
    
    logic [7:0] l_shift, r_shift;
    
    // preform left and right shift
    assign l_shift = {in[6:0], in[7]};
    assign r_shift = {in[0], in[7:1]};
    
    // determine shift type based on lr
    assign out = lr ? r_shift : l_shift;
endmodule
