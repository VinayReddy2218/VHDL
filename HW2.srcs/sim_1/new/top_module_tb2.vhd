------------------------------------------------------------------------------------
---- Company: 
---- Engineer: 
---- 
---- Create Date: 02/08/2024 04:13:59 PM
---- Design Name: 
---- Module Name: top_module_tb2 - Behavioral
---- Project Name: 
---- Target Devices: 
---- Tool Versions: 
---- Description: 
---- 
---- Dependencies: 
---- 
---- Revision:
---- Revision 0.01 - File Created
---- Additional Comments:
---- 
------------------------------------------------------------------------------------


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use std.env.finish;

---- Uncomment the following library declaration if using
---- arithmetic functions with Signed or Unsigned values
----use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx leaf cells in this code.
----library UNISIM;
----use UNISIM.VComponents.all;

--entity top_module_tb2 is
----  Port ( );
--end top_module_tb2;

--architecture Behavioral of top_module_tb2 is

--signal As, Bs, Cs, Ds,Es,Fs, Gs, Hs: std_logic_vector(5 downto 0);
--signal Op_code_CU11s,Op_code_CU12s,Op_code_CU13s,Op_code_CU14s :std_logic_vector(4 downto 0);
--signal Op_code_CU21s,Op_code_CU22s,Op_code_CU23s,Op_code_CU24s :std_logic_vector(4 downto 0);
--signal Op_code_CU31s,Op_code_CU32s,Op_code_CU33s,Op_code_CU34s :std_logic_vector(4 downto 0);
--signal Result_CU31s,Result_CU32s,Result_CU33s,Result_CU34s: std_logic_vector(5 downto 0);
--begin
--dut: entity work.top_module(Behavioral)
--port map (A => As,B => Bs,C => Cs,D => Ds,E =>Es,F=>Fs,G =>Gs,H=>Hs,Op_code_CU11=>Op_code_CU11s,Op_code_CU12=>Op_code_CU12s,
--Op_code_CU13=>Op_code_CU13s,Op_code_CU14=>Op_code_CU14s,Op_code_CU21=>Op_code_CU21s,Op_code_CU22=>Op_code_CU22s,
--Op_code_CU23=>Op_code_CU23s,Op_code_CU24=>Op_code_CU24s,Op_code_CU31=>Op_code_CU31s,Op_code_CU32=>Op_code_CU32s,
--Op_code_CU33=>Op_code_CU33s,Op_code_CU34=>Op_code_CU34s,Result_CU31=>Result_CU31s,Result_CU32=>Result_CU32s,
--Result_CU33=>Result_CU33s,Result_CU34=>Result_CU34s);
---- Test Cases
--process
--begin

----As<="101000";Bs<="011100";Cs<="110100";Ds<="000100";Es<="010110";Fs<="000010";Gs<="000110";Hs<="001010";
----        Op_code_CU11s<= "00000"; --and
----        Op_code_CU12s<= "01111"; --LSL
----        Op_code_CU13s<= "10001"; --LSR
----        Op_code_CU14s<= "01000"; --mult
----        Op_code_CU21s<= "00000";
----        Op_code_CU22s<= "10011";-- rol
----        Op_code_CU23s<= "00100"; 
----        Op_code_CU24s<= "01110";-- not equal
----        Op_code_CU31s<= "00110";
----        Op_code_CU32s<= "01001"; 
----        Op_code_CU33s<= "00001";---or
----        Op_code_CU34s<= "00101";wait for 10ns;

--As<="101000";Bs<="011100";Cs<="110100";Ds<="000100";Es<="010110";Fs<="000010";Gs<="000110";Hs<="001010";
--        Op_code_CU11s<= "00000"; --and --main
--        Op_code_CU12s<= "01111"; --sll --main
--        Op_code_CU13s<= "10001"; --srl --main
--        Op_code_CU14s<= "01000"; --multiplication --main
--        Op_code_CU21s<= "00000"; --and
--        Op_code_CU22s<= "10011";-- rol --main
--        Op_code_CU23s<= "01110"; -- not equal
--        Op_code_CU24s<= "01110";  -- not equal --main
--        Op_code_CU31s<= "00001"; --or 
--        Op_code_CU32s<= "00100"; --xor
--        Op_code_CU33s<= "00001"; -- or --main
--        Op_code_CU34s<= "00010"; -- nand 
--        wait for 10ns;-- or --main

---- End simulation
--finish;
--end process;


--end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.02.2024 17:22:34
-- Design Name: 
-- Module Name: final_module_tb2 - Behavioral
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

entity top_module_tb2 is
--  Port ( );
end top_module_tb2;

architecture Behavioral of top_module_tb2 is

constant d_w_CU_c : integer := 6;
signal As,Bs,Cs,Ds,Es,Fs,Gs,Hs  : std_logic_vector(d_w_CU_c -1 downto 0);
signal Op_code_CU11s,Op_code_CU12s,Op_code_CU13s,Op_code_CU14s :std_logic_vector(4 downto 0);
signal Op_code_CU21s,Op_code_CU22s,Op_code_CU23s,Op_code_CU24s :std_logic_vector(4 downto 0);
signal Op_code_CU31s,Op_code_CU32s,Op_code_CU33s,Op_code_CU34s :std_logic_vector(4 downto 0);
signal Result_CU31s,Result_CU32s,Result_CU33s,Result_CU34s: std_logic_vector(5 downto 0);
begin
top: entity work.top_module(Behavioral)
generic map (d_w_CU => d_w_CU_c)
    port map( A => As, B => Bs, C=>Cs,D=>Ds,E=>Es,F=>Fs,G=>Gs,H=>Hs,
    Op_code_CU11=>Op_code_CU11s,Op_code_CU12=>Op_code_CU12s,
Op_code_CU13=>Op_code_CU13s,Op_code_CU14=>Op_code_CU14s,Op_code_CU21=>Op_code_CU21s,Op_code_CU22=>Op_code_CU22s,
Op_code_CU23=>Op_code_CU23s,Op_code_CU24=>Op_code_CU24s,Op_code_CU31=>Op_code_CU31s,Op_code_CU32=>Op_code_CU32s,
Op_code_CU33=>Op_code_CU33s,Op_code_CU34=>Op_code_CU34s,Result_CU31=>Result_CU31s,Result_CU32=>Result_CU32s,
Result_CU33=>Result_CU33s,Result_CU34=>Result_CU34s);
    stim: process
        begin 
        As<="101000";Bs<="011100";Cs<="110100";Ds<="000100";Es<="010110";Fs<="000010";Gs<="000110";Hs<="001010";
       Op_code_CU11s <= "00000"; --and --main
        Op_code_CU12s<= "01111"; --sll --main
       Op_code_CU13s <= "10001"; --srl --main
       Op_code_CU14s <= "01000"; --multiplication --main
       Op_code_CU21s <= "00000"; --and
        Op_code_CU22s<= "10011";-- rol --main
        Op_code_CU23s<= "01110"; -- not equal
        Op_code_CU24s<= "01110";  -- not equal --main
        Op_code_CU31s<= "00001"; --or 
        Op_code_CU32s<= "00100"; --xor
        Op_code_CU33s<= "00001"; -- or --main
        Op_code_CU34s<= "00010"; -- nand 
        wait for 10ns;-- or --main
        
finish;
    end process stim;


end Behavioral;
