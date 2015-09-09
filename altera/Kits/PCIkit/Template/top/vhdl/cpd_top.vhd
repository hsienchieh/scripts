
------------------------------------------------------------
-- Title                              : Cyclone ii PCI64 DDR2 design top : cpd_top.v
------------------------------------------------------------

------------------------------------------------------------------------------------
-- << START MEGAWIZARD INSERT PARAMETER_LIST
-- Parameters:
--
-- Device Family                      : Cyclone
-- local Interface Data Width         : 64
-- DQ_PER_DQS                         : 8
-- LOCAL_AVALON_IF                    : false
-- MEM_CHIPSELS                       : 1
-- MEM_CHIP_BITS                      : 0
-- MEM_BANK_BITS                      : 2
-- MEM_ROW_BITS                       : 13
-- MEM_COL_BITS                       : 9
-- LOCAL_BURST_LEN                    : 2
-- LOCAL_BURST_LEN_BITS               : 2
-- Number Of Output Clock Pairs       : 2
-- << END MEGAWIZARD INSERT PARAMETER_LIST
------------------------------------------------------------------------------------
-- << MEGAWIZARD PARSE FILE DDR3.1.0


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library altera_mf;
use altera_mf.all;

library auk_ddr_user_lib;
use auk_ddr_user_lib.all;

library cycloneii; 
use cycloneii.all;
library work;

-- << START MEGAWIZARD INSERT ENTITY
entity cpd_top is
-- << END MEGAWIZARD INSERT ENTITY
    generic
    (
        -- << START MEGAWIZARD INSERT GENERICS
        gLOCAL_AVALON_IF        : in string := "false";                                               
        gMEM_CHIPSELS           : in integer := 1;
        gMEM_CHIP_BITS          : in integer := 0;
        gMEM_BANK_BITS          : in integer := 2;
        gMEM_ROW_BITS           : in integer := 13;
        gMEM_COL_BITS           : in integer := 9;
        gMEM_DQ_PER_DQS         : in integer := 8;
        gLOCAL_DATA_BITS        : in integer := 64;
        gLOCAL_BURST_LEN        : in integer := 2;
        gLOCAL_BURST_LEN_BITS   : in integer := 2;
        gNUM_CLOCK_PAIRS        : in integer := 2
        -- << END MEGAWIZARD INSERT GENERICS

    );


    port
    (
       -- PCI interface
                -- PCI bus interface
                clk             : in std_logic;
                rstn            : in std_logic;
                idsel           : in std_logic;
                gntn            : in std_logic;
                reqn            : out std_logic;
                ad              : inout std_logic_vector(63 downto 0);
                cben            : inout std_logic_vector(7 downto 0);
                par             : inout std_logic;
                par64           : inout std_logic;
                req64n          : inout std_logic;
                framen          : inout std_logic;                      
                irdyn           : inout std_logic;
                ack64n          : inout std_logic;
                devseln         : inout std_logic;
                trdyn           : inout std_logic;
                stopn           : inout std_logic;
                perrn           : inout std_logic;
                serrn           : out std_logic;
                intan           : out std_logic;
                lockn           : inout std_logic;
                
                
       -- Clocking
      --
      osca_clk1 : in    std_logic;                          -- / LVTTL
      osca_clk6 : in    std_logic;                          -- / LVTTL
      clk_sma    : in std_logic;                          -- / LVTTL
   --   clk_to_max_a   : out    std_logic;                         -- / LVTTL  
  --    lpcix_clk 	: in    std_logic;                          -- / LVTTL
	ddr_sync_clk_in 	: in     std_logic;  	-- 
	ddr_sync_clk_out	: out    std_logic;	-- 
        -- ddr sdram interface
        clk_to_sdram    : out    std_logic_vector(1 downto 0);
        clk_to_sdram_n  : out    std_logic_vector(1 downto 0);

        
        ddr_cke         : out    std_logic;
        ddr_cs_n        : out    std_logic;
        ddr_ras_n       : out    std_logic;
        ddr_cas_n       : out    std_logic;
        ddr_we_n        : out    std_logic;
        ddr_ba          : out    std_logic_vector(2 downto 0);
        ddr_a           : out    std_logic_vector(15 downto 0);
        ddr_dq          : inout  std_logic_vector(31 downto 0);
        ddr_dqs         : inout  std_logic_vector(3 downto 0);
        ddr_dm          : out    std_logic_vector(3 downto 0);
        ddr_odt		: out    std_logic;
      
   --     ddr_sda         : inout std_logic;
   --    ddr_scl         : out std_logic;
        
       -- Santa Cruz Daughtercard
      --
      scruz_io       : out  std_logic_vector(40 downto 0);     -- / LVTTL
      scruz_cardseln : out    std_logic;                         -- / LVTTL
      clk_to_scruz   : out    std_logic;                         -- / LVTTL
      clk_from_scruz : in     std_logic;                         -- / 2.5V
      pll_to_scruz	:	out    std_logic;    	 -- Pin V21   
        -- miscellaneous
        user_led  : out   std_logic_vector(7 downto 0);
        user_pb1  : in    std_logic;
        user_pb2  : in    std_logic;
        user_dipsw    : in    std_logic_vector(4 downto 0);
        mresetn         : in     std_logic;                         -- / LVTTL
  
        
      
	conf_safe_cs0n	: in     std_logic;  
	conf_user_cs0n  : in     std_logic;  

  
        
   -- Ethernet lan91c111
      --
      lan_a          : out    std_logic_vector(15 downto 1);     -- / LVTTL
      lan_ben        : out    std_logic_vector(3 downto 0);      -- / LVTTL
      lan_d          : inout  std_logic_vector(31 downto 0);     -- / LVTTL
      lan_aen        : out    std_logic;                         -- / LVTTL
      lan_ldevn      : in    std_logic;  --should be out         -- / LVTTL
      lan_iochrdy    : out    std_logic;                         -- / LVTTL
      lan_iorn       : out    std_logic;                         -- / LVTTL
      lan_iown       : out    std_logic;                         -- / LVTTL
      lan_reset      : out    std_logic;                         -- / LVTTL
      lan_intrq0     : in     std_logic;                         -- / LVTTL
      lan_loopback   : out    std_logic;                         -- / LVTTL
      
      lan_adsn       : out   std_logic;
      lan_cyclen     : out    std_logic;                         -- / LVTTL
      lan_datacsn    : out    std_logic;                         -- / LVTTL
      lan_w_rn       : out    std_logic;                         -- / LVTTL
      lan_srdyn      : in    std_logic; -- should be in          -- / LVTTL
      lan_rdyrtn     : out    std_logic;                         -- / LVTTL
      lan_vlbusn     : out    std_logic;                         -- / LVTTL
      lan_clk	     : out    std_logic;  		 -- / LVTTL
      
      -- RS-232 Serial Port 
      --
      rs232_txd      : out    std_logic;                         -- / LVTTL
      rs232_rts      : out    std_logic;                         -- / LVTTL
      rs232_rxd      : in     std_logic;                         -- / LVTTL
      rs232_cts      : in     std_logic;                         -- / LVTTL
      
      -- Temperature Sensor Chip Interface
      --
    --  smb_clk        : out    std_logic;                         -- / LVTTL
    --  smb_data       : inout  std_logic;                         -- / LVTTL
     
       -- Mictor Analyzer Header
      --
     -- mictor_de      : out    std_logic_vector(15 downto 0);     -- / LVTTL
     -- mictor_do      : out    std_logic_vector(15 downto 0);     -- / LVTTL
     -- mictor_clke    : out   std_logic;                         -- / LVTTL
     -- mictor_clko    : out    std_logic;                          -- / LVTTL
      
      -- QDR
      
     	qdrii_a 	: out    std_logic_vector(19 downto 0);  
	qdrii_bwsn 	: out   std_logic_vector(1 downto 0); 
	qdrii_cq_n0	: in     std_logic;  
	qdrii_cq_p0	: in     std_logic;  
	qdrii_d		: out    std_logic_vector(17 downto 0); 
	qdrii_k_n0	: out    std_logic;
	qdrii_k_p0	: out    std_logic;
	qdrii_q		: in    std_logic_vector(17 downto 0); 
	qdrii_rpsn0	: out    std_logic;
	qdrii_sync_clk_in 	: in     std_logic;  	-- Pin AD13 instance 0 
	qdrii_sync_clk_out	: out    std_logic;	-- Pin AE18 instance 1 
	qdrii_wpsn0 	: out    std_logic 
        
   -- 
    );
