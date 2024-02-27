library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity air_conditioner is
   port (
   MAX10_CLK1_50 : IN  std_logic;
   SW            : IN  std_logic_vector (9 DOWNTO 0);
   KEY           : IN  std_logic_vector (1 DOWNTO 0);
	LEDR          : OUT std_logic_vector (2 DOWNTO 0);    
   
   DRAM_ADDR     : OUT  std_logic_vector (12 DOWNTO 0);
   DRAM_BA       : OUT  std_logic_vector (1 DOWNTO 0);
   DRAM_CAS_N    : OUT  std_logic;
   DRAM_CKE      : OUT  std_logic;
   DRAM_CLK      : OUT  std_logic;  --C1 PLL
   DRAM_CS_N     : OUT  std_logic;
   DRAM_DQ       : INOUT std_logic_vector (15 DOWNTO 0);
   DRAM_LDQM     : OUT  std_logic;
   DRAM_UDQM     : OUT  std_logic;
   DRAM_RAS_N    : OUT  std_logic;
   DRAM_WE_N     : OUT  std_logic;
   
   VGA_R         : OUT  std_logic_vector (3 DOWNTO 0);
   VGA_G         : OUT  std_logic_vector (3 DOWNTO 0);
   VGA_B         : OUT  std_logic_vector (3 DOWNTO 0);
   VGA_HS        : OUT  std_logic;
   VGA_VS        : OUT  std_logic;
   
   ARDUINO_IO    : OUT  std_logic_vector (15 DOWNTO 0)

      
   );
end entity air_conditioner;

architecture rtl of air_conditioner is

   SIGNAL S_DQM : std_logic_vector (1 DOWNTO 0);
   
   component embedded_computer_system is
   port (
      clk_clk                     : in    std_logic := '0'; -- clk.clk
      pll_c1_clk                  : out   std_logic;                                        --           pll_c1.clk
      reset_reset_n               : in    std_logic                     := '0';             --            reset.reset_n
      pio_0_export                : out   std_logic_vector(7 downto 0);                     --                pio_0.export
            
      temperature_set_ip_0_writedata : in    std_logic_vector(1 downto 0)  := (others => '0'); -- temperature_set_ip_0.writedata
      
		sierra_0_conduit_end_export    : out   std_logic_vector(2 downto 0);                     --   sierra_0_conduit_end.export
		sierra_0_conduit_end_1_export  : in    std_logic_vector(1 downto 0)  := (others => '0'); -- sierra_0_conduit_end_1.export
		
      sdram_controller_addr       : out   std_logic_vector(12 downto 0);                    -- sdram_controller.addr
      sdram_controller_ba         : out   std_logic_vector(1 downto 0);                     --                 .ba
      sdram_controller_cas_n      : out   std_logic;                                        --                 .cas_n
      sdram_controller_cke        : out   std_logic;                                        --                 .cke
      sdram_controller_cs_n       : out   std_logic;                                        --                 .cs_n
      sdram_controller_dq         : inout std_logic_vector(15 downto 0) := (others => '0'); --                 .dq
      sdram_controller_dqm        : out   std_logic_vector(1 downto 0);                     --                 .dqm
      sdram_controller_ras_n      : out   std_logic;                                        --                 .ras_n
      sdram_controller_we_n       : out   std_logic;                                        --                 .we_n
      
      vga_ip_0_conduit_end_vga_b  : out   std_logic_vector(3 downto 0);                     -- vga_ip_0_conduit_end.vga_b
      vga_ip_0_conduit_end_vga_g  : out   std_logic_vector(3 downto 0);                     --                     .vga_g
      vga_ip_0_conduit_end_vga_r  : out   std_logic_vector(3 downto 0);                     --                     .vga_r
      vga_ip_0_conduit_end_vga_vs : out   std_logic;                                        --                     .vga_vs
      vga_ip_0_conduit_end_vga_hs : out   std_logic                                        --                 .vga_vs
   );
end component embedded_computer_system;
   
      
begin 

  inst_embedded_computer_system: embedded_computer_system
  PORT MAP
  (
   clk_clk                 => MAX10_CLK1_50,                               
   reset_reset_n           => SW(9),
   pll_c1_clk              => DRAM_CLK,
   pio_0_export            => ARDUINO_IO (7 DOWNTO 0),
   
   temperature_set_ip_0_writedata => KEY,
	
	sierra_0_conduit_end_export    => LEDR,
	sierra_0_conduit_end_1_export  => (others => '0'),
         
   sdram_controller_addr   => DRAM_ADDR,                   
   sdram_controller_ba     => DRAM_BA,                       
   sdram_controller_cas_n  => DRAM_CAS_N,                  
   sdram_controller_cke    => DRAM_CKE,                     
   sdram_controller_cs_n   => DRAM_CS_N,                   
   sdram_controller_dq     => DRAM_DQ,           
   sdram_controller_dqm    => S_DQM,                    
   sdram_controller_ras_n  => DRAM_RAS_N,                         
   sdram_controller_we_n   => DRAM_WE_N ,
   
   vga_ip_0_conduit_end_vga_b          => VGA_B,                              
   vga_ip_0_conduit_end_vga_g          => VGA_G,
   vga_ip_0_conduit_end_vga_r          => VGA_R,
   vga_ip_0_conduit_end_vga_vs         => VGA_VS,
   vga_ip_0_conduit_end_vga_hs         => VGA_HS  
                          
   
  );
  
  DRAM_LDQM <= S_DQM(0);
  DRAM_UDQM <= S_DQM(1);
  
end architecture rtl;
