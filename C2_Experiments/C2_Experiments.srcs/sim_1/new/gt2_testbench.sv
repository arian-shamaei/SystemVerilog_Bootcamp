`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 05:49:04 PM
// Design Name: 
// Module Name: gt2_testbench
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


module gt2_testbench;
    // signal declaration
    logic [1:0] test_in0, test_in1;
    logic test_out;

    // instantiate the circuit under test
    gt2 uut
        (.i0(test_in0), .i1(test_in1), .agtb(test_out));
        
    // test vector generator
    initial
    begin
        // test vector 1
        test_in0 = 2'b00;
        test_in1 = 2'b00;
        # 200;
        // test vector 2
        test_in0 = 2'b01;
        test_in1 = 2'b00;
        # 200;
        // test vector 3
        test_in0 = 2'b01;
        test_in1 = 2'b11;
        # 200;
        // test vector 4
        test_in0 = 2'b10;
        test_in1 = 2'b00;
        # 200;
        // test vector 5
        test_in0 = 2'b10;
        test_in1 = 2'b01;
        # 200;
        // stop simulation
        $stop;
    end
endmodule
