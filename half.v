`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2023 10:11:16
// Design Name: 
// Module Name: half
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


module half(    input a,
    input b,
    output sum,
    output cy


    );
        assign sum=a^b;
    assign cy=a&b;
 

endmodule
