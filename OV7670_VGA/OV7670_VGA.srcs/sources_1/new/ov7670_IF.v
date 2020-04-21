`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 16:12:06
// Design Name: 
// Module Name: ov7670_IF
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


module ov7670_IF(
    input RST,
    input CAM_PCLK,
    input CAM_HREF,
    input CAM_VSYNC,
    input [7:0] data,
    output reg [11:0] DATA_OUT,
    output reg [18:0] ADDR,
    output reg ENA,
    output reg WENA,
    output PCLK
    );
    
    wire PCLK = CAM_PCLK;
    reg [9:0] HCNT, VCNT;
    //アイパッドに書いた波形のアルゴリズムを実装するだけ。
    always @( posedge CAM_PCLK ) begin
        if (RST) begin
            HCNT <= 10'd0;
            VCNT <= 10'b0;
            end
        else begin
            if ()
            end
    end
endmodule