end;
-- << START MEGAWIZARD INSERT ARCHITECTURE
architecture rtl of cpd_top is
-- << END MEGAWIZARD INSERT ARCHITECTURE

component ddr_intf is
Port(
     ClkPci                 : in std_logic;
     ClkDdr                 : in std_logic;
     Rstn                   : in std_logic;
        
     TargWr_i               : in std_logic;
     DdrAdr_i               : in std_logic_vector(24 downto 0);
     P2sFIFOUsedw_i         : in std_logic_vector(6 downto 0);
     DdrEndTxfr_o           : out std_logic;
     
     TargRd_i               : in std_logic;
     DdrAccessReq_i         : in std_logic;
     DmaLARReg_i            : in std_logic_vector(24 downto 0);
     DmaBCRReg_i            : in std_logic_vector(16 downto 0);
     DmaCSRReg_i            : in std_logic_vector(8 downto 0);
     
     WrAbrt_i               : in std_logic;
     RdAbrt_i               : in std_logic;
     WrAbrtWod_i            : in std_logic;
     
     DdrBSize_o             : out std_logic_vector(2 downto 0);
     DdrWrReq_o             : out std_logic;
     DdrRdReq_o             : out std_logic;
     DDrAdr_o               : out std_logic_vector(24 downto 0);
     DdrAck_i               : in std_logic;
     DdrRdDatVld_i          : in std_logic;
     p2s_fifo_rdreq          : in std_logic;  -- local write data request
     wr_one_block         : out std_logic;  -- block local req to fifo for wrone
      rd_one_block_dvalid    : out std_logic   -- block local rdata valid to fifo for rd one
    );
        
        
end component;



component backend

