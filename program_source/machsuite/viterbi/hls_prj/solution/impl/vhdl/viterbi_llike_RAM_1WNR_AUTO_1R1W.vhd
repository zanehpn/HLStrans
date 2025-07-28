-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity viterbi_llike_RAM_1WNR_AUTO_1R1W is 
    generic(
        MEM_TYPE        : string    := "auto"; 
        DataWidth       : integer   := 64; 
        AddressWidth    : integer   := 14;
        AddressRange    : integer   := 8960
    ); 
    port (
        address0    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce0         : in std_logic; 
        d0          : in std_logic_vector(DataWidth-1 downto 0); 
        we0         : in std_logic; 
        q0          : out std_logic_vector(DataWidth-1 downto 0);
        address1    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce1         : in std_logic; 
        q1          : out std_logic_vector(DataWidth-1 downto 0);
        address2    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce2         : in std_logic; 
        q2          : out std_logic_vector(DataWidth-1 downto 0);
        reset           : in std_logic; 
        clk             : in std_logic 
    ); 
end entity; 

architecture rtl of viterbi_llike_RAM_1WNR_AUTO_1R1W is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address2_tmp : std_logic_vector(AddressWidth-1 downto 0);

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
attribute syn_ramstyle : string; 
attribute ram_style : string;


shared variable ram0 : mem_array; 
attribute syn_ramstyle of ram0 : variable is "auto";
attribute ram_style of ram0 : variable is MEM_TYPE;

shared variable ram1 : mem_array; 
attribute syn_ramstyle of ram1 : variable is "auto";
attribute ram_style of ram1 : variable is MEM_TYPE;


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
memory_access_guard_1: process (address1) 
begin
    address1_tmp <= address1;
--synthesis translate_off
    if (CONV_INTEGER(address1) > AddressRange-1) then
        address1_tmp <= (others => '0');
    else 
        address1_tmp <= address1;
    end if;
--synthesis translate_on
end process;
memory_access_guard_2: process (address2) 
begin
    address2_tmp <= address2;
--synthesis translate_off
    if (CONV_INTEGER(address2) > AddressRange-1) then
        address2_tmp <= (others => '0');
    else 
        address2_tmp <= address2;
    end if;
--synthesis translate_on
end process;

p_memory_access_r_1: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce1 = '1') then 
            q1 <= ram0(CONV_INTEGER(address1_tmp));
        end if;
    end if;
end process;
p_memory_access_r_2: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce2 = '1') then 
            q2 <= ram1(CONV_INTEGER(address2_tmp));
        end if;
    end if;
end process;

-- write to all ram
p_memory_access_w_0: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram0(CONV_INTEGER(address0)) := d0; 
            end if;

            q0 <= ram0(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;
p_memory_access_w_1: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram1(CONV_INTEGER(address0)) := d0; 
            end if;

        end if;
    end if;
end process;

end rtl;
