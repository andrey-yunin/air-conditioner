module quartus_compile (
	  input logic resetn
	, input logic clock
	, output logic [0:0] average_value_done_irq
	, input logic [0:0] average_value_avs_a_read
	, input logic [0:0] average_value_avs_a_write
	, input logic [5:0] average_value_avs_a_address
	, input logic [31:0] average_value_avs_a_writedata
	, input logic [3:0] average_value_avs_a_byteenable
	, output logic [31:0] average_value_avs_a_readdata
	, input logic [0:0] average_value_avs_cra_read
	, input logic [0:0] average_value_avs_cra_write
	, input logic [2:0] average_value_avs_cra_address
	, input logic [63:0] average_value_avs_cra_writedata
	, input logic [7:0] average_value_avs_cra_byteenable
	, output logic [63:0] average_value_avs_cra_readdata
	);

	logic [0:0] average_value_done_irq_reg;
	logic [0:0] average_value_avs_a_read_reg;
	logic [0:0] average_value_avs_a_write_reg;
	logic [5:0] average_value_avs_a_address_reg;
	logic [31:0] average_value_avs_a_writedata_reg;
	logic [3:0] average_value_avs_a_byteenable_reg;
	logic [31:0] average_value_avs_a_readdata_reg;
	logic [0:0] average_value_avs_cra_read_reg;
	logic [0:0] average_value_avs_cra_write_reg;
	logic [2:0] average_value_avs_cra_address_reg;
	logic [63:0] average_value_avs_cra_writedata_reg;
	logic [7:0] average_value_avs_cra_byteenable_reg;
	logic [63:0] average_value_avs_cra_readdata_reg;


	always @(posedge clock) begin
		average_value_done_irq <= average_value_done_irq_reg;
		average_value_avs_a_read_reg <= average_value_avs_a_read;
		average_value_avs_a_write_reg <= average_value_avs_a_write;
		average_value_avs_a_address_reg <= average_value_avs_a_address;
		average_value_avs_a_writedata_reg <= average_value_avs_a_writedata;
		average_value_avs_a_byteenable_reg <= average_value_avs_a_byteenable;
		average_value_avs_a_readdata <= average_value_avs_a_readdata_reg;
		average_value_avs_cra_read_reg <= average_value_avs_cra_read;
		average_value_avs_cra_write_reg <= average_value_avs_cra_write;
		average_value_avs_cra_address_reg <= average_value_avs_cra_address;
		average_value_avs_cra_writedata_reg <= average_value_avs_cra_writedata;
		average_value_avs_cra_byteenable_reg <= average_value_avs_cra_byteenable;
		average_value_avs_cra_readdata <= average_value_avs_cra_readdata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	average_value average_value_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .done_irq(average_value_done_irq_reg)
		, .avs_a_read(average_value_avs_a_read_reg)
		, .avs_a_write(average_value_avs_a_write_reg)
		, .avs_a_address(average_value_avs_a_address_reg)
		, .avs_a_writedata(average_value_avs_a_writedata_reg)
		, .avs_a_byteenable(average_value_avs_a_byteenable_reg)
		, .avs_a_readdata(average_value_avs_a_readdata_reg)
		, .avs_cra_read(average_value_avs_cra_read_reg)
		, .avs_cra_write(average_value_avs_cra_write_reg)
		, .avs_cra_address(average_value_avs_cra_address_reg)
		, .avs_cra_writedata(average_value_avs_cra_writedata_reg)
		, .avs_cra_byteenable(average_value_avs_cra_byteenable_reg)
		, .avs_cra_readdata(average_value_avs_cra_readdata_reg)
	);



endmodule
