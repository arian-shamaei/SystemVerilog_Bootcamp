`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2025 07:42:43 PM
// Design Name: 
// Module Name: gt4
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

/*
If a1 > b1, then out = 1
else If a1 = b1 & a0 > b0, then out = 1
else out = 0

*/


module gt4 
    (
    input logic [3:0] a, b,
    output logic agtb
    );
    
    // internal signal delaration
    logic a0_gt_b0, a1_gt_b1;
    
    // body
    gt2 gt_bit0 (.i0(a[1:0]), .i1(b[1:0]), .agtb(a0_gt_b0));
    gt2 gt_bit1 (.i0(a[3:2]), .i1(b[3:2]), .agtb(a1_gt_b1));
    
    assign agtb = a1_gt_b1 | a[3] == b[3] & a[2] == b[2] & a0_gt_b0;

endmodule
