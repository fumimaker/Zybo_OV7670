`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/18 03:37:14
// Design Name: 
// Module Name: blink
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


module blink(
    input CLK,
    output [3:0] OUT
);

parameter CNT_1SEC = 27'd124999999;  // 125MHz clk for 1sec
reg [26:0] cnt = 27'd0;
reg onoff = 1'd0;

always @(posedge CLK) begin
    if (cnt == CNT_1SEC) begin
        cnt <= 27'd0;
        onoff <= ~onoff;
    end
    else begin
        cnt <= cnt + 27'd1;
    end
end

assign OUT = {onoff, onoff, onoff, onoff};

endmodule