Port    (   -- pci core interface
        pci_clk         : in std_logic;
        ddr_clk         : in std_logic;
        osc_clk         : in std_logic;
        rstn            : in std_logic;
        l_adi           : out std_logic_vector(63 downto 0);
        l_cbeni         : out std_logic_vector(7 downto 0);
        l_dato          : in std_logic_vector(63 downto 0);
        l_adro          : in std_logic_vector(31 downto 0);
        l_beno          : in std_logic_vector(7 downto 0);
        l_cmdo          : in std_logic_vector(3 downto 0);
        l_hdat_ackn     : in std_logic;
        l_ldat_ackn     : in std_logic;
        lm_req32n       : out std_logic;
        lm_req64n       : out std_logic;
        lm_lastn        : out std_logic;
        lm_rdyn         : out std_logic;
        lm_adr_ackn     : in std_logic;
        lm_ackn         : in std_logic;
        lm_dxfrn        : in std_logic;
        lm_tsr          : in std_logic_vector(9 downto 0);
    
        
        lt_abortn       : out std_logic;
        lt_discn        : out std_logic;
        lt_rdyn         : out std_logic;
        lt_framen       : in std_logic;
        lt_ackn         : in std_logic;
        lt_dxfrn        : in std_logic;
        lt_tsr          : in std_logic_vector(11 downto 0);
        lirqn           : out std_logic;
        stat_reg        : in std_logic_vector(5 downto 0); -- was 5
        
        -- sdram controller interface
        
        sdram_trigger       : out std_logic;
        csr_reg         : out std_logic_vector(8 downto 0);
        bcr_reg         : out std_logic_vector(16 downto 0);
        lar_reg         : out std_logic_vector(24 downto 0);
        targ_wr         : out std_logic;
        targ_rd         : out std_logic;
        abrt_wr         : out std_logic;
        abrt_rd         : out std_logic;
        p2s_lfifo_dato      : out std_logic_vector(31 downto 0);        
        p2s_hfifo_dato      : out std_logic_vector(31 downto 0);
        p2s_lfifo_rdusedw       : out std_logic_vector(6 downto 0);
        p2s_fifo_rdreq      : in std_logic;
        s2p_fifo_dati       : in std_logic_vector(63 downto 0);
        s2p_fifo_wrreq      : in std_logic;
        sdram_end_txfr      : in std_logic;
        sdram_adr       : out std_logic_vector(25 downto 0);
        bar0_hit        : out std_logic;
        bar1_hit        : out std_logic;
        data_mask       : out std_logic_vector(7 downto 0);
        abrt_wr_wod             : out std_logic;
        wr_one_block       : in std_logic;     -- block local req to fifo for wrone
         rd_one_block_dvalid    : in std_logic;   -- block local rdata valid to fifo for rd one
        -- flash interface
    --    flash_status            : in std_logic_vector(31 downto 0);
    --    flash_rd_data            : in std_logic_vector(31 downto 0);
        scruz_io                 : out std_logic_vector(15 downto 0)
                             
    );

end component;

