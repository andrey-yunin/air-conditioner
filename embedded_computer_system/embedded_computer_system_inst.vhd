	component embedded_computer_system is
		port (
			clk_clk                        : in    std_logic                     := 'X';             -- clk
			pio_0_export                   : out   std_logic_vector(7 downto 0);                     -- export
			pll_c1_clk                     : out   std_logic;                                        -- clk
			reset_reset_n                  : in    std_logic                     := 'X';             -- reset_n
			sdram_controller_addr          : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_controller_ba            : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_controller_cas_n         : out   std_logic;                                        -- cas_n
			sdram_controller_cke           : out   std_logic;                                        -- cke
			sdram_controller_cs_n          : out   std_logic;                                        -- cs_n
			sdram_controller_dq            : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_controller_dqm           : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_controller_ras_n         : out   std_logic;                                        -- ras_n
			sdram_controller_we_n          : out   std_logic;                                        -- we_n
			sierra_0_conduit_end_export    : out   std_logic_vector(2 downto 0);                     -- export
			sierra_0_conduit_end_1_export  : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- export
			temperature_set_ip_0_writedata : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- writedata
			vga_ip_0_conduit_end_vga_b     : out   std_logic_vector(3 downto 0);                     -- vga_b
			vga_ip_0_conduit_end_vga_g     : out   std_logic_vector(3 downto 0);                     -- vga_g
			vga_ip_0_conduit_end_vga_r     : out   std_logic_vector(3 downto 0);                     -- vga_r
			vga_ip_0_conduit_end_vga_vs    : out   std_logic;                                        -- vga_vs
			vga_ip_0_conduit_end_vga_hs    : out   std_logic                                         -- vga_hs
		);
	end component embedded_computer_system;

	u0 : component embedded_computer_system
		port map (
			clk_clk                        => CONNECTED_TO_clk_clk,                        --                    clk.clk
			pio_0_export                   => CONNECTED_TO_pio_0_export,                   --                  pio_0.export
			pll_c1_clk                     => CONNECTED_TO_pll_c1_clk,                     --                 pll_c1.clk
			reset_reset_n                  => CONNECTED_TO_reset_reset_n,                  --                  reset.reset_n
			sdram_controller_addr          => CONNECTED_TO_sdram_controller_addr,          --       sdram_controller.addr
			sdram_controller_ba            => CONNECTED_TO_sdram_controller_ba,            --                       .ba
			sdram_controller_cas_n         => CONNECTED_TO_sdram_controller_cas_n,         --                       .cas_n
			sdram_controller_cke           => CONNECTED_TO_sdram_controller_cke,           --                       .cke
			sdram_controller_cs_n          => CONNECTED_TO_sdram_controller_cs_n,          --                       .cs_n
			sdram_controller_dq            => CONNECTED_TO_sdram_controller_dq,            --                       .dq
			sdram_controller_dqm           => CONNECTED_TO_sdram_controller_dqm,           --                       .dqm
			sdram_controller_ras_n         => CONNECTED_TO_sdram_controller_ras_n,         --                       .ras_n
			sdram_controller_we_n          => CONNECTED_TO_sdram_controller_we_n,          --                       .we_n
			sierra_0_conduit_end_export    => CONNECTED_TO_sierra_0_conduit_end_export,    --   sierra_0_conduit_end.export
			sierra_0_conduit_end_1_export  => CONNECTED_TO_sierra_0_conduit_end_1_export,  -- sierra_0_conduit_end_1.export
			temperature_set_ip_0_writedata => CONNECTED_TO_temperature_set_ip_0_writedata, --   temperature_set_ip_0.writedata
			vga_ip_0_conduit_end_vga_b     => CONNECTED_TO_vga_ip_0_conduit_end_vga_b,     --   vga_ip_0_conduit_end.vga_b
			vga_ip_0_conduit_end_vga_g     => CONNECTED_TO_vga_ip_0_conduit_end_vga_g,     --                       .vga_g
			vga_ip_0_conduit_end_vga_r     => CONNECTED_TO_vga_ip_0_conduit_end_vga_r,     --                       .vga_r
			vga_ip_0_conduit_end_vga_vs    => CONNECTED_TO_vga_ip_0_conduit_end_vga_vs,    --                       .vga_vs
			vga_ip_0_conduit_end_vga_hs    => CONNECTED_TO_vga_ip_0_conduit_end_vga_hs     --                       .vga_hs
		);

