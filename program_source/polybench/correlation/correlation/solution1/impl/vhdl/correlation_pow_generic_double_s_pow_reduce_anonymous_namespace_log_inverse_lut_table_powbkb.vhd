-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_inverse_lut_table_powbkb is 
    generic(
             DataWidth     : integer := 6; 
             AddressWidth     : integer := 6; 
             AddressRange    : integer := 64
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_inverse_lut_table_powbkb is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "100000", 1 => "100000", 2 => "100000", 3 => "011111", 
    4 => "011111", 5 => "011110", 6 => "011110", 7 => "011101", 
    8 => "011101", 9 => "011101", 10 => "011100", 11 => "011100", 
    12 => "011011", 13 => "011011", 14 => "011011", 15 => "011010", 
    16 => "011010", 17 => "011010", 18 => "011001", 19 => "011001", 
    20 => "011001", 21 => "011001", 22 => "011000", 23 => "011000", 
    24 => "011000", 25 => "011000", 26 => "010111", 27 => "010111", 
    28 => "010111", 29 => "010111", 30 => "010110", 31 => "010110", 
    32 => "101011", 33 => "101011", 34 => "101010", 35 => "101010", 
    36 => "101001", 37 => "101001", 38 => "101001", 39 => "101000", 
    40 => "101000", 41 => "101000", 42 => "100111", 43 => "100111", 
    44 => "100110", 45 => "100110", 46 => "100110", 47 => "100101", 
    48 => "100101", 49 => "100101", 50 => "100100", 51 => "100100", 
    52 => "100100", 53 => "100100", 54 => "100011", 55 => "100011", 
    56 => "100011", 57 => "100010", 58 => "100010", 59 => "100010", 
    60 => "100010", 61 => "100001", 62 => "100001", 63 => "100001");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

