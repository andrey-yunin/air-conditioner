// tb_mm_interconnect_1.v

// This file was auto-generated from altera_mm_interconnect_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module tb_mm_interconnect_1 (
		input  wire        clock_reset_inst_clock_clk,                                                     //                                                   clock_reset_inst_clock.clk
		input  wire        mm_master_dpi_bfm_average_value_avs_cra_inst_reset_reset_bridge_in_reset_reset, // mm_master_dpi_bfm_average_value_avs_cra_inst_reset_reset_bridge_in_reset.reset
		input  wire [5:0]  mm_master_dpi_bfm_average_value_avs_cra_inst_m0_address,                        //                          mm_master_dpi_bfm_average_value_avs_cra_inst_m0.address
		output wire        mm_master_dpi_bfm_average_value_avs_cra_inst_m0_waitrequest,                    //                                                                         .waitrequest
		input  wire [0:0]  mm_master_dpi_bfm_average_value_avs_cra_inst_m0_burstcount,                     //                                                                         .burstcount
		input  wire [7:0]  mm_master_dpi_bfm_average_value_avs_cra_inst_m0_byteenable,                     //                                                                         .byteenable
		input  wire        mm_master_dpi_bfm_average_value_avs_cra_inst_m0_read,                           //                                                                         .read
		output wire [63:0] mm_master_dpi_bfm_average_value_avs_cra_inst_m0_readdata,                       //                                                                         .readdata
		output wire        mm_master_dpi_bfm_average_value_avs_cra_inst_m0_readdatavalid,                  //                                                                         .readdatavalid
		input  wire        mm_master_dpi_bfm_average_value_avs_cra_inst_m0_write,                          //                                                                         .write
		input  wire [63:0] mm_master_dpi_bfm_average_value_avs_cra_inst_m0_writedata,                      //                                                                         .writedata
		output wire [2:0]  average_value_inst_avs_cra_address,                                             //                                               average_value_inst_avs_cra.address
		output wire        average_value_inst_avs_cra_write,                                               //                                                                         .write
		output wire        average_value_inst_avs_cra_read,                                                //                                                                         .read
		input  wire [63:0] average_value_inst_avs_cra_readdata,                                            //                                                                         .readdata
		output wire [63:0] average_value_inst_avs_cra_writedata,                                           //                                                                         .writedata
		output wire [7:0]  average_value_inst_avs_cra_byteenable                                           //                                                                         .byteenable
	);

	wire         mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_waitrequest;   // average_value_inst_avs_cra_translator:uav_waitrequest -> mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator:uav_waitrequest
	wire  [63:0] mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_readdata;      // average_value_inst_avs_cra_translator:uav_readdata -> mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator:uav_readdata
	wire         mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_debugaccess;   // mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator:uav_debugaccess -> average_value_inst_avs_cra_translator:uav_debugaccess
	wire   [5:0] mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_address;       // mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator:uav_address -> average_value_inst_avs_cra_translator:uav_address
	wire         mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_read;          // mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator:uav_read -> average_value_inst_avs_cra_translator:uav_read
	wire   [7:0] mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_byteenable;    // mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator:uav_byteenable -> average_value_inst_avs_cra_translator:uav_byteenable
	wire         mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_readdatavalid; // average_value_inst_avs_cra_translator:uav_readdatavalid -> mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator:uav_readdatavalid
	wire         mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_lock;          // mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator:uav_lock -> average_value_inst_avs_cra_translator:uav_lock
	wire         mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_write;         // mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator:uav_write -> average_value_inst_avs_cra_translator:uav_write
	wire  [63:0] mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_writedata;     // mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator:uav_writedata -> average_value_inst_avs_cra_translator:uav_writedata
	wire   [3:0] mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_burstcount;    // mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator:uav_burstcount -> average_value_inst_avs_cra_translator:uav_burstcount

	altera_merlin_master_translator #(
		.AV_ADDRESS_W                (6),
		.AV_DATA_W                   (64),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (8),
		.UAV_ADDRESS_W               (6),
		.UAV_BURSTCOUNT_W            (4),
		.USE_READ                    (1),
		.USE_WRITE                   (1),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (1),
		.USE_READDATAVALID           (1),
		.USE_WAITREQUEST             (1),
		.USE_READRESPONSE            (0),
		.USE_WRITERESPONSE           (0),
		.AV_SYMBOLS_PER_WORD         (8),
		.AV_ADDRESS_SYMBOLS          (1),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (0),
		.UAV_CONSTANT_BURST_BEHAVIOR (0),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0)
	) mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator (
		.clk                    (clock_reset_inst_clock_clk),                                                                         //                       clk.clk
		.reset                  (mm_master_dpi_bfm_average_value_avs_cra_inst_reset_reset_bridge_in_reset_reset),                     //                     reset.reset
		.uav_address            (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_address),       // avalon_universal_master_0.address
		.uav_burstcount         (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_burstcount),    //                          .burstcount
		.uav_read               (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_read),          //                          .read
		.uav_write              (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_write),         //                          .write
		.uav_waitrequest        (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_waitrequest),   //                          .waitrequest
		.uav_readdatavalid      (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_readdatavalid), //                          .readdatavalid
		.uav_byteenable         (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_byteenable),    //                          .byteenable
		.uav_readdata           (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_readdata),      //                          .readdata
		.uav_writedata          (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_writedata),     //                          .writedata
		.uav_lock               (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_lock),          //                          .lock
		.uav_debugaccess        (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_debugaccess),   //                          .debugaccess
		.av_address             (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_address),                                            //      avalon_anti_master_0.address
		.av_waitrequest         (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_waitrequest),                                        //                          .waitrequest
		.av_burstcount          (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_burstcount),                                         //                          .burstcount
		.av_byteenable          (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_byteenable),                                         //                          .byteenable
		.av_read                (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_read),                                               //                          .read
		.av_readdata            (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_readdata),                                           //                          .readdata
		.av_readdatavalid       (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_readdatavalid),                                      //                          .readdatavalid
		.av_write               (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_write),                                              //                          .write
		.av_writedata           (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_writedata),                                          //                          .writedata
		.av_beginbursttransfer  (1'b0),                                                                                               //               (terminated)
		.av_begintransfer       (1'b0),                                                                                               //               (terminated)
		.av_chipselect          (1'b0),                                                                                               //               (terminated)
		.av_lock                (1'b0),                                                                                               //               (terminated)
		.av_debugaccess         (1'b0),                                                                                               //               (terminated)
		.uav_clken              (),                                                                                                   //               (terminated)
		.av_clken               (1'b1),                                                                                               //               (terminated)
		.uav_response           (2'b00),                                                                                              //               (terminated)
		.av_response            (),                                                                                                   //               (terminated)
		.uav_writeresponsevalid (1'b0),                                                                                               //               (terminated)
		.av_writeresponsevalid  ()                                                                                                    //               (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (64),
		.UAV_DATA_W                     (64),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (8),
		.UAV_BYTEENABLE_W               (8),
		.UAV_ADDRESS_W                  (6),
		.UAV_BURSTCOUNT_W               (4),
		.AV_READLATENCY                 (1),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (0),
		.USE_UAV_CLKEN                  (0),
		.USE_READRESPONSE               (0),
		.USE_WRITERESPONSE              (0),
		.AV_SYMBOLS_PER_WORD            (8),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (0),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) average_value_inst_avs_cra_translator (
		.clk                    (clock_reset_inst_clock_clk),                                                                         //                      clk.clk
		.reset                  (mm_master_dpi_bfm_average_value_avs_cra_inst_reset_reset_bridge_in_reset_reset),                     //                    reset.reset
		.uav_address            (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_address),       // avalon_universal_slave_0.address
		.uav_burstcount         (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_burstcount),    //                         .burstcount
		.uav_read               (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_read),          //                         .read
		.uav_write              (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_write),         //                         .write
		.uav_waitrequest        (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid      (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_readdatavalid), //                         .readdatavalid
		.uav_byteenable         (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_byteenable),    //                         .byteenable
		.uav_readdata           (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_readdata),      //                         .readdata
		.uav_writedata          (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_writedata),     //                         .writedata
		.uav_lock               (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_lock),          //                         .lock
		.uav_debugaccess        (mm_master_dpi_bfm_average_value_avs_cra_inst_m0_translator_avalon_universal_master_0_debugaccess),   //                         .debugaccess
		.av_address             (average_value_inst_avs_cra_address),                                                                 //      avalon_anti_slave_0.address
		.av_write               (average_value_inst_avs_cra_write),                                                                   //                         .write
		.av_read                (average_value_inst_avs_cra_read),                                                                    //                         .read
		.av_readdata            (average_value_inst_avs_cra_readdata),                                                                //                         .readdata
		.av_writedata           (average_value_inst_avs_cra_writedata),                                                               //                         .writedata
		.av_byteenable          (average_value_inst_avs_cra_byteenable),                                                              //                         .byteenable
		.av_begintransfer       (),                                                                                                   //              (terminated)
		.av_beginbursttransfer  (),                                                                                                   //              (terminated)
		.av_burstcount          (),                                                                                                   //              (terminated)
		.av_readdatavalid       (1'b0),                                                                                               //              (terminated)
		.av_waitrequest         (1'b0),                                                                                               //              (terminated)
		.av_writebyteenable     (),                                                                                                   //              (terminated)
		.av_lock                (),                                                                                                   //              (terminated)
		.av_chipselect          (),                                                                                                   //              (terminated)
		.av_clken               (),                                                                                                   //              (terminated)
		.uav_clken              (1'b0),                                                                                               //              (terminated)
		.av_debugaccess         (),                                                                                                   //              (terminated)
		.av_outputenable        (),                                                                                                   //              (terminated)
		.uav_response           (),                                                                                                   //              (terminated)
		.av_response            (2'b00),                                                                                              //              (terminated)
		.uav_writeresponsevalid (),                                                                                                   //              (terminated)
		.av_writeresponsevalid  (1'b0)                                                                                                //              (terminated)
	);

endmodule
