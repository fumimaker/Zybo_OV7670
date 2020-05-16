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
    input wire CLK,
    input wire RST,
    input wire CAM_PCLK,
    input wire CAM_HREF,
    input wire CAM_VSYNC,
    input wire [7:0] data,
    output wire [18:0] ADDR,
    output reg [11:0] DATA_OUT,
    output reg ENA,
    output reg WENA,
    output wire CAM_XCLK
    );
    
    reg [18:0] address;
    reg [18:0] address_next;
    reg [1:0] wr_hold;
    reg [15:0] data_in;
    reg [15:0] vsync_count;
    
    assign ADDR = address;
    
    (* mark_debug = "true" *) wire [15:0] debug_data_in = data_in;
    (* mark_debug = "true" *) wire [1:0] debug_wr_hold = wr_hold;
    (* mark_debug = "true" *) wire [18:0] debug_address_next = address_next;
    (* mark_debug = "true" *) wire [11:0] debug_dataout = DATA_OUT;
    (* mark_debug = "true" *) wire [15:0] debug_vsync_count = vsync_count;
    
    always @( posedge CAM_PCLK ) begin
       if(RST) begin
            vsync_count <= 16'h0;
            address <= 19'd0;
            address_next <= 19'd0;
            wr_hold <= 2'd0;
            WENA <= 1;
            ENA <= 0;
        end else begin
        
            if(CAM_VSYNC)begin
                vsync_count <= vsync_count + 16'd1;
            end else begin
                vsync_count <= 16'd0;
            end
            
            if(vsync_count>4700) begin
                address <= 19'd0;
                address_next <= 19'd0;
                wr_hold <= 2'd0;
                ENA <= 0;
            end else begin
                DATA_OUT <= {data_in[15:12], data_in[10:7], data_in[4:1]};
                address <= address_next;
                ENA <= wr_hold[1];
                wr_hold <= {wr_hold[0], (CAM_HREF & ~wr_hold[0])};
                data_in <= {data_in[7:0], data};
                if (wr_hold[1]==1) begin
                    address_next <= address_next + 19'd1;
                end
            end
        end
    end
endmodule
