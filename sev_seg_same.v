`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2024 
// Design Name: 
// Module Name: timer
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


module sev_seg(
    input [15:0] SW,
    output [15:0] LED,
    output reg [3:0] D0_AN,
    output [7:0] D0_SEG,
    output reg [3:0] D1_AN,
    output [7:0] D1_SEG,
    output reg [2:0] RGB1
    );
    reg [3:0] split0;
    reg [3:0] split1;
    
    always @(posedge CLK_100MHZ) begin
        cnt <= cnt + 1;
        D0_AN <= 0;
        D1_AN <= 0;

        // First four switches choose digit for bottom half of display (in binary)
        // Next four choose for top half
        split0 <= SW[7:4];
        split1 <= SW[3:0];
        
    end
     
    bto7s top (.x_in(split0), .s_out(D0_SEG));

    bto7s bottom (.x_in(split1), .s_out(D1_SEG));
        
    assign LED = SW; // Make switches look nicer
    
    
endmodule


module bto7s (
    input [3:0] x_in,
    output [7:0] s_out
);
    assign s_out[0] = (x_in[3] & x_in[2] & ~x_in[1] & x_in[0]) | 
                      (x_in[3] & ~x_in[2] & x_in[1] & x_in[0]) |
                      (~x_in[3] & x_in[2] & ~x_in[1] & ~x_in[0]) |
                      (~x_in[3] & ~x_in[2] & ~x_in[1] & x_in[0]);
                   
   // 5, 6, B, C, E, F                    
   assign s_out[1] = (~x_in[3] & x_in[2] & ~x_in[1] & x_in[0]) | 
                     (~x_in[3] & x_in[2] & x_in[1] & ~x_in[0]) |
                     (x_in[3] & ~x_in[2] & x_in[1] & x_in[0]) |
                     (x_in[3] & x_in[2] & ~x_in[1] & ~x_in[0]) |
                     (x_in[3] & x_in[2] & x_in[1]);
   
   // 2, C, E, F
   assign s_out[2] = (x_in == 8'h2 | x_in == 8'hC)? 1 : (x_in[3] & x_in[2] & x_in[1]);
   assign s_out[3] = (x_in == 8'h1 | x_in == 8'h4 | x_in == 8'h7 | x_in == 8'hA | x_in == 8'hF)? 1 : 0;
   assign s_out[4] = (x_in == 8'h1 | x_in == 8'h3 | x_in == 8'h4 | x_in == 8'h5 | x_in == 8'h7 | x_in == 8'h9)? 1 : 0;
   assign s_out[5] = (x_in == 8'h1 | x_in == 8'h2 | x_in == 8'h3 | x_in == 8'h7 | x_in == 8'hD)? 1 : 0;
   assign s_out[6] = (x_in == 8'h0 | x_in == 8'h1 | x_in == 8'h7 | x_in == 8'hC)? 1 : 0;
   assign s_out[7] = 1;
endmodule