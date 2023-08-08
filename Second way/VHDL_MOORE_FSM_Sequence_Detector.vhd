-- VHDL_MOORE_FSM_Sequence_Detector.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VHDL_MOORE_FSM_Sequence_Detector is
port (
 clock: in std_logic; --- clock signal
 reset: in std_logic; -- reset input
 sequence_in: in std_logic; -- binary sequence input
 detector_out: out std_logic -- output of the VHDL sequence detector
);
end VHDL_MOORE_FSM_Sequence_Detector;

architecture Behavioral of VHDL_MOORE_FSM_Sequence_Detector is
signal current_state:std_logic_vector (3 downto 0);
signal next_state:std_logic_vector (3 downto 0);
begin
-- Sequential memory of the VHDL MOORE FSM Sequence Detector
process(clock,reset)
begin
 if(reset='1') then
  current_state <= "0000";
 elsif(rising_edge(clock)) then
  current_state <= next_state;
 end if;
end process;
-- Next state logic of the VHDL MOORE FSM Sequence Detector
-- Combinational logic
process(current_state,sequence_in)
begin
 case(current_state) is
 when "0000" =>
  if(sequence_in='1') then
   next_state <= "0001";
  else
   next_state <= "0000";
  end if;
  
  when "0001" =>
  if(sequence_in='1') then
   next_state <= "0001";
  else
   next_state <= "0010";
  end if;
  
 when "0010" =>
  if(sequence_in='1') then
   next_state <= "0001";
  else
   next_state <= "0100";
  end if;  
  
   when "0100" =>
  if(sequence_in='1') then
   next_state <= "1001";
  else
   next_state <= "0000";
  end if;
  
  when "1001" =>
  if(sequence_in='1') then
   next_state <= "0001";
  else
   next_state <= "0010";
   end if; 
   when others =>
        next_state <= "0000"; 
 end case;
end process;

-- Output logic of the VHDL MOORE FSM Sequence Detector
process(current_state)
begin 
 case current_state is
 when "0000" =>
  detector_out <= '0';
 when "0001" =>
  detector_out <= '0'; 
 when "0010" => 
  detector_out <= '0'; 
 when "0100" =>
  detector_out <= '0'; 
 when "1001" =>
  detector_out <= '1';
  when others =>
   detector_out <= '0'; 
 end case;
end process;
end Behavioral;