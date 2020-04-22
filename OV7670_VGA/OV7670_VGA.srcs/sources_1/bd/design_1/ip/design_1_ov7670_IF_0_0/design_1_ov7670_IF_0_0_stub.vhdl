-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Apr 23 01:46:06 2020
-- Host        : LAPTOP-AG87OV99 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_ov7670_IF_0_0/design_1_ov7670_IF_0_0_stub.vhdl
-- Design      : design_1_ov7670_IF_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ov7670_IF_0_0 is
  Port ( 
    RST : in STD_LOGIC;
    CAM_PCLK : in STD_LOGIC;
    CAM_HREF : in STD_LOGIC;
    CAM_VSYNC : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DATA_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ADDR : out STD_LOGIC_VECTOR ( 18 downto 0 );
    ENA : out STD_LOGIC;
    WENA : out STD_LOGIC
  );

end design_1_ov7670_IF_0_0;

architecture stub of design_1_ov7670_IF_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "RST,CAM_PCLK,CAM_HREF,CAM_VSYNC,data[7:0],DATA_OUT[11:0],ADDR[18:0],ENA,WENA";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ov7670_IF,Vivado 2019.2";
begin
end;
