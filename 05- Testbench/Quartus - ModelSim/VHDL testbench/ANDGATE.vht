                      
-- Vhdl Test Bench template for design  :  ANDGATE
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ANDGATE_vhd_tst IS
END ANDGATE_vhd_tst;

ARCHITECTURE ANDGATE_arch OF ANDGATE_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL I1 : STD_LOGIC;
SIGNAL I2 : STD_LOGIC;
SIGNAL O : STD_LOGIC;
COMPONENT ANDGATE
	PORT (
	I1 : IN STD_LOGIC;
	I2 : IN STD_LOGIC;
	O : OUT STD_LOGIC
	);
END COMPONENT;

BEGIN
	dut : ANDGATE
	PORT MAP (
-- list connections between master ports and signals
	I1 => I1,
	I2 => I2,
	O => O
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once 
        I1 <= '0';
        I2 <= '0';
        wait for 1 ps;
        I1 <= '0';
        I2 <= '1';
        wait for 1 ps;
        I1 <= '1';
        I2 <= '0';
        wait for 1 ps;
        I1 <= '1';
        I2 <= '1';
        wait for 1 ps;                     
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END ANDGATE_arch;