----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.07.2024 21:10:06
-- Design Name: 
-- Module Name: add_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_tb is
--  Port ( );
end adder_tb;

architecture Behavioral of adder_tb is
  component adder is
    port (
      a : in integer;  -- Input signal a
      b : in integer;  -- Input signal b
      sum : out integer  -- Output signal representing the sum
    );
  end component adder;

  signal a_tb, b_tb : integer := 0;
  signal sum_tb : integer := 0;
  signal clk : std_logic := '0';
  
  constant clk_period : time := 2 ns;

begin

  process(clk)
  begin
    clk <= not clk after clk_period/2;
  end process;

  UTT: adder port map (
    a => a_tb,
    b => b_tb,
    sum => sum_tb
  );
  
  process(clk)
  
  begin
  if rising_edge(clk) then
    a_tb <= 4;  -- Represents value 2
    b_tb <= 1;  -- Represents value 3
  else
    a_tb <= 0;
    b_tb <= 0;
  end if;
end process;

end Behavioral;
