
   LIBRARY ieee ;
   USE ieee.std_logic_1164.all;
   use IEEE.numeric_std.all;
      
   ENTITY temperature_select IS
      PORT(    
         clk               : IN std_logic;
         reset_n           : IN std_logic;
         KEY               : IN std_logic_vector(1 downto 0);
         temperature_set   : OUT std_logic_vector(5 DOWNTO 0)
         );
   END temperature_select;
   
   
   ARCHITECTURE rtl OF temperature_select IS
   
   
   SIGNAL Key_t1 : std_logic_vector(1 DOWNTO 0);
   SIGNAL Key_t2 : std_logic_vector(1 DOWNTO 0);
   SIGNAL reset_t1 : std_logic;
   SIGNAL reset_t2 : std_logic;
   SIGNAL temperature_s            : unsigned (5 DOWNTO 0) := (others => '0');     
   CONSTANT temperature_high_limit : unsigned(5 DOWNTO 0) := "011111";
   CONSTANT temperature_low_limit  : unsigned(5 DOWNTO 0) := (others => '0');
   TYPE STATE_TYPE IS (control_state, temperature_up_state, temperature_down_state);
   SIGNAL state: STATE_TYPE;
   
   
   BEGIN
      reset_sync_process:process(clk,reset_n) 
         BEGIN
         if reset_n = '0' then
            reset_t1 <= '0';
            reset_t2 <= '0';
         elsif rising_edge(clk) then
            reset_t1 <= reset_n;
            reset_t2 <= reset_t1;               
         end if;
      end process;
   
      key_sync_process:process(clk,reset_t2) 
         BEGIN
         if reset_t2 = '0' then
            Key_t1 <= "11";
            Key_t2 <= "11";
         elsif rising_edge(clk) then
            Key_t1 <= KEY;
            Key_t2 <= Key_t1;               
         end if;
      end process;

   
      temperature_function: PROCESS (clk, reset_t2)
         BEGIN
            IF reset_t2 = '0' THEN
               temperature_s <= (others => '0');
         
            ELSIF rising_edge(clk) THEN
               
               CASE state IS
                  WHEN control_state =>                  
                     CASE Key_t2 IS
                        WHEN "01" =>
                           state <= temperature_up_state;
                        WHEN "10" =>
                           state <= temperature_down_state;
                        WHEN
                           others => null;
                     END CASE;               
                                                                  
               
                  WHEN temperature_up_state=>
                     IF Key_t2 = "11" THEN
                        IF temperature_s < temperature_high_limit THEN
                           temperature_s <= temperature_s+1;
                        ELSE 
                           temperature_s <= temperature_high_limit;
                        END IF;
                     state <= control_state;
                  END IF;
                  
                  
                  WHEN temperature_down_state =>
                     IF Key_t2 = "11" THEN
                        IF temperature_s > temperature_low_limit THEN
                           temperature_s <= temperature_s-1;
                        ELSE 
                           temperature_s <= temperature_low_limit;
                        END IF;
                     state <= control_state;
                  END IF;                    
               END CASE;
            END IF;
      END PROCESS;
--             
--                         
   temperature_set <= std_logic_vector(temperature_s);   -- convert from unsigned to std_logic_vector

   END rtl;