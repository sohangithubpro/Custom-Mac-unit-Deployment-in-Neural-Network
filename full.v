`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2023 15:25:13
// Design Name: 
// Module Name: full
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


module full(input a,
    input b,
    input c,
    output sum,
    output cy
    );
    
    assign sum=a^b^c;
    assign cy=(a&b)|(b&c)|(c&a);
endmodule

