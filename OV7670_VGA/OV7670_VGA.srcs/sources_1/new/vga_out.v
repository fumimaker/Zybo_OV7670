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
    input               CLK,
    input               RST,
    input          [15:0]   DATA,
    output  reg [3:0]   VGA_R,
    output  reg [3:0]   VGA_G,
    output  reg [3:0]   VGA_B,
    output              VGA_HS,
    output              VGA_VS
    );
    
/* VGA(640�~480)�p�p�����[�^�ǂݍ��� */
`include "vga_param.vh"

localparam HSIZE = 10'd80;
localparam VSIZE = 10'd120;

/* �����M���쐬��H�̐ڑ� */
wire               PCK;
wire    [9:0]   HCNT, VCNT;

syncgen syncgen_inst(
    .CLK        (CLK),
    .RST        (RST),
    .PCK        (PCK),
    .VGA_HS (VGA_HS),
    .VGA_VS (VGA_VS),
    .HCNT       (HCNT),
    .VCNT       (VCNT)
);

/* RGB�o�͂��쐬 */
wire [9:0] HBLANK = HFRONT + HWIDTH + HBACK;
wire [9:0] VBLANK = VFRONT + VWIDTH + VBACK;

wire disp_enable = (VBLANK <= VCNT) && (HBLANK-10'd1 <= HCNT) && (HCNT < HPERIOD-10'd1);


always @( posedge PCK ) begin
    if ( RST )
        {VGA_R, VGA_G, VGA_B} <= 12'h000;
    else if ( disp_enable )
        {VGA_R, VGA_G, VGA_B} <=
                    { {4{rgb_1[2]}}, {4{rgb_1[1]}}, {4{rgb_1[0]}} };
    else
        {VGA_R, VGA_G, VGA_B} <= 12'h000;
end

endmodule
