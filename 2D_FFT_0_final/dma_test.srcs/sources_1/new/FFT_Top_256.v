module FFT_Top_256 (
    input                   aclk,
    input                   aresetn,
    input [31:0]            s_axis_data_tdata,
    input                   s_axis_data_tvalid,
    output                  s_axis_data_tready,
    input                   s_axis_data_tlast,
    output [31:0]           m_axis_data_tdata,
    output                  m_axis_data_tvalid,
    input                   m_axis_data_tready,
    output                  m_axis_data_tlast
);
    // 实例化256点FFT IP核 - 已在IP配置阶段设置好参数
    xfft_0 u_xfft_0 (
        .aclk(aclk),
        .aresetn(aresetn),
		.s_axis_config_tdata(16'h0000),  // 直接连接常量
        .s_axis_config_tvalid(1'b1),     // 始终有效
        .s_axis_config_tready(),         // 不使用可以悬空
        .s_axis_data_tdata(s_axis_data_tdata),
        .s_axis_data_tvalid(s_axis_data_tvalid),
        .s_axis_data_tready(s_axis_data_tready),
        .s_axis_data_tlast(s_axis_data_tlast),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_data_tready(m_axis_data_tready),
        .m_axis_data_tlast(m_axis_data_tlast)
    );
endmodule