-- << START MEGAWIZARD INSERT WRAPPER_COMPONENT
  component ddr_top
	PORT (
		resynch_clk	: IN STD_LOGIC;
		clk	: IN STD_LOGIC;
		reset_n	: IN STD_LOGIC;
		write_clk	: IN STD_LOGIC;
		local_read_req	: IN STD_LOGIC;
		local_write_req	: IN STD_LOGIC;
		local_addr	: IN STD_LOGIC_VECTOR (22 DOWNTO 0);
		local_wdata	: IN STD_LOGIC_VECTOR (63 DOWNTO 0);
		local_be	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		local_size	: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		local_ready	: OUT STD_LOGIC;
		local_rdata	: OUT STD_LOGIC_VECTOR (63 DOWNTO 0);
		local_rdata_valid	: OUT STD_LOGIC;
		local_rdvalid_in_n	: OUT STD_LOGIC;
		local_init_done	: OUT STD_LOGIC;
		local_refresh_ack	: OUT STD_LOGIC;
		local_wdata_req	: OUT STD_LOGIC;
		ddr2_odt	: OUT STD_LOGIC;
		clk_to_sdram	: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
		clk_to_sdram_n	: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
		ddr2_cs_n	: OUT STD_LOGIC;
		ddr2_cke	: OUT STD_LOGIC;
		ddr2_a	: OUT STD_LOGIC_VECTOR (12 DOWNTO 0);
		ddr2_ba	: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
		ddr2_ras_n	: OUT STD_LOGIC;
		ddr2_cas_n	: OUT STD_LOGIC;
		ddr2_we_n	: OUT STD_LOGIC;
		ddr2_dm	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		ddr2_dq	: INOUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		ddr2_dqs	: INOUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
end component;



-- << START MEGAWIZARD INSERT PDLL_COMPONENTS

    component ddr_pll_cycloneii
        port
        (
            inclk0  : in std_logic  := '0';
            c0      : out std_logic;
            c1      : out std_logic;
            c2      : out std_logic
            
        );
    end component;
    
    component pci_top

port (
    l_adi : IN std_logic_vector(63 downto 0);
    l_cbeni : IN std_logic_vector(7 downto 0);
    cache : OUT std_logic_vector(7 downto 0);
    cmd_reg : OUT std_logic_vector(6 downto 0);

    l_adro : OUT std_logic_vector(63 downto 0);
    l_beno : OUT std_logic_vector(7 downto 0);
    l_cmdo : OUT std_logic_vector(3 downto 0);
    l_dato : OUT std_logic_vector(63 downto 0);
    lm_tsr : OUT std_logic_vector(9 downto 0);
    lt_tsr : OUT std_logic_vector(11 downto 0);
    stat_reg : OUT std_logic_vector(6 downto 0); ---was 5
    ad : INOUT std_logic_vector(63 downto 0);
    cben : INOUT std_logic_vector(7 downto 0);
    clk : IN std_logic;
    gntn : IN std_logic;
    idsel : IN std_logic;
    lirqn : IN std_logic;
    lm_lastn : IN std_logic;
    lm_rdyn : IN std_logic;
    lm_req32n : IN std_logic;
    lm_req64n : IN std_logic;
    lt_abortn : IN std_logic;
    lt_discn : IN std_logic;
    lt_rdyn : IN std_logic;
    rstn : IN std_logic;
    intan : OUT std_logic;
    l_hdat_ackn : OUT std_logic;
    l_ldat_ackn : OUT std_logic;
    lm_ackn : OUT std_logic;
    lm_adr_ackn : OUT std_logic;
    lm_dxfrn : OUT std_logic;
    lt_ackn : OUT std_logic;
    lt_dxfrn : OUT std_logic;
    lt_framen : OUT std_logic;
    reqn : OUT std_logic;
    serrn : OUT std_logic;
    ack64n : INOUT std_logic;
    devseln : INOUT std_logic;
    framen : INOUT std_logic;
    irdyn : INOUT std_logic;
    par : INOUT std_logic;
    par64 : INOUT std_logic;
    perrn : INOUT std_logic;
    req64n : INOUT std_logic;
    stopn : INOUT std_logic;
    trdyn : INOUT std_logic
    
    );
end component;

   

-- << START MEGAWIZARD INSERT LOCAL_SIGNALS
    

    signal ddr_clk                  : std_logic;
  --  signal dedicated_resynch_or_capture_clk : std_logic;
    signal ddr_clk_shifted            : std_logic;
  --  signal resynch_clk          : std_logic;
    signal dqs_ref_clk          : std_logic;
    
   -- signal ddr_local_addr           : std_logic_vector(gMEM_CHIP_BITS + gMEM_ROW_BITS + gMEM_BANK_BITS + gMEM_COL_BITS - 2 downto 0);  
    signal ddr_local_addr           : std_logic_vector(24 downto 0);
    
     signal ddr_local_col_addr       : std_logic_vector(gMEM_COL_BITS  - 1 downto 0);
    signal ddr_local_cs_addr        : std_logic_vector(1  - 1 downto 0);
    signal ddr_local_wdata          : std_logic_vector(gLOCAL_DATA_BITS - 1 downto 0);
    signal ddr_local_rdata          : std_logic_vector(gLOCAL_DATA_BITS - 1 downto 0);
    signal ddr_local_be             : std_logic_vector(gLOCAL_DATA_BITS/8 - 1 downto 0);
    signal ddr_local_read_req       : std_logic;
    signal ddr_local_write_req      : std_logic;

  --  signal ddr_local_size           : std_logic_vector(gLOCAL_BURST_LEN_BITS-1 downto 0);
  signal ddr_local_size           : std_logic_vector(2 downto 0);
  
    signal ddr_local_ready          : std_logic;
    signal ddr_local_rdata_valid    : std_logic;
    signal ddr_local_wdata_req      : std_logic;
    signal ddr_local_refresh_req    : std_logic;

    signal ddr_local_init_done      : std_logic;
    signal ddr_local_rdvalid_in_n   : std_logic;

    signal vcc_signal           : std_logic_vector(gNUM_CLOCK_PAIRS-1 downto 0);
    signal gnd_signal           : std_logic_vector(gNUM_CLOCK_PAIRS-1 downto 0);
    signal clk_out              : std_logic_vector(gNUM_CLOCK_PAIRS-1 downto 0);
    signal clk_out_n            : std_logic_vector(gNUM_CLOCK_PAIRS-1 downto 0);
    signal resynch_clock        : std_logic;

------------------------------------------------------------------------------------
signal  l_adi           : std_logic_vector(63 downto 0);
signal  l_cbeni         : std_logic_vector(7 downto 0);
signal  l_adro          : std_logic_vector(63 downto 0);
signal  l_beno          : std_logic_vector(7 downto 0);       
signal  l_cmdo          : std_logic_vector(3 downto 0);    
signal  l_dato          : std_logic_vector(63 downto 0);    
signal  lm_tsr          : std_logic_vector(9 downto 0);    
signal  lt_tsr          : std_logic_vector(11 downto 0);    
signal  stat_reg        : std_logic_vector(6 downto 0);  -- was 5  
signal  lirqn           : std_logic;
signal  lm_lastn        : std_logic;
signal  lm_rdyn         : std_logic;
signal  lm_req32n       : std_logic;
signal  lm_req64n       : std_logic;
signal  lt_abortn       : std_logic;
signal  lt_discn        : std_logic;
signal  lt_rdyn         : std_logic;
signal  l_hdat_ackn     : std_logic;
signal  l_ldat_ackn     : std_logic;
signal  lm_ackn         : std_logic;
signal  lm_adr_ackn     : std_logic;
signal  lm_dxfrn        : std_logic;
signal  lt_ackn         : std_logic;
signal  lt_dxfrn        : std_logic;
signal  lt_framen       : std_logic;

        
signal  sdram_trigger   : std_logic;         
signal  csr_reg         : std_logic_vector(8 downto 0);         
signal  bcr_reg         : std_logic_vector(16 downto 0);         
signal  lar_reg         : std_logic_vector(24 downto 0);         
signal  targ_wr         : std_logic;         
signal  targ_rd         : std_logic;         
signal  abrt_wr         : std_logic;         
signal  abrt_rd         : std_logic;         
signal  p2s_lfifo_dato  : std_logic_vector(31 downto 0);         
signal  p2s_hfifo_dato  : std_logic_vector(31 downto 0);         
signal  p2s_lfifo_rdusedw : std_logic_vector(6 downto 0);         
signal  p2s_fifo_rdreq  : std_logic;         
signal  ddr_dat_out     : std_logic_vector(63 downto 0); --(127 downto 0);
signal  ddr_rd_vld      : std_logic;           
signal  sdram_end_txfr  : std_logic;        
signal  data_mask       : std_logic_vector(7 downto 0);         
signal  abrt_wr_wod     : std_logic;         
--signal  flash_status    : std_logic_vector(31 downto 0);     
--signal  flash_rd_data   : std_logic_vector(31 downto 0);     
 
signal  ddr_bsize       : std_logic_vector(2 downto 0);                    
signal  ddr_wr_req      : std_logic;
signal  ddr_rd_req      : std_logic;
signal  ddr_adr         : std_logic_vector(24 downto 0);
signal  ddr_ack         : std_logic;
signal  dm_in           : std_logic_vector(7 downto 0); --(15 downto 0);
signal  ddr_cntrl_datin : std_logic_vector( 63 downto 0); --(127 downto 0);
signal  s2p_fifo_dati   : std_logic_vector(63 downto 0);
signal  bar0_hit        : std_logic;

signal  user_led_cntr   : std_logic_vector(31 downto 0);
signal  pci_clk_cntr   : std_logic_vector(3 downto 0);
signal  ddr_clk_cntr   : std_logic_vector(6 downto 0);

signal   wr_one_block    : std_logic;
signal    rd_one_block_dvalid    : std_logic;   -- block local rdata valid to fifo for rd one

--signal	reconfig	: std_logic;
--signal	reconfig_addr	: std_logic_vector(3 downto 0);
--signal	reconfig_st	: std_logic_vector(1 downto 0);
--signal	reconfig_cntr	: std_logic_vector(3 downto 0);
signal ddr_dat_out_reg  : std_logic_vector(63 downto 0);   --(127 downto 0);
signal ddr_rd_vld_reg   : std_logic;
signal	clk_33			:std_logic;
signal	rstn_d1			:std_logic;
signal	pci_clk_66		:std_logic;
signal	pci_clkby16		:std_logic;
signal	ack_64_latch 		:std_logic;
signal	pci_clkby16_l		:std_logic;

signal  trigger                : std_logic;
signal trigger_data:  std_logic_vector(7 downto 0);
signal  trigger1                : std_logic;
signal trigger_data1:  std_logic_vector(7 downto 0);

    signal ddr_local_wdata_r          : std_logic_vector(gLOCAL_DATA_BITS - 1 downto 0);
    signal ddr_local_be_r             : std_logic_vector(gLOCAL_DATA_BITS/8 - 1 downto 0);

    
begin
	
-- unsued I/O connections
ddr_a(15 downto 13) <= (others => '0');
ddr_ba(2) <= '0';

--ddr_dp <= (others => 'Z');
--ddr_cke(1) <= '0';


--ddr_sda <= 'Z';
--ddr_scl <= '0';
--ddr_dm(8 downto 4) <= (others => '0');


lockn <= 'Z';
--cpld_csn <= 'Z';
--ddr_dq(63 downto 32) <= (others => 'Z');
--ddr_dqs(8 downto 4) <= (others => 'Z');
scruz_io <= (others => '0');
lan_d <= (others => 'Z');
 --mictor_de <=   (others => '0');
 --mictor_do <=  (others => '0');
 --mictor_clke   <= '0';
 --mictor_clko   <= '0';
      lan_a       <= (others => '1')  ;
      lan_ben        <= (others => '1')  ;
      lan_aen      <=   '1';                         -- / LVTTL
  --    lan_ldevn    <=   '1';                        -- / LVTTL
      lan_iochrdy  <=   '1';                         -- / LVTTL
      lan_iorn     <=   '1';                         -- / LVTTL
      lan_iown     <=   '1';                         -- / LVTTL
      lan_reset    <=   '1';                         -- / LVTTL
      lan_loopback <=   '1';                         -- / LVTTL
                 
      lan_adsn     <=   '1';
      lan_cyclen   <=  '1';                        -- / LVTTL
      lan_datacsn  <=   '1';                    -- / LVTTL
      lan_w_rn     <=  '0';                         -- / LVTTL
   --   lan_srdyn    <=   'Z';                         -- / LVTTL
      lan_rdyrtn   <=   '1';                         -- / LVTTL
      lan_vlbusn   <=  '1';                        -- / LVTTL

      scruz_cardseln  <=  '1';                          -- / LVTTL
      clk_to_scruz   <=  '0';                         -- / LVTTL
      
      -- smb_clk         <= '0';                        -- / LVTTL
     -- smb_data  <=     'Z';                         -- / LVTTL
	pll_to_scruz	<= '0';
	
	qdrii_a <=   (others => '1'); 	
	qdrii_bwsn <=   (others => '1');	
	
	 
	qdrii_d	<=   (others => '1');	
	qdrii_k_n0<=  '1'; 	
	qdrii_k_p0	<=  '1'; 
	
	qdrii_rpsn0<=  '1'; 	
	
	qdrii_sync_clk_out<=  '1'; 	
	qdrii_wpsn0 <=  '1'; 	
        

  process (rstn, ddr_clk)
     begin
         if (rstn = '0') then 
             ddr_dat_out_reg <= (others => '0');
             ddr_rd_vld_reg <= '0';
         elsif (ddr_clk'event and (ddr_clk = '1')) then
--             ddr_dat_out_reg <= (others => '1');
             ddr_dat_out_reg <= ddr_local_rdata;
             ddr_rd_vld_reg <= ddr_local_rdata_valid and not rd_one_block_dvalid  ;
         end if;
     end process;
     
--   scruz_io <= ddr_local_rdata (63 downto 23) xor  
--               ddr_local_rdata (40 downto 0);
    vcc_signal     <= (others => '1');
    gnd_signal     <= (others => '0');


    -- Custom logic to implement user controlled refreshes can be added here....
    ddr_local_refresh_req <= '0';  --refreshes disabled

   -- << START MEGAWIZARD INSERT CLOCKS
    -----------------------------------------------------------------
    -- Read data resynchronisation clock selection
    -----------------------------------------------------------------
   -- resynch_clk <= ddr_sync_clk_in;

    -----------------------------------------------------------------
    -- DQS Postamble clock selection
    -----------------------------------------------------------------

   -- << END MEGAWIZARD INSERT CLOCKS

 ddr_local_be <= not(data_mask);
 ddr_local_wdata <= p2s_hfifo_dato & p2s_lfifo_dato ;

--
--     
-- 
--ddr_top_inst : ddr_top
--
----port map (
----		resynch_clk => resynch_clock,
----		clk	        => ddr_clk,
----		reset_n	    => rstn,
----		write_clk	=> ddr_clk_shifted,
----		local_read_req	=> ddr_local_read_req,
----		local_write_req	=> ddr_local_write_req,
----		local_addr	=> ddr_local_addr(22 downto 0),
----		local_wdata	=> ddr_local_wdata,
----		local_be	 => ddr_local_be,
----		local_size  => ddr_local_size(1 downto 0),
----		local_ready	 => ddr_local_ready,
----		local_rdata	 => ddr_local_rdata,
----		local_rdata_valid => ddr_local_rdata_valid,
----		local_rdvalid_in_n => OPEN,
----		local_init_done => OPEN,
----		local_refresh_ack	=> OPEN,
----		local_wdata_req	  => p2s_fifo_rdreq,
----		ddr_odt	           => ddr_odt,
----		clk_to_sdram	     => clk_to_sdram,
----		clk_to_sdram_n	   => clk_to_sdram_n,
----		ddr_cs_n	  => ddr_cs_n,
----		ddr_cke	  => ddr_cke,
----		ddr_a	=> ddr_a(12 downto 0),
----		ddr_ba	 => ddr_ba(1 downto 0),
----		ddr_ras_n	=> ddr_ras_n,
----		ddr_cas_n	 => ddr_cas_n,
----		ddr_we_n	=> ddr_we_n,
----		ddr_dm	=> ddr_dm(3 downto 0),
----		ddr_dq	  => ddr_dq(31 downto 0),
----		ddr_dqs    => ddr_dqs(3 downto 0)            
----	);
--port map (
--		resynch_clk => resynch_clock,
--		clk	        => ddr_clk,
--		reset_n	    => rstn,
--		write_clk	=> ddr_clk_shifted,
--		local_read_req	=> ddr_local_read_req,
--		local_write_req	=> ddr_local_write_req,
--		local_addr	=> ddr_local_addr(22 downto 0),
--		local_wdata	=> ddr_local_wdata,
--		local_be	 => ddr_local_be,
--		local_size  => ddr_local_size(1 downto 0),
--		local_ready	 => ddr_local_ready,
----		local_rdata	 => "1111111111111111111111111111111111111111111111111111111111111111",
--		local_rdata	 => ddr_local_rdata,
--		local_rdata_valid => ddr_local_rdata_valid,
--		local_rdvalid_in_n => OPEN,
--		local_init_done => OPEN,
--		local_refresh_ack	=> OPEN,
--		local_wdata_req	  => p2s_fifo_rdreq,
--		ddr2_odt	           => ddr_odt,
--		clk_to_sdram	     => clk_to_sdram,
--		clk_to_sdram_n	   => clk_to_sdram_n,
--		ddr2_cs_n	  => ddr_cs_n,
--		ddr2_cke	  => ddr_cke,
--		ddr2_a	=> ddr_a(12 downto 0),
--		ddr2_ba	 => ddr_ba(1 downto 0),
--		ddr2_ras_n	=> ddr_ras_n,
--		ddr2_cas_n	 => ddr_cas_n,
--		ddr2_we_n	=> ddr_we_n,
--		ddr2_dm	=> ddr_dm(3 downto 0),
--		ddr2_dq	  => ddr_dq(31 downto 0),
--		ddr2_dqs    => ddr_dqs(3 downto 0)
--	);
--
--
--    -- Self-test, synthesisable code to exercise the DDR SDRAM Controller
--	-- << START MEGAWIZARD INSERT PDLL
--    --------------------------------------------------------------
--    --  Instantiate PLL for DDR SDRAM Controller
--    --------------------------------------------------------------
--
--    g_cyclonepll_ddr_pll_inst : ddr_pll_cycloneii
--    port map
--        (
--            inclk0  => osca_clk1,
--            c0      => ddr_clk,                                 -- system clock
--            c1      => ddr_clk_shifted,
--            c2      => resynch_clock                         -- 90 deg shifted
--    
--        );
--
--  -----------------------------------------------------
--
--    -- << START MEGAWIZARD INSERT DDR_CLK_OUT
--    --------------------------------------------------------------
--    --  Stratix/Cyclone can drive clocks out on normal pins using
--    --  ALTDDIO_OUT megafunction
--    --------------------------------------------------------------
--
--    -- Instantiate DDR IOs for driving the SDRAM clock off-chip
--   
--
--    -- << END MEGAWIZARD INSERT DDR_CLK_OUT
--
----xxxx
--
--
--
--
--
--
--  -- Instantiate the ddr controller interface logic
--  ddr_controller_interface : ddr_intf
--
--port map (
--                ClkPci                 => clk,
--                ClkDdr                 => ddr_clk,
--                Rstn                   => rstn,
--                TargWr_i               => targ_wr, 
--                DdrAdr_i               => l_adro(27 downto 3),  -- qwords address
--                P2sFIFOUsedw_i         => p2s_lfifo_rdusedw,
--                DdrEndTxfr_o           => sdram_end_txfr,
--                TargRd_i               => targ_rd,
--                DdrBSize_o             => ddr_local_size(2 downto 0),
--                DdrWrReq_o             => ddr_local_write_req,
--                DdrRdReq_o             => ddr_local_read_req,
--                DDrAdr_o               => ddr_local_addr,
--                DdrAck_i               => ddr_local_ready,
--                DdrRdDatVld_i          => ddr_local_rdata_valid,
--                DdrAccessReq_i         => sdram_trigger,
--                DmaLARReg_i            => lar_reg,
--                DmaBCRReg_i            => bcr_reg,
--                DmaCSRReg_i            => csr_reg,
--                WrAbrt_i               => abrt_wr,
--                RdAbrt_i               => abrt_rd,
--                WrAbrtWod_i            => abrt_wr_wod,
--                p2s_fifo_rdreq         =>  p2s_fifo_rdreq,		-- local write data request
--                wr_one_block           =>  wr_one_block, -- block local req to fifo for wrone
--                rd_one_block_dvalid    => rd_one_block_dvalid -- block local rdata valid to fifo for rd one
--          );
--
--
---- instantiate local pci interface logic
--
--backend0 : backend
--
--port map (
--                        pci_clk             =>  clk,
--                        ddr_clk             =>  ddr_clk,
--                        osc_clk             => osca_clk6,-- old 33MHZ 
--                        rstn                => rstn,
--                        l_adi               => l_adi,
--                        l_cbeni             => l_cbeni,
--                        l_dato              => l_dato, 
--                        l_adro              => l_adro(31 downto 0), 
--                        l_beno              => l_beno, 
--                        l_cmdo              => l_cmdo, 
--                        l_hdat_ackn         => l_hdat_ackn, 
--                        l_ldat_ackn         => l_ldat_ackn, 
--                        lm_req32n           => lm_req32n, 
--                        lm_req64n           => lm_req64n, 
--                        lm_lastn            => lm_lastn, 
--                        lm_rdyn             => lm_rdyn, 
--                        lm_adr_ackn         => lm_adr_ackn, 
--                        lm_ackn             => lm_ackn,
--                        lm_dxfrn            => lm_dxfrn, 
--                        lm_tsr              => lm_tsr,
--                        lt_abortn           => lt_abortn,
--                        lt_discn            => lt_discn ,
--                        lt_rdyn             => lt_rdyn ,
--                        lt_framen           => lt_framen, 
--                        lt_ackn             => lt_ackn ,
--                        lt_dxfrn            => lt_dxfrn ,
--                        lt_tsr              => lt_tsr ,
--                        lirqn               => lirqn ,
--                        stat_reg            => stat_reg(5 downto 0),  --- was 5
--                        -- sdram controller interface    
--                        bar0_hit            => bar0_hit,
--                        sdram_trigger       =>  sdram_trigger,
--                        csr_reg             =>  csr_reg,
--                        bcr_reg             =>  bcr_reg,
--                        lar_reg             =>  lar_reg,
--                        targ_wr             =>  targ_wr,
--                        targ_rd             =>  targ_rd,
--                        abrt_wr             =>  abrt_wr,
--                        abrt_rd             =>  abrt_rd,
--                        p2s_lfifo_dato      =>  p2s_lfifo_dato,
--                        p2s_hfifo_dato      =>  p2s_hfifo_dato,
--                        p2s_lfifo_rdusedw   =>  p2s_lfifo_rdusedw,
--                        p2s_fifo_rdreq      =>  p2s_fifo_rdreq,
--                        s2p_fifo_dati       =>  ddr_dat_out_reg,
--                        s2p_fifo_wrreq      =>  ddr_rd_vld_reg,
--                        sdram_end_txfr      =>  sdram_end_txfr,
--                        data_mask           =>  data_mask,
--                        abrt_wr_wod         =>  abrt_wr_wod,
--                        wr_one_block          =>  wr_one_block,  -- block local req to fifo for wrone
--                        rd_one_block_dvalid    => rd_one_block_dvalid -- block local rdata valid to fifo for rd one
--                        -- flash interface
--     --                   flash_status       => flash_status,
--       --                 flash_rd_data	   => flash_rd_data
--                        
--               
--                
--        );
--
---- instantiate the PCI core
--pci_mt64 : pci_top
--
--port map (
--
--                l_adi           =>      l_adi,                  
--                l_cbeni         =>      l_cbeni,        
--                l_adro          =>      l_adro,
--                l_beno          =>      l_beno,
--                l_cmdo          =>      l_cmdo,
--                l_dato          =>      l_dato,
--                lm_tsr          =>      lm_tsr,
--                lt_tsr          =>      lt_tsr,
--                stat_reg        =>      stat_reg(6 downto 0), -- was 5
--                ad              =>      ad,
--                cben            =>      cben,
--                clk             =>      clk,
--                gntn            =>      gntn,
--                idsel           =>      idsel,
--                lirqn           =>      lirqn,
--                lm_lastn        =>      lm_lastn,
--                lm_rdyn         =>      lm_rdyn,
--                lm_req32n       =>      lm_req32n,
--                lm_req64n       =>      lm_req64n,
--                lt_abortn       =>      lt_abortn,
--                lt_discn        =>      lt_discn,
--                lt_rdyn         =>      lt_rdyn,
--                rstn            =>      rstn,
--                intan           =>      intan,
--                l_hdat_ackn     =>      l_hdat_ackn,
--                l_ldat_ackn     =>      l_ldat_ackn,
--                lm_ackn         =>      lm_ackn,
--                lm_adr_ackn     =>      lm_adr_ackn,
--                lm_dxfrn        =>      lm_dxfrn,
--                lt_ackn         =>      lt_ackn,
--                lt_dxfrn        =>      lt_dxfrn,
--                lt_framen       =>      lt_framen,
--                reqn            =>      reqn,
--                serrn           =>      serrn,
--                ack64n          =>      ack64n,
--                devseln         =>      devseln,
--                framen          =>      framen,
--                irdyn           =>      irdyn,
--                par             =>      par,
--                par64           =>      par64,
--                perrn           =>      perrn,
--                req64n          =>      req64n,
--                stopn           =>      stopn,
--                trdyn           =>      trdyn
--        );
--        
--    
--
--        
-------------------------------------------------------
-- User LEDs

process(clk, rstn)
begin
  if(rstn = '0') then
    user_led_cntr <= (others => '0');
  elsif(clk'event and clk='1') then
    user_led_cntr <= user_led_cntr + 1;
  end if;
end process;


process(clk, rstn)
begin
  if(rstn = '0') then
    pci_clk_cntr <= (others => '0');
  elsif(clk'event and clk='1') then
    pci_clk_cntr <= pci_clk_cntr + 1;
  end if;
end process;

process(ddr_clk)
begin
   
  if(ddr_clk'event and ddr_clk='1') then    
     pci_clkby16 <= pci_clk_cntr(3);   -- synch with ddrclk
     pci_clkby16_l <=  pci_clkby16;
  end if;
end process;

process(ddr_clk, rstn)
begin
  if(rstn = '0') then
    ddr_clk_cntr <= (others => '0');
    
  elsif(ddr_clk'event and ddr_clk='1') then
    	if (pci_clkby16 = '1') then
    		ddr_clk_cntr <= ddr_clk_cntr + 1;
    	else
       		ddr_clk_cntr <= (others => '0');
	end if;
  end if;
end process;

process(ddr_clk, rstn)
begin
  if(rstn = '0') then
    pci_clk_66 <=  '0';
    
  elsif(ddr_clk'event and ddr_clk='1') then
      if (pci_clkby16 = '0' and pci_clkby16_l = '1') then
    	if (ddr_clk_cntr < 28 ) then
    		 pci_clk_66 <= '1';
    	else
       		pci_clk_66 <=  '0';	
	end if;
	end if;
  end if;
end process;




--user_led(7 downto 1) <= user_led_cntr(31 downto 25);

--user_led(0) <= '1';
--user_led(1) <= '1';
--user_led(2) <= trigger1;
--user_led(2) <= '1';

user_led(7 downto 0) <= user_led_cntr(31 downto 24);
--user_led(6) <= not ack64n ;
--user_led(6) <= not rstn ;
--user_led(7) <= not pci_clk_66;  -- led on for 66Mhz ; off for 33

----------------------------------------------------------------------
-- kau
--process(ddr_clk,rstn)  --- trigger
--  begin 
--    if(rstn = '0') then
--          trigger_data1 <= "00000000";
--          trigger1<= '0';
--    elsif(ddr_clk'event and ddr_clk ='1') then
--          trigger_data1 <= ddr_local_rdata(11 downto 4);
--
--        if((trigger_data1 = "00011100" )and (ddr_local_rdata_valid = '1') ) then   --- 
--                 trigger1 <= '1';	--           
--      	else
--      	        trigger1 <= '0';
--  	
--    	end if;
--    end if;
--    
-- end process;

process(ddr_clk,rstn)  --- trigger
begin
  if(rstn = '0') then
    ddr_local_wdata_r <= (others=>'0');
    trigger1<= '0';
  elsif(ddr_clk'event and ddr_clk ='1') then
    if (ddr_local_be = "00000000")  then
      ddr_local_wdata_r <= ddr_local_wdata;

      if ddr_local_wdata_r = ddr_local_wdata then
        trigger1 <= '1';
      else
        trigger1 <= '0';          
      end if;
      
    end if;
  end if;         
end process;



    process(clk,rstn)  --- trigger
  begin 
    if(rstn = '0') then
          trigger_data <= "00000000";
          trigger<= '0';
    elsif(clk'event and clk ='1') then
          trigger_data <= "00000000";		--  have ad only when required to debug;  ad(11 downto 4);
  --  if((trigger_data = "01101010" )and (framen = '0') ) then   -- include frame when required to debug
        if((trigger_data = "01101010" ) ) then   --- 
                 trigger <= '1';	--           
      	else
      	        trigger <= '0';
  	
    	end if;
    end if;
    
 end process;
end rtl;
 
