----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/07/2024 10:41:17 AM
-- Design Name: 
-- Module Name: Base_tb - Behavioral
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
use std.env.finish;

entity Base_tb is
--  Port ( );
end Base_tb;

architecture Behavioral of Base_tb is


    -- Inputs
    signal As : STD_LOGIC_VECTOR(5 downto 0) ;
    signal Bs : STD_LOGIC_VECTOR(5 downto 0) ;
    signal Op_codes : STD_LOGIC_VECTOR(4 downto 0);

    -- Output
    signal Results : STD_LOGIC_VECTOR(5 downto 0);

begin
    -- Instantiate the Unit Under Test 
   Base: entity work.base (Beh)
   port map (
        A => As,
        B => Bs,
        Op_code => Op_codes,
        Result => Results
    );

    -- Testbench process
    test_proc: process
    begin
        -- Test Case 1
        As <= "111001"; -- Operand A
        Bs <= "110101"; -- Operand B
        Op_codes <= "00000";
        wait for 10 ns;
        Op_codes <= "00001";
        wait for 10 ns;
        Op_codes <= "00010";
        wait for 10 ns;
        Op_codes <= "00011";
        wait for 10 ns;
        Op_codes <= "00100";
        wait for 10 ns;
        Op_codes <= "00101";
        wait for 10 ns;
        Op_codes <= "00110";
        wait for 10 ns;
        Op_codes <= "00111";
        wait for 10 ns;
        Op_codes <= "01001";
        wait for 10 ns;
        Op_codes <= "01010";
        wait for 10 ns;
        Op_codes <= "01011";
        wait for 10 ns;
        Op_codes <= "01100";
        wait for 10 ns;
        Op_codes <= "01101";
        wait for 10 ns;
        Op_codes <= "01110";
        wait for 10 ns;
        Op_codes <= "01111";
        wait for 10 ns;
        Op_codes <= "10000";
        wait for 10 ns;
        Op_codes <= "10001";
        wait for 10 ns;
        Op_codes <= "10010";
        wait for 10 ns;
        Op_codes <= "10011";
        wait for 10 ns;
        Op_codes <= "10100";
        wait for 10 ns;
        Op_codes <= "10101";
        wait for 10 ns;
        
finish;
      
    end process test_proc;



end Behavioral;
