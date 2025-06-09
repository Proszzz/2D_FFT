

module top_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
   
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb
   );
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
 

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FCLK_CLK0;
  wire FCLK_RESET0_N;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [31:0]M_AXIS_TO_PL_tdata;
  wire M_AXIS_TO_PL_tlast;
  wire M_AXIS_TO_PL_tready;
  wire M_AXIS_TO_PL_tvalid;
  wire [31:0]S_AXIS_TO_PS_tdata;
  wire S_AXIS_TO_PS_tlast;
  wire S_AXIS_TO_PS_tready;
  wire S_AXIS_TO_PS_tvalid;
  
  /* wire  [31:0] s_axis_data_tdata;
  wire   s_axis_data_tvalid;
  wire   s_axis_data_tready;
  wire   s_axis_data_tlast ;
  wire  [31:0] m_axis_data_tdata ;
  wire   m_axis_data_tvalid;
  wire   m_axis_data_tready;
  wire   m_axis_data_tlast  ;
  assign   s_axis_data_tdata =M_AXIS_TO_PL_tdata;
  assign   s_axis_data_tvalid=M_AXIS_TO_PL_tvalid;
  assign   s_axis_data_tready=M_AXIS_TO_PL_tready;
  assign   s_axis_data_tlast=  M_AXIS_TO_PL_tlast;
  assign   m_axis_data_tdata=S_AXIS_TO_PS_tdata;
  assign   m_axis_data_tvalid=S_AXIS_TO_PS_tvalid;
  assign   m_axis_data_tready=S_AXIS_TO_PS_tready;
  assign   m_axis_data_tlast=S_AXIS_TO_PS_tlast; */

  top top_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FCLK_CLK0(FCLK_CLK0),
        .FCLK_RESET0_N(FCLK_RESET0_N),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .M_AXIS_TO_PL_tdata(M_AXIS_TO_PL_tdata),
        .M_AXIS_TO_PL_tlast(M_AXIS_TO_PL_tlast),
        .M_AXIS_TO_PL_tready(M_AXIS_TO_PL_tready),
        .M_AXIS_TO_PL_tvalid(M_AXIS_TO_PL_tvalid),
        .S_AXIS_TO_PS_tdata(S_AXIS_TO_PS_tdata),
        .S_AXIS_TO_PS_tlast(S_AXIS_TO_PS_tlast),
        .S_AXIS_TO_PS_tready(S_AXIS_TO_PS_tready),
        .S_AXIS_TO_PS_tvalid(S_AXIS_TO_PS_tvalid));
        
          FFT_2D_Top u_FFT_Top (
    .aclk(FCLK_CLK0),
    .aresetn(FCLK_RESET0_N),
    
    // 连接 FFT_Top 的输入 AXI Stream 到数据源
    .s_axis_data_tdata(M_AXIS_TO_PL_tdata),     // 定义并连接源数据
    .s_axis_data_tvalid(M_AXIS_TO_PL_tvalid),   // 定义并连接源有效信号
    .s_axis_data_tready(M_AXIS_TO_PL_tready),   // 定义并连接源准备信号
    .s_axis_data_tlast(M_AXIS_TO_PL_tlast),     // 定义并连接源最后信号
    
    // 连接 FFT_Top 的输出 AXI Stream 到 M_AXIS_0
    .m_axis_data_tdata(S_AXIS_TO_PS_tdata),
    .m_axis_data_tvalid(S_AXIS_TO_PS_tvalid),
    .m_axis_data_tready(S_AXIS_TO_PS_tready),
    .m_axis_data_tlast(S_AXIS_TO_PS_tlast)        // 如果 `M_AXIS_0` 有 `tlast`
);


     
endmodule


