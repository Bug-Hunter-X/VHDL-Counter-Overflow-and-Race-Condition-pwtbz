```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity fixed_counter is
  port (
    clk : in std_logic;
    rst : in std_logic;
    count : out integer range 0 to 15
  );
end entity;

architecture behavioral of fixed_counter is
  signal internal_count : integer range 0 to 15 := 0;
begin
  process (clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        internal_count <= 0;
      else
        if internal_count < 15 then
          internal_count <= internal_count + 1;
        else
          internal_count <= 0;
        end if;
      end if;
    end if;
  end process;
  count <= internal_count;
end architecture;
```