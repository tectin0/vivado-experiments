----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.07.2024 12:22:45
-- Design Name: 
-- Module Name: add - Behavioral
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

entity adder is
  port (
    a : in integer;  -- Input signal a
    b : in integer;  -- Input signal b
    sum : out integer  -- Output signal representing the sum
  );
end entity adder;

architecture Structural of adder is
  signal int_sum : integer;  -- Internal signal to hold the sum
begin

  -- Perform the addition using XOR (for simplicity)
  int_sum <= a + b;

  -- Assign the internal sum to the output port
  sum <= int_sum;

end architecture Structural;
