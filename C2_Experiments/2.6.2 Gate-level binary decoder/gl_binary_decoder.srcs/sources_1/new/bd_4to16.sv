`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 07:51:01 PM
// Design Name: 
// Module Name: bd_4to16
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


module bd_4to16(
    input logic a0, a1, a2, a3, en,
    output logic [15:0] bcode
    );
    
    // intermediate declarations
    logic [3:0] bcode_lsb, bcode_msb;
    
    bd_2to4 blk_1 (.a0(a0), .a1(a1), .en(en), .bcode(bcode_lsb));
    bd_2to4 blk_2 (.a0(a2), .a1(a3), .en(en), .bcode(bcode_msb));
    
    assign bcode[15:12] = {4{bcode_msb[3]}} & bcode_lsb;
    assign bcode[11:8] = {4{bcode_msb[2]}} & bcode_lsb;
    assign bcode[7:4] = {4{bcode_msb[1]}} & bcode_lsb;
    assign bcode[3:0] = {4{bcode_msb[0]}} & bcode_lsb;
    
endmodule
