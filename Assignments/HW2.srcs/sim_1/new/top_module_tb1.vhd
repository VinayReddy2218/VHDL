----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/08/2024 01:08:53 PM
-- Design Name: 
-- Module Name: top_module_tb1 - Behavioral
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

use std.env.finish;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_module_tb1 is
--  Port ( );
end top_module_tb1;

architecture Behavioral of top_module_tb1 is

signal As, Bs, Cs, Ds,Es,Fs, Gs, Hs: std_logic_vector(5 downto 0);
signal Op_code_CU11s,Op_code_CU12s,Op_code_CU13s,Op_code_CU14s :std_logic_vector(4 downto 0);
signal Op_code_CU21s,Op_code_CU22s,Op_code_CU23s,Op_code_CU24s :std_logic_vector(4 downto 0);
signal Op_code_CU31s,Op_code_CU32s,Op_code_CU33s,Op_code_CU34s :std_logic_vector(4 downto 0);
signal Result_CU31s,Result_CU32s,Result_CU33s,Result_CU34s: std_logic_vector(5 downto 0);
begin
dut: entity work.top_module(Behavioral)
port map (A => As,B => Bs,C => Cs,D => Ds,E =>Es,F=>Fs,G =>Gs,H=>Hs,Op_code_CU11=>Op_code_CU11s,Op_code_CU12=>Op_code_CU12s,
Op_code_CU13=>Op_code_CU13s,Op_code_CU14=>Op_code_CU14s,Op_code_CU21=>Op_code_CU21s,Op_code_CU22=>Op_code_CU22s,
Op_code_CU23=>Op_code_CU23s,Op_code_CU24=>Op_code_CU24s,Op_code_CU31=>Op_code_CU31s,Op_code_CU32=>Op_code_CU32s,
Op_code_CU33=>Op_code_CU33s,Op_code_CU34=>Op_code_CU34s,Result_CU31=>Result_CU31s,Result_CU32=>Result_CU32s,
Result_CU33=>Result_CU33s,Result_CU34=>Result_CU34s);
-- Test Cases
process
begin

As<="101000";Bs<="011100";Cs<="110100";Ds<="101001";Es<="010110";Fs<="011010";Gs<="010110";Hs<="011010";
        Op_code_CU11s<= "10100"; --ROR_Shift_output
        Op_code_CU12s<= "00111"; --arithmatic_sub_output_difference
        Op_code_CU13s<= "00010"; --Nand_output1
        Op_code_CU14s<= "00100"; --Xor_output1
        Op_code_CU21s<= "00001";-- or output
        Op_code_CU22s<= "00001";-- or output
      
        Op_code_CU23s<= "00110";  -- add output
        Op_code_CU24s<= "00001";-- or output
        Op_code_CU31s<= "00110";
        Op_code_CU32s<= "01001"; 
        Op_code_CU33s<= "01001";
        Op_code_CU34s<= "00101";wait for 10ns;-- greater than;

-- End simulation
finish;
end process;


end Behavioral;
