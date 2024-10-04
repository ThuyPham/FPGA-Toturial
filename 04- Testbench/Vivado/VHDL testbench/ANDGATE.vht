                      
-- VHDL testbench for AND Gate
-- 
-- Simulation tool : Run Simulation on Vivado's built-in Simulator
-- 

library IEEE;
use IEEE.std_logic_1164.all;
use std.env.finish;

-- creat VHDL testbench entity has no input or output
entity and_vhdl_tb is
    end entity and_vhdl_tb;

-- describe the architecture of VHDL testbench entity
architecture behave of and_vhdl_tb is 
    signal r_I1: std_logic;
    signal r_I2: std_logic;
    signal w_O: std_logic;
begin
    -- instantiate the uut, using and_vhdl entity in and_vhdl_tb architecture
    -- the Working Library: contains the compiled version of your design. The contents of a working library change every time you compile your design.
    -- the default working library is named "work"
    uut : entity work.ANDGATE
        port map(
            I1 => r_I1,
            I2 => r_I2,
            O => w_O      
        );
    -- start at the begining of the simulation
    process is
        begin
            r_I1 <= '0';
            r_I2 <= '0';
            wait for 5ps;
            r_I1 <= '0';
            r_I2 <= '1';
            wait for 5ps;
            r_I1 <= '1';
            r_I2 <= '0';
            wait for 5ps;
            r_I1 <= '1';
            r_I2 <= '1';
            wait for 5ps;
            --finish;
            wait;
    end process;
end behave;
