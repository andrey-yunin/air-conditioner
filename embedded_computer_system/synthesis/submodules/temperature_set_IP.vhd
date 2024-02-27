
   LIBRARY ieee ;
   USE ieee.std_logic_1164.all;
   use IEEE.numeric_std.all;

   --Bus interface
   ENTITY temperature_set_IP IS
      PORT(    
         clk               : IN std_logic;
         reset_n           : IN std_logic;
         cs_n              : IN std_logic;
         read_n            : IN std_logic;
         data_in           : IN std_logic_vector(1 downto 0);
         data_out          : OUT std_logic_vector(31 DOWNTO 0)
         );
   END temperature_set_IP;
   
   ARCHITECTURE rtl OF temperature_set_IP IS

   --registers
   
   SIGNAL temperature_reg : std_logic_vector(5 DOWNTO 0);
     

   COMPONENT temperature_select 
      PORT(    
         clk              : IN std_logic;
         reset_n          : IN std_logic;
         KEY              : IN std_logic_vector(1 downto 0);
         temperature_set  : OUT std_logic_vector(5 DOWNTO 0)
         );
   END COMPONENT temperature_select;
   
   BEGIN
   
         
   Bus_register_read_process: PROCESS (cs_n, read_n)
   BEGIN
      IF (cs_n = '0' and read_n = '0') THEN
         data_out (5 DOWNTO 0) <= temperature_reg (5 DOWNTO 0);
         data_out (31 DOWNTO 6) <= (others => '0');
      ELSE
         data_out <= (others => '0');
        
      END IF;
    
   END PROCESS Bus_register_read_process;
  
   temperature_function: temperature_select
  
   PORT MAP
   (
     clk             => clk,              
     reset_n         => reset_n,  
     KEY             => data_in,     
     temperature_set => temperature_reg
     );
     
   end rtl;