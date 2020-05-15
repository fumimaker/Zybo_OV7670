`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/15 20:10:49
// Design Name: 
// Module Name: ov7670_test
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


module ov7670_test(
    input wire CLK, //K18 に配線してる125MHzのPLクロック
    input wire RST, //ボタン4に繋がってるやつ
    input wire CAM_PCLK,//カメラから来るピクセルクロック
    input wire CAM_HREF,
    input wire CAM_VSYNC,
    output wire CAM_XCLK, // カメラを動かすためのクロック。12~48MHz(typ.24MHz)を供給しないとだめ
    input wire [7:0]data,
    output wire [3:0]VGA_R,
    output wire[3:0] VGA_G,
    output wire [3:0]VGA_B,
    output wire VGA_VSYNC,
    output wire VGA_HSYNC
    );
    
    assign CAM_XCLK = clk_24MHZ;
    wire [11:0]BRAM_DATAB;
    wire [18:0]BRAM_ADDRB;
    wire BRAM_ENB;
    (* mark_debug = "true" *) wire [11:0]BRAM_DATAA;
    (* mark_debug = "true" *)wire [18:0]BRAM_ADDRA;
    (* mark_debug = "true" *)wire BRAM_ENA;
    (* mark_debug = "true" *)wire BRAM_WENA;
    wire clk_25_175MHZ;
    wire clk_24MHZ;
    
    clk_wiz_0 clk_wiz_0_inst(
        // Clock out ports
        .CLKOUT_25_175MHZ(clk_25_175MHZ),     // output CLKOUT_25_175MHZ
        .CLKOUT_24MHZ(clk_24MHZ),     // output CLKOUT_24MHZ
        // Status and control signals
        .reset(RST), // input reset
       // Clock in ports
        .CLK(CLK) // input CLK
    );
        
    ov7670_IF ov7670_IF_inst(
        .CLK(CLK),
        .RST(RST),//
        .CAM_PCLK(CAM_PCLK),//
        .CAM_HREF(CAM_HREF),//
        .CAM_VSYNC(CAM_VSYNC),//
        .data(data),//
        .DATA_OUT(BRAM_DATAA),//
        .ADDR(BRAM_ADDRA),//
        .ENA(BRAM_ENA),//
        .WENA(BRAM_WENA),//
        .CAM_XCLK(clk_24MHZ)//
    );
endmodule
