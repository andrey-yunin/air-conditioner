-- altera_trace_adc_monitor_wa_inst.vhd

-- Generated using ACDS version 18.1 625

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity altera_trace_adc_monitor_wa_inst is
	generic (
		IN_DATA_WIDTH  : integer := 12;
		OUT_DATA_WIDTH : integer := 8
	);
	port (
		clk             : in  std_logic                     := '0';             --             clock.clk
		reset           : in  std_logic                     := '0';             --             reset.reset
		sync_reset      : in  std_logic                     := '0';             -- synchronous_reset.conduit
		beat0_rem_valid : out std_logic;                                        --         beat0_rem.valid
		in_valid        : in  std_logic                     := '0';             --              sink.valid
		in_data         : in  std_logic_vector(11 downto 0) := (others => '0'); --                  .data
		out_valid       : out std_logic;                                        --            source.valid
		out_data        : out std_logic_vector(7 downto 0);                     --                  .data
		out_ready       : in  std_logic                     := '0'              --                  .ready
	);
end entity altera_trace_adc_monitor_wa_inst;

architecture rtl of altera_trace_adc_monitor_wa_inst is
	component altera_trace_adc_monitor_wa is
		generic (
			IN_DATA_WIDTH  : integer := 12;
			OUT_DATA_WIDTH : integer := 8
		);
		port (
			clk             : in  std_logic                     := 'X';             -- clk
			reset           : in  std_logic                     := 'X';             -- reset
			sync_reset      : in  std_logic                     := 'X';             -- conduit
			beat0_rem_valid : out std_logic;                                        -- valid
			in_valid        : in  std_logic                     := 'X';             -- valid
			in_data         : in  std_logic_vector(11 downto 0) := (others => 'X'); -- data
			out_valid       : out std_logic;                                        -- valid
			out_data        : out std_logic_vector(7 downto 0);                     -- data
			out_ready       : in  std_logic                     := 'X'              -- ready
		);
	end component altera_trace_adc_monitor_wa;

begin

	in_data_width_check : if IN_DATA_WIDTH /= 12 generate
		assert false report "Supplied generics do not match expected generics" severity Failure;
	end generate;

	out_data_width_check : if OUT_DATA_WIDTH /= 8 generate
		assert false report "Supplied generics do not match expected generics" severity Failure;
	end generate;

	altera_trace_adc_monitor_wa_inst : component altera_trace_adc_monitor_wa
		generic map (
			IN_DATA_WIDTH  => 12,
			OUT_DATA_WIDTH => 8
		)
		port map (
			clk             => clk,             --             clock.clk
			reset           => reset,           --             reset.reset
			sync_reset      => sync_reset,      -- synchronous_reset.conduit
			beat0_rem_valid => beat0_rem_valid, --         beat0_rem.valid
			in_valid        => in_valid,        --              sink.valid
			in_data         => in_data,         --                  .data
			out_valid       => out_valid,       --            source.valid
			out_data        => out_data,        --                  .data
			out_ready       => out_ready        --                  .ready
		);

end architecture rtl; -- of altera_trace_adc_monitor_wa_inst