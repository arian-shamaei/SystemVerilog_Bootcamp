`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 03:31:22 PM
// Design Name: 
// Module Name: one_shift_16_testbench
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


module one_shift_16_testbench;
    logic [15:0] test_in, test_out;
    logic test_lr;
    
    one_shift_flip_16 uut
        (.in(test_in), .out(test_out), .lr(test_lr));
    
    
    initial
    begin    
  
    // one shift to left
    test_in = 16'b1000000000000001;
    test_lr = 1'b0;
    #200;
    
    // one shift to right
    test_in = 16'b1000000000000001;
    test_lr = 1'b1;
    #200;
    
    // one shift to left
    test_in = 16'b1100000000000000;
    test_lr = 1'b0;
    #200;
    
    // one shift to right
    test_in = 8'b00000000000000011;
    test_lr = 1'b1;
    #200;

    end
endmodule