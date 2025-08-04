`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 07:59:45 PM
// Design Name: 
// Module Name: bd_4to16_testbench
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


module bd_4to16_testbench;
    logic [3:0] test_in;
    logic test_en;
    logic [15:0] test_out;
    
    bd_4to16 uut
        (.a0(test_in[0]), .a1(test_in[1]), .a2(test_in[2]), .a3(test_in[3]), .en(test_en), .bcode(test_out));
        
    initial
    begin
        // test vector 1
        test_en = 0;
        test_in = 4'b1111;
        #20;
        // test vector 2
        test_en = 1;
        test_in = 4'b0000;
        #20;
        // test vector 3
        test_en = 1;
        test_in = 4'b0001;
        #20;
        // test vector 4
        test_en = 1;
        test_in = 4'b0010;
        #20;
        // test vector 5
        test_en = 1;
        test_in = 4'b0011;
        #20;
        // test vector 6
        test_en = 1;
        test_in = 4'b0100;
        #20;
        // test vector 7
        test_en = 1;
        test_in = 4'b0101;
        #20;
        // test vector 8
        test_en = 1;
        test_in = 4'b0110;
        #20;
        // test vector 9
        test_en = 1;
        test_in = 4'b0111;
        #20;
        // test vector 10
        test_en = 1;
        test_in = 4'b1000;
        #20;
        // test vector 11
        test_en = 1;
        test_in = 4'b1001;
        #20;
        // test vector 12
        test_en = 1;
        test_in = 4'b1010;
        #20;
        // test vector 13
        test_en = 1;
        test_in = 4'b1011;
        #20;
        // test vector 14
        test_en = 1;
        test_in = 4'b1100;
        #20;
        // test vector 15
        test_en = 1;
        test_in = 4'b1101;
        #20;
        // test vector 16
        test_en = 1;
        test_in = 4'b1110;
        #20;
        // test vector 17
        test_en = 1;
        test_in = 4'b1111;
        #20;
        $stop;
    end
endmodule
