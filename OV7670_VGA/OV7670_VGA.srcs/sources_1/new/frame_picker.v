`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/22 21:58:27
// Design Name: 
// Module Name: frame_picker
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


module frame_picker(
    input [11:0] DATAB,
    output [18:0] ADDR,
    output ENB,
    output [12:0] DATA_OUT,
    input PCK,
    input HCNT,
    input VCNT
    );
    
    always @(posedge PCK) begin
        
    end
endmodule
