------------------------------------------------------------------------------------


-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.02.2024 16:39:30
-- Design Name: 
-- Module Name: CU - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Base is
generic (d_w_CU: integer := 6);
Port (
A : in STD_LOGIC_VECTOR (d_w_CU - 1 downto 0); 
B : in STD_LOGIC_VECTOR (d_w_CU - 1 downto 0); 
Op_code : in STD_LOGIC_VECTOR (4 downto 0); 
Result: out STD_LOGIC_VECTOR (d_w_CU - 1 downto 0));
end Base;

architecture Beh of Base is

signal temp_mul:std_logic_vector(11 downto 0);
begin
 
process(A, B,Op_code,temp_mul)
    begin
        case Op_code is
            when "00000" =>  -- AND
                Result <= A and B;
            when "00001" =>  -- OR
                Result <= A or B;
            when "00010" =>  -- NAND
                Result <= not (A and B);
            when "00011" =>  -- NOR
                Result <= not (A or B);
            when "00100" =>  -- XOR
                Result <= A xor B;
            when "00101" =>  -- XNOR
                Result <= not (A xor B);
            when "00110" =>  -- Addition
                Result <= A + B;
            when "00111" =>  -- Subtraction
                Result <= A-B;
            when "01000" =>  -- Multiplication
                Result <= temp_mul(11 downto 6);
            when "01001" =>  -- Greater than
                 if A>B then Result <= "111111" ;
                 else
                 Result <="000000";
                 end if;

            when "01010" =>  -- Less than
                if A<B then Result <= "111111" ;
                 else
                 Result <="000000";
                 end if;
            when "01011" =>  -- Equal to
              if A=B then Result <= "111111" ;
                 else
                 Result <="000000";
                 end if;
            when "01100" =>  -- Greater than or equal to
                if A>=B then Result <= "111111" ;
                 else
                 Result <="000000";
                 end if;
            when "01101" =>  -- Less than or equal to
                if A<=B then Result <= "111111" ;
                 else
                 Result <="000000";
                 end if;
            when "01110" =>  -- Not equal to
                if A/=B then Result <= "111111" ;
                 else
                 Result <="000000";
                 end if;
            when "01111" => -- sll
                Result <= to_stdlogicvector(to_bitvector(A) sll to_integer(unsigned(B)));
            when "10000" => -- sla
                Result <=to_stdlogicvector(to_bitvector(A) sla to_integer(unsigned(B)));
            when "10001" => --SRL
                Result <= to_stdlogicvector(to_bitvector(A) srl to_integer(unsigned(B)));
            when "10010" => -- SRA
                Result <= to_stdlogicvector(to_bitvector(A) sra to_integer(unsigned(B)));
            when "10011" => -- ROL
                Result <= to_stdlogicvector(to_bitvector(A) rol to_integer(unsigned(B)));
            when "10100" => -- ROR
                Result <= to_stdlogicvector(to_bitvector(A) ror to_integer(unsigned(B)));
            when others =>
                Result <= (others => '0'); -- Default case for invalid Op_c

end case;
end process;
temp_mul<= std_logic_vector(unsigned (A)* unsigned(B));
end Beh;
