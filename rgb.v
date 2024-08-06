`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2024 
// Design Name: 
// Module Name: rgb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: When clicking button on fpga, turn on LED to color specified by switches
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rgb(
    input [3:0] BTN,
    input [15:0] SW,
    output [2:0] RGB0,
    output [2:0] RGB1,
    output [15:0] LED
    );
    
    led call0 (SW, LED);
    assign RGB0 = (BTN[0] == 1)? SW[2:0] : 0;
    assign RGB1 = (BTN[1] == 1)? SW[15:13] : 0;
    
endmodule


module led(
    input [15:0] switches,
    output [15:0] led
    );
    
    assign led = switches;
endmodule
