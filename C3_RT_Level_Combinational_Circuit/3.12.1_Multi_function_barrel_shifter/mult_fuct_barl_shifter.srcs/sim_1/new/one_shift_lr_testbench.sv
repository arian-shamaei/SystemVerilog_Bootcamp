`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2025 05:56:15 PM
// Design Name: 
// Module Name: one_shift_lr_testbench
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


module one_shift_lr_testbench;
    logic [7:0] test_in, test_out;
    logic test_lr;
    
    one_shift_lr uut
        (.in(test_in), .out(test_out), .lr(test_lr));
    
    
    initial
    begin    
    // one shift to left
    test_in = 8'b10000001;
    test_lr = 1'b0;
    #200;
    // one shift to right
    test_in = 8'b10000001;
    test_lr = 1'b1;
    #200;
    end
endmodule
