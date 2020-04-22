-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Apr 23 01:48:11 2020
-- Host        : LAPTOP-AG87OV99 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/ivr/Documents/GitHub/Zybo_OV7670/OV7670_VGA/OV7670_VGA.srcs/sources_1/bd/design_1/ip/design_1_syncgen_0_0/design_1_syncgen_0_0_stub.vhdl
-- Design      : design_1_syncgen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_syncgen_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    PCK : in STD_LOGIC;
    VGA_HS : out STD_LOGIC;
    VGA_VS : out STD_LOGIC;
    HCNT : out STD_LOGIC_VECTOR ( 9 downto 0 );
    VCNT : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );

end design_1_syncgen_0_0;

architecture stub of design_1_syncgen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,RST,PCK,VGA_HS,VGA_VS,HCNT[9:0],VCNT[9:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "syncgen,Vivado 2019.2";
begin
end;
