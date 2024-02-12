----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/08/2024 11:49:50 AM
-- Design Name: 
-- Module Name: top_module - Behavioral
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

entity top_module is
generic (d_w_CU: integer := 6);
 Port (
        A : in STD_LOGIC_VECTOR (5 downto 0);  -- Operand A
        B : in STD_LOGIC_VECTOR (5 downto 0);  -- Operand B
        C : in STD_LOGIC_VECTOR (5 downto 0);  -- Operand C
        D : in STD_LOGIC_VECTOR (5 downto 0);  -- Operand D
        E:  in STD_LOGIC_VECTOR (5 downto 0);  -- Operand E
        F:  in STD_LOGIC_VECTOR (5 downto 0);  -- Operand F 
        G:  in STD_LOGIC_VECTOR (5 downto 0);  -- Operand G 
        H:  in STD_LOGIC_VECTOR (5 downto 0);  -- Operand H
        Op_code_CU11:in STD_LOGIC_VECTOR (4 downto 0);
        Op_code_CU12:in STD_LOGIC_VECTOR (4 downto 0);
        Op_code_CU13:in STD_LOGIC_VECTOR (4 downto 0);
        Op_code_CU14:in STD_LOGIC_VECTOR (4 downto 0);
        Op_code_CU21:in STD_LOGIC_VECTOR (4 downto 0);
        Op_code_CU22:in STD_LOGIC_VECTOR (4 downto 0);
        Op_code_CU23:in STD_LOGIC_VECTOR (4 downto 0);
        Op_code_CU24:in STD_LOGIC_VECTOR (4 downto 0);
        Op_code_CU31:in STD_LOGIC_VECTOR (4 downto 0);
        Op_code_CU32:in STD_LOGIC_VECTOR (4 downto 0);
        Op_code_CU33:in STD_LOGIC_VECTOR (4 downto 0);
        Op_code_CU34:in STD_LOGIC_VECTOR (4 downto 0);
        Result_CU31: out STD_LOGIC_VECTOR (5 downto 0);
        Result_CU32:out STD_LOGIC_VECTOR (5 downto 0);
        Result_CU33:out STD_LOGIC_VECTOR (5 downto 0);
        Result_CU34:out STD_LOGIC_VECTOR (5 downto 0)
  );
end top_module;

architecture Behavioral of top_module is
signal Result_CU11,Result_CU12,Result_CU13,Result_CU14,Result_CU21,Result_CU22,Result_CU23,Result_CU24:std_logic_vector(5 downto 0);
begin
CU11:entity work.Base(Beh)
port map(A=>A, B=>B, Op_code=>Op_code_CU11,Result=>Result_CU11);
CU12:entity work.Base(Beh)
port map(A=>C, B=>D, Op_code=>Op_code_CU12,Result=>Result_CU12);
CU13:entity work.Base(Beh)
port map(A=>E, B=>F, Op_code=>Op_code_CU13,Result=>Result_CU13);
CU14:entity work.Base(Beh)
port map(A=>G, B=>H, Op_code=>Op_code_CU14,Result=>Result_CU14);

CU21:entity work.Base(Beh)
port map(A=>Result_CU11, B=>Result_CU12, Op_code=>Op_code_CU21,Result=>Result_CU21);
CU22:entity work.Base(Beh)
port map(A=>Result_CU11, B=>Result_CU12, Op_code=>Op_code_CU22,Result=>Result_CU22);
CU23:entity work.Base(Beh)
port map(A=>Result_CU13, B=>Result_CU14, Op_code=>Op_code_CU23,Result=>Result_CU23);
CU24:entity work.Base(Beh)
port map(A=>Result_CU13, B=>Result_CU14, Op_code=>Op_code_CU21,Result=>Result_CU24);

CU31:entity work.Base(Beh)
port map(A=>Result_CU22, B=>Result_CU21, Op_code=>Op_code_CU31,Result=>Result_CU31);

CU32:entity work.Base(Beh)
port map(A=>Result_CU21, B=>Result_CU23, Op_code=>Op_code_CU32,Result=>Result_CU32);

CU33:entity work.Base(Beh)
port map(A=>Result_CU22, B=>Result_CU24, Op_code=>Op_code_CU33,Result=>Result_CU33);

CU34:entity work.Base(Beh)
port map(A=>Result_CU21, B=>Result_CU22, Op_code=>Op_code_CU34,Result=>Result_CU34);

end Behavioral;
--------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
 
-- Create Date: 08.02.2024 16:36:32
-- Design Name: 
-- Module Name: final_module - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
 
-- Dependencies: 
 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
 
--------------------------------------------------------------------------------



