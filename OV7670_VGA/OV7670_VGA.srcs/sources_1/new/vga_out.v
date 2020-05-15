`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 02:47:23
// Design Name: 
// Module Name: vga_out
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


module vga_out(
    input     wire      CLK,
    input   wire     RST,
    output  reg [3:0]   VGA_R,
    output  reg [3:0]   VGA_G,
    output  reg [3:0]   VGA_B,
    output  wire          VGA_HS,
    output  wire          VGA_VS,
    input    wire  [11:0]  DATAB,
    output  reg    [18:0] ADDR,
    output  wire            ENB,
    input    wire           CLK25_175MHZ
    );
    
/* VGA(640?��~480)?��p?��p?��?��?��?��?��[?��^?��ǂݍ�?��?�� */
`include "VGA_param.v"

localparam HSIZE = 10'd80;
localparam VSIZE = 10'd120;

/* ?��?��?��?��?��M?��?��?��?��?��?��H?��̐ڑ� */
(* mark_debug = "true" *)wire               PCK;
(* mark_debug = "true" *)wire    [9:0]   HCNT, VCNT;
assign PCK = CLK25_175MHZ; //?��?��?��?��?��p?��N?��?��?��b?��N?��?��ClockWiz?��?��?��?��?��?��?��ĂȂ�

syncgen syncgen_inst(
    .CLK        (CLK),
    .RST        (RST),
    .PCK        (PCK),
    .VGA_HS (VGA_HS),
    .VGA_VS (VGA_VS),
    .HCNT       (HCNT),
    .VCNT       (VCNT)
);

/* RGB?��o?��͂�?��?�� */
wire [9:0] HBLANK = HFRONT + HWIDTH + HBACK;
wire [9:0] VBLANK = VFRONT + VWIDTH + VBACK;

(* mark_debug = "true" *) wire disp_enable = (VBLANK <= VCNT) &&
    (HBLANK-10'd1 <= HCNT) && (HCNT < HPERIOD-10'd1);

(* mark_debug = "true" *) wire frame_end = VCNT == 0;//VCNT>525-1

/*BRAM?��ǂݏo?��?��?��͂�?��?��?��ƗL?��?��*/
assign ENB = disp_enable;

always @( posedge PCK ) begin
    if ( RST ) begin
        {VGA_R, VGA_G, VGA_B} <= 12'h000;
        ADDR <= 19'd0;
    end
    else if ( disp_enable ) begin
        //{VGA_R, VGA_G, VGA_B} <= {DATAB[11:8], DATAB[7:4], DATAB[3:0]};
        VGA_R <= DATAB[11:8];
        VGA_G <= DATAB[7:4];
        VGA_B <= DATAB[3:0];
        ADDR <= ADDR + 19'd1;
    end else if (frame_end) begin
        ADDR <= 19'd0;
    end else begin
        {VGA_R, VGA_G, VGA_B} <= 12'h000;
    end
    
end

endmodule
