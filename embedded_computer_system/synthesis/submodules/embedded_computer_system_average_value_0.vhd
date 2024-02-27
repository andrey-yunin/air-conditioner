-- embedded_computer_system_average_value_0.vhd

-- Generated using ACDS version 18.1 625

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity embedded_computer_system_average_value_0 is
	port (
		avs_a_read         : in  std_logic                     := '0';             --   avs_a.read
		avs_a_write        : in  std_logic                     := '0';             --        .write
		avs_a_address      : in  std_logic_vector(7 downto 0)  := (others => '0'); --        .address
		avs_a_writedata    : in  std_logic_vector(31 downto 0) := (others => '0'); --        .writedata
		avs_a_byteenable   : in  std_logic_vector(3 downto 0)  := (others => '0'); --        .byteenable
		avs_a_readdata     : out std_logic_vector(31 downto 0);                    --        .readdata
		avs_cra_read       : in  std_logic                     := '0';             -- avs_cra.read
		avs_cra_write      : in  std_logic                     := '0';             --        .write
		avs_cra_address    : in  std_logic_vector(2 downto 0)  := (others => '0'); --        .address
		avs_cra_writedata  : in  std_logic_vector(63 downto 0) := (others => '0'); --        .writedata
		avs_cra_byteenable : in  std_logic_vector(7 downto 0)  := (others => '0'); --        .byteenable
		avs_cra_readdata   : out std_logic_vector(63 downto 0);                    --        .readdata
		clock              : in  std_logic                     := '0';             --   clock.clk
		done_irq           : out std_logic;                                        --     irq.irq
		resetn             : in  std_logic                     := '0'              --   reset.reset_n
	);
end entity embedded_computer_system_average_value_0;

architecture rtl of embedded_computer_system_average_value_0 is
	component average_value_internal is
		port (
			clock              : in  std_logic                     := 'X';             -- clk
			resetn             : in  std_logic                     := 'X';             -- reset_n
			done_irq           : out std_logic;                                        -- irq
			avs_a_read         : in  std_logic                     := 'X';             -- read
			avs_a_write        : in  std_logic                     := 'X';             -- write
			avs_a_address      : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- address
			avs_a_writedata    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			avs_a_byteenable   : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			avs_a_readdata     : out std_logic_vector(31 downto 0);                    -- readdata
			avs_cra_read       : in  std_logic                     := 'X';             -- read
			avs_cra_write      : in  std_logic                     := 'X';             -- write
			avs_cra_address    : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- address
			avs_cra_writedata  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- writedata
			avs_cra_byteenable : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- byteenable
			avs_cra_readdata   : out std_logic_vector(63 downto 0)                     -- readdata
		);
	end component average_value_internal;

begin

	average_value_internal_inst : component average_value_internal
		port map (
			clock              => clock,              --   clock.clk
			resetn             => resetn,             --   reset.reset_n
			done_irq           => done_irq,           --     irq.irq
			avs_a_read         => avs_a_read,         --   avs_a.read
			avs_a_write        => avs_a_write,        --        .write
			avs_a_address      => avs_a_address,      --        .address
			avs_a_writedata    => avs_a_writedata,    --        .writedata
			avs_a_byteenable   => avs_a_byteenable,   --        .byteenable
			avs_a_readdata     => avs_a_readdata,     --        .readdata
			avs_cra_read       => avs_cra_read,       -- avs_cra.read
			avs_cra_write      => avs_cra_write,      --        .write
			avs_cra_address    => avs_cra_address,    --        .address
			avs_cra_writedata  => avs_cra_writedata,  --        .writedata
			avs_cra_byteenable => avs_cra_byteenable, --        .byteenable
			avs_cra_readdata   => avs_cra_readdata    --        .readdata
		);

end architecture rtl; -- of embedded_computer_system_average_value_0