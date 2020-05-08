`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 02:51:20
// Design Name: 
// Module Name: syncgen
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
// ?¿½?¿½?¿½?¿½Íƒe?¿½X?¿½g?¿½Å‚ï¿½
//////////////////////////////////////////////////////////////////////////////////


module syncgen(
    input    wire          CLK,
    input    wire          RST,
    input    wire          PCK, //25.174MHz
    output  reg         VGA_HS,
    output  reg         VGA_VS,
    output  reg [9:0]   HCNT,
    output  reg [9:0]   VCNT
    );
    
/* VGA(640?~480)?p?p?????[?^?????? */
`include "VGA_param.v"


/* ?????J?E???^ */
wire hcntend = (HCNT==HPERIOD-10'h001);
always @( posedge PCK ) begin
    if ( RST )
        HCNT <= 10'h000;
    else if ( hcntend )
        HCNT <= 10'h000;
    else begin
        HCNT <= HCNT + 10'h001;
    end
end

/* ?????J?E???^ */
always @( posedge PCK ) begin
    if ( RST ) begin
        VCNT <= 10'h000;
    end else if ( hcntend ) begin
        if ( VCNT == VPERIOD - 10'h001 ) begin
            VCNT <= 10'h000;
        end else
            VCNT <= VCNT + 10'h001;
    end
end

/* ?????M??10bit */
wire [9:0] hsstart = HFRONT - 10'h001;
wire [9:0] hsend   = HFRONT + HWIDTH - 10'h001;
wire [9:0] vsstart = VFRONT;
wire [9:0] vsend   = VFRONT + VWIDTH;

always @( posedge PCK ) begin
    if ( RST )
        VGA_HS <= 1'b1;
    else if ( HCNT==hsstart )
        VGA_HS <= 1'b0;
    else if ( HCNT==hsend )
        VGA_HS <= 1'b1;
end

always @( posedge PCK ) begin
    if ( RST )
        VGA_VS <= 1'b1;
    else if ( HCNT==hsstart ) begin
        if ( VCNT==vsstart )
            VGA_VS <= 1'b0;
        else if ( VCNT==vsend )
            VGA_VS <= 1'b1;
    end
end
endmodule
