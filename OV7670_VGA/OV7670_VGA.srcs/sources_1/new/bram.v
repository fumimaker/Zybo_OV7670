`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 03:54:30
// Design Name: 
// Module Name: bram
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
//////////////////////////////////////////////////////////////////////////////////


module bram(
    input CLK,
    input RST,
    input wire [18:0] addr,
    input [7:0] din,
    output reg [7:0] dout,
    input we,
    input re
    );
     (* ram_style = "BLOCK" *) reg [15:0] bram[0:18]; 
     
    always @(posedge CLK) begin
        if (we) begin
            bram[addr] <= din;
            end
        if (re) begin
            dout <= bram[addr];
            end
        end
endmodule
