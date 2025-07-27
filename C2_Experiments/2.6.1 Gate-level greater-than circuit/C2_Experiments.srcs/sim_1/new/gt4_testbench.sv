`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2025 08:00:29 PM
// Design Name: 
// Module Name: gt4_testbench
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


module gt4_testbench;
    // signal declaration
    logic [3:0] test_in0, test_in1;
    logic test_out;

    // instantiate the circuit under test
    gt4 uut
        (.a(test_in0), .b(test_in1), .agtb(test_out));
        
    // test vector generator
    initial
    begin
        // test vector 1
        test_in0 = 4'b0000;
        test_in1 = 4'b0001;
        # 200;
        // test vector 2
        test_in0 = 4'b0101;
        test_in1 = 4'b0010;
        # 200;
        // test vector 3
        test_in0 = 4'b0111;
        test_in1 = 4'b1100;
        # 200;
        // test vector 4
        test_in0 = 4'b1010;
        test_in1 = 4'b0010;
        # 200;
        // test vector 5
        test_in0 = 4'b1001;
        test_in1 = 4'b1100;
        # 200;
        // stop simulation
        $stop;
    end
endmodule
