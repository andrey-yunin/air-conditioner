// average_value.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module average_value (
		input  wire        avs_a_read,         //   avs_a.read
		input  wire        avs_a_write,        //        .write
		input  wire [5:0]  avs_a_address,      //        .address
		input  wire [31:0] avs_a_writedata,    //        .writedata
		input  wire [3:0]  avs_a_byteenable,   //        .byteenable
		output wire [31:0] avs_a_readdata,     //        .readdata
		input  wire        avs_cra_read,       // avs_cra.read
		input  wire        avs_cra_write,      //        .write
		input  wire [2:0]  avs_cra_address,    //        .address
		input  wire [63:0] avs_cra_writedata,  //        .writedata
		input  wire [7:0]  avs_cra_byteenable, //        .byteenable
		output wire [63:0] avs_cra_readdata,   //        .readdata
		input  wire        clock,              //   clock.clk
		output wire        done_irq,           //     irq.irq
		input  wire        resetn              //   reset.reset_n
	);

	average_value_internal average_value_internal_inst (
		.clock              (clock),              //   clock.clk
		.resetn             (resetn),             //   reset.reset_n
		.done_irq           (done_irq),           //     irq.irq
		.avs_a_read         (avs_a_read),         //   avs_a.read
		.avs_a_write        (avs_a_write),        //        .write
		.avs_a_address      (avs_a_address),      //        .address
		.avs_a_writedata    (avs_a_writedata),    //        .writedata
		.avs_a_byteenable   (avs_a_byteenable),   //        .byteenable
		.avs_a_readdata     (avs_a_readdata),     //        .readdata
		.avs_cra_read       (avs_cra_read),       // avs_cra.read
		.avs_cra_write      (avs_cra_write),      //        .write
		.avs_cra_address    (avs_cra_address),    //        .address
		.avs_cra_writedata  (avs_cra_writedata),  //        .writedata
		.avs_cra_byteenable (avs_cra_byteenable), //        .byteenable
		.avs_cra_readdata   (avs_cra_readdata)    //        .readdata
	);

endmodule
