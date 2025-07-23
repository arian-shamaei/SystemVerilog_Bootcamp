`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 05:11:02 PM
// Design Name: 
// Module Name: gt2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Checks two 2-bit inputs a and b. Outputs 1 if a > b, else outputs 0.
// 
//////////////////////////////////////////////////////////////////////////////////


module gt2(
    input logic [1:0] i0, i1,
    output logic agtb
    );
    
    // internal signal declaration
    logic e0, e1, e2, e3, e4, e5;
    
    // body
    assign e0 = (i0[0] & ~i1[1]) & (~i0[1] & ~i1[1]);
    assign e1 = (~i0[0] & ~i1[1]) & (i0[1] & ~i1[1]);
    assign e2 = (i0[0] & ~i1[1]) & (i0[1] & ~i1[1]);
    assign e3 = (~i0[0] & i1[1]) & (i0[1] & ~i1[1]);
    assign e4 = (i0[0] & i1[1]) & (i0[1] & ~i1[1]);
    assign e5 = (i0[0] & ~i1[1]) & (i0[1] & i1[1]);
    
    // eval all possible case
    assign agtb = e0 | e1 | e2 | e3 | e4 | e5;
    
endmodule
