
module embedded_computer_system (
	clk_clk,
	pio_0_export,
	pll_c1_clk,
	reset_reset_n,
	sdram_controller_addr,
	sdram_controller_ba,
	sdram_controller_cas_n,
	sdram_controller_cke,
	sdram_controller_cs_n,
	sdram_controller_dq,
	sdram_controller_dqm,
	sdram_controller_ras_n,
	sdram_controller_we_n,
	sierra_0_conduit_end_export,
	sierra_0_conduit_end_1_export,
	temperature_set_ip_0_writedata,
	vga_ip_0_conduit_end_vga_b,
	vga_ip_0_conduit_end_vga_g,
	vga_ip_0_conduit_end_vga_r,
	vga_ip_0_conduit_end_vga_vs,
	vga_ip_0_conduit_end_vga_hs);	

	input		clk_clk;
	output	[7:0]	pio_0_export;
	output		pll_c1_clk;
	input		reset_reset_n;
	output	[12:0]	sdram_controller_addr;
	output	[1:0]	sdram_controller_ba;
	output		sdram_controller_cas_n;
	output		sdram_controller_cke;
	output		sdram_controller_cs_n;
	inout	[15:0]	sdram_controller_dq;
	output	[1:0]	sdram_controller_dqm;
	output		sdram_controller_ras_n;
	output		sdram_controller_we_n;
	output	[2:0]	sierra_0_conduit_end_export;
	input	[1:0]	sierra_0_conduit_end_1_export;
	input	[1:0]	temperature_set_ip_0_writedata;
	output	[3:0]	vga_ip_0_conduit_end_vga_b;
	output	[3:0]	vga_ip_0_conduit_end_vga_g;
	output	[3:0]	vga_ip_0_conduit_end_vga_r;
	output		vga_ip_0_conduit_end_vga_vs;
	output		vga_ip_0_conduit_end_vga_hs;
endmodule
