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
    logic test_lr, test_switch;
    
    one_shift_lr_compare uut
        (.in(test_in), .out_lr(test_out), .out_flip(test_out), .lr(test_lr), .shift_circuit(test_switch));
    
    
    initial
    begin    
    //testing lr circuit
    
    // one shift to left
    test_in = 8'b10000001;
    test_lr = 1'b0;
    test_switch = 1'b0;
    #200;
    // one shift to right
    test_in = 8'b10000001;
    test_lr = 1'b1;
    test_switch = 1'b0;
    #200;
    
    //testing flip circuit -- OUTPUT should be same as lr
    
    // one shift to left
    test_in = 8'b10000001;
    test_lr = 1'b0;
    test_switch = 1'b1;
    #200;
    // one shift to right
    test_in = 8'b10000001;
    test_lr = 1'b1;
    test_switch = 1'b1;
    end
endmodule
