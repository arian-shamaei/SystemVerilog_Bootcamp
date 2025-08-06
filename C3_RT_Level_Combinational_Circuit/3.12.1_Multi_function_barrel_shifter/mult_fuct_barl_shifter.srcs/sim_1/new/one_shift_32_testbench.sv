`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 04:13:41 PM
// Design Name: 
// Module Name: one_shift_32_testbench
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


module one_shift_32_testbench;
    logic [31:0] test_in, test_out;
    logic test_lr;
    
    one_shift_flip_32 uut
        (.in(test_in), .out(test_out), .lr(test_lr));
    
    
    initial
    begin    
  
    // one shift to left
    test_in = 32'b10000000000000000000000000000001;
    test_lr = 1'b0;
    #200;
    
    // one shift to right
    test_in = 32'b10000000000000000000000000000001;
    test_lr = 1'b1;
    #200;
    
    // one shift to left
    test_in = 32'b11000000000001100000000000000000;
    test_lr = 1'b0;
    #200;
    
    // one shift to right
    test_in = 32'b00000000000001100000000000000011;
    test_lr = 1'b1;
    #200;

    end
endmodule
