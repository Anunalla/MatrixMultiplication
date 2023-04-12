module demo ( 
	clkin_50,
		clkin_125,
		cpu_resetn,
		
		// the_ddr3_top
        ddr3b_a,
        ddr3b_ba,
        ddr3b_casn,
        ddr3b_cke,
        ddr3b_clk_n,
        ddr3b_clk_p,
        ddr3b_csn,
        ddr3b_dm,
        ddr3b_dq,
        ddr3b_dqs_p,
        ddr3b_dqs_n,
        ddr3b_odt,
        ddr3b_rasn,
        ddr3b_resetn,
        ddr3b_wen,
		rzqin_1_5v, 
	);		
	
	// Base clock
	input            clkin_50;
  input            clkin_125;
  input            cpu_resetn;
  
  output  [ 13: 0] ddr3b_a;
  output  [  2: 0] ddr3b_ba;
  output           ddr3b_casn;
  output           ddr3b_cke;
  output           ddr3b_clk_n;
  output           ddr3b_clk_p;
  output           ddr3b_csn;
  output  [  7: 0] ddr3b_dm;
  inout   [ 63: 0] ddr3b_dq;
  inout   [  7: 0] ddr3b_dqs_p;
  inout   [  7: 0] ddr3b_dqs_n;
  output           ddr3b_odt;
  output           ddr3b_rasn;
  output           ddr3b_resetn;
  output           ddr3b_wen;
  input			    rzqin_1_5v;


	// Nios system
	 nios_system_2 enios_system_2_inst (
        
        		
		.ddr3_top_memory_mem_a		 		(ddr3b_a),
		.ddr3_top_memory_mem_ba             (ddr3b_ba),
		.ddr3_top_memory_mem_cas_n          (ddr3b_casn),
		.ddr3_top_memory_mem_cke            (ddr3b_cke),		
		.ddr3_top_memory_mem_ck_n		 	(ddr3b_clk_n),		
		.ddr3_top_memory_mem_ck		 		(ddr3b_clk_p),
		.ddr3_top_memory_mem_cs_n           (ddr3b_csn),
		.ddr3_top_memory_mem_dm             (ddr3b_dm),
		.ddr3_top_memory_mem_dq         	(ddr3b_dq),
		.ddr3_top_memory_mem_dqs        	(ddr3b_dqs_p),		
		.ddr3_top_memory_mem_dqs_n      	(ddr3b_dqs_n),
		.ddr3_top_memory_mem_odt            (ddr3b_odt),
		.ddr3_top_memory_mem_ras_n          (ddr3b_rasn),
		.ddr3_top_memory_mem_reset_n        (ddr3b_resetn),
		.ddr3_top_memory_mem_we_n           (ddr3b_wen),
		.ddr3_top_oct_rzqin					(rzqin_1_5v),
		.ddr3_top_status_local_init_done    (),
        .ddr3_top_status_local_cal_success  (),
        .ddr3_top_status_local_cal_fail     (), 
						
		.clk_50_clk_in_clk                     (clkin_50),         
		.clk_50_clk_in_reset_reset_n           (cpu_resetn),         
		.clk_125_clk_in_clk                    (clkin_125),          
		.clk_125_clk_in_reset_reset_n          (cpu_resetn), 		  
		
		
		.sdram_pll_sharing_pll_mem_clk               (),
        .sdram_pll_sharing_pll_write_clk             (),
        .sdram_pll_sharing_pll_locked                (),
        .sdram_pll_sharing_pll_write_clk_pre_phy_clk (),
        .sdram_pll_sharing_pll_addr_cmd_clk          (),
        .sdram_pll_sharing_pll_avl_clk               (),
        .sdram_pll_sharing_pll_config_clk            (),
        .sdram_pll_sharing_pll_mem_phy_clk           (),
        .sdram_pll_sharing_afi_phy_clk               (),
        .sdram_pll_sharing_pll_avl_phy_clk           ()
    );

endmodule 












