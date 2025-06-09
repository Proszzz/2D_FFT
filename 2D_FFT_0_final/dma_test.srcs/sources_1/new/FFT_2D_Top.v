module FFT_2D_Top (
    input                   aclk,
    input                   aresetn,
    // 输入接口（AXI-Stream）
    input [31:0]            s_axis_data_tdata,
    input                   s_axis_data_tvalid,
    output                  s_axis_data_tready,
    input                   s_axis_data_tlast,
    // 输出接口（AXI-Stream）
    output [31:0]           m_axis_data_tdata,
    output                  m_axis_data_tvalid,
    input                   m_axis_data_tready,
    output                  m_axis_data_tlast
);

// 参数定义
parameter ROW_SIZE   = 256;  // 行大小，即 256 点 FFT
parameter COL_SIZE   = 16;   // 列大小，即 16 点 FFT
parameter DATA_WIDTH = 32;   // 单点数据位宽（16 位实 + 16 位虚）

// 状态机定义
localparam IDLE      = 3'd0; 
localparam ROW_FFT   = 3'd1; 
localparam ROW_WAIT  = 3'd2; 
localparam COL_FFT   = 3'd3; 
localparam DONE      = 3'd4; 

reg [2:0] current_state, next_state;

// 行列计数器
reg [4:0]  row_count;     // 0 ~ 15
reg [8:0]  col_count;     // 0 ~ 255
reg [8:0]  data_count;    // 计数器复用
reg [3:0]  wait_cycles;   // 增加等待周期位宽，便于更灵活调整
reg        row_fft_done;  // 行FFT完成标志
reg        col_fft_done;  // 列FFT完成标志
reg        output_valid;  // 输出有效标志

// 第一级 FFT (256点) 接口
wire [31:0] fft_256_data_out;
wire        fft_256_valid_out;
wire        fft_256_ready_out;
wire        fft_256_last_out;

// 第二级 FFT (16点) 接口
wire [31:0] fft_16_data_out;
wire        fft_16_valid_out;
wire        fft_16_ready_out;
wire        fft_16_last_out;

// BRAM 控制信号
reg  [31:0] ram_data_in;
wire [31:0] ram_data_out;
reg         ram_we;
reg  [12:0] ram_addr_write;
reg  [12:0] ram_addr_read;
reg         ram_data_valid;

// 状态机：时序逻辑
always @(posedge aclk or negedge aresetn) begin
    if (!aresetn)
        current_state <= IDLE;
    else
        current_state <= next_state;
end

// 状态机：组合逻辑
always @(*) begin
    next_state = current_state;
    
    case (current_state)
        IDLE: begin
            if (s_axis_data_tvalid && fft_256_ready_out)
                next_state = ROW_FFT;
        end

        ROW_FFT: begin
            if (row_fft_done)
                next_state = ROW_WAIT;
        end

        ROW_WAIT: begin
            if (wait_cycles >= 4'd6)  // 增加等待周期，确保所有数据写入RAM
                next_state = COL_FFT;
        end

        COL_FFT: begin
            if (col_fft_done &&wait_cycles>=4'd6 )  // 增加结束前的等待周期
                next_state = DONE;
        end

        DONE: begin
            next_state = IDLE;
        end
        
        default: next_state = IDLE;
    endcase
end

// 行FFT完成标志控制
always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
        row_fft_done <= 1'b0;
    end else begin
        if (current_state == ROW_FFT && fft_256_valid_out && 
            row_count == (COL_SIZE-1) && data_count == (ROW_SIZE-1)) begin
            row_fft_done <= 1'b1;
        end else if (current_state != ROW_FFT) begin
            row_fft_done <= 1'b0;
        end
    end
end

// 列FFT完成标志控制
always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
        col_fft_done <= 1'b0;
    end else begin
        if (current_state == COL_FFT && 
            col_count == (ROW_SIZE-1) && data_count == (COL_SIZE-1)) begin
            col_fft_done <= 1'b1;
        end else if (current_state != COL_FFT) begin
            col_fft_done <= 1'b0;
        end
    end
end

// 行列计数 & 等待计数
always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
        row_count   <= 0;
        col_count   <= 0;
        data_count  <= 0;
        wait_cycles <= 0;
      //  output_valid <= 0;
    end else begin
        case (current_state)
            IDLE: begin
                row_count   <= 0;
                col_count   <= 0;
                data_count  <= 0;
                wait_cycles <= 0;
             //   output_valid <= 0;
            end
            
            ROW_FFT: begin
                wait_cycles <= 0;
                
                if (fft_256_valid_out && ram_we) begin
                    if (data_count == (ROW_SIZE-1)) begin
                        data_count <= 0;
                        if (row_count == (COL_SIZE-1))
                            row_count <= 0;
                        else
                            row_count <= row_count + 1;
                    end else begin
                        data_count <= data_count + 1;
                    end
                end
            end

            ROW_WAIT: begin
                wait_cycles <= wait_cycles + 1;
                if (wait_cycles >= 4'd6) begin  // 在切换到下一状态前完全重置
                    data_count <= 0;
                    col_count <= 0;
                end
            end

            COL_FFT: begin
                if (col_fft_done) begin
                    wait_cycles <= wait_cycles + 1;
                  //  output_valid <= 1;  // 当列FFT全部完成后设置输出有效标志
                end
                else if (fft_16_ready_out && ram_data_valid) begin
                    if (data_count == (COL_SIZE-1)) begin
                        data_count <= 0;
                        if (col_count == (ROW_SIZE-1)) begin
                            col_count <= 0;
                        end else begin
                            col_count <= col_count + 1;
                        end
                    end else begin
                        data_count <= data_count + 1;
                    end
                end
            end

            DONE: begin
              //  output_valid <= 0;
                wait_cycles <= 0;
            end
            
            default: begin
                row_count   <= 0;
                col_count   <= 0;
                data_count  <= 0;
                wait_cycles <= 0;
              //  output_valid <= 0;
            end
        endcase
    end
end

// BRAM 写控制逻辑
always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
        ram_we         <= 1'b0;
        ram_data_in    <= 32'd0;
        ram_addr_write <= 13'd0;
    end
    else begin
        if (current_state == ROW_FFT && fft_256_valid_out && !ram_we) begin
            ram_we         <= 1'b1;
            ram_data_in    <= fft_256_data_out;
            ram_addr_write <= row_count * ROW_SIZE + data_count;
        end else begin
            ram_we <= 1'b0;
        end
    end
end

// BRAM 读控制逻辑 - 优化列FFT的数据访问
always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
        ram_addr_read <= 13'd0;
    end else begin
        if (current_state == COL_FFT) begin
            if (fft_16_ready_out && !col_fft_done) begin
                // 转置访问 - 直接按列读取RAM
                ram_addr_read <= data_count * ROW_SIZE + col_count;
            end
        end else begin
            ram_addr_read <= 13'd0;
        end
    end
end

// RAM数据有效控制信号 - 优化控制逻辑
reg        ram_read_active;
reg [1:0]  ram_read_delay;

always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
        ram_read_active <= 1'b0;
        ram_read_delay  <= 2'd0;
        ram_data_valid  <= 1'b0;
    end else begin
        if (current_state == COL_FFT && !col_fft_done) begin
            // 激活读取逻辑
            ram_read_active <= 1'b1;
            
            // 处理RAM读取延迟
            if (ram_read_active) begin
                if (ram_read_delay < 2'd2) begin  // 增加额外的延迟周期以确保稳定
                    ram_read_delay <= ram_read_delay + 1'b1;
                    ram_data_valid <= 1'b0;
                end else begin
                    ram_data_valid <= 1'b1;
                end
            end
            
            // 当数据被16点FFT接收时重置延迟计数器
            if (ram_data_valid && fft_16_ready_out) begin
                ram_read_delay <= 2'd0;
            end
        end else begin
            ram_read_active <= 1'b0;
            ram_read_delay  <= 2'd0;
            ram_data_valid  <= 1'b0;
        end
    end
end

// 256点FFT实例
FFT_Top_256 u_fft_256 (
    .aclk               (aclk),
    .aresetn            (aresetn),
    .s_axis_data_tdata  (s_axis_data_tdata),
    .s_axis_data_tvalid (s_axis_data_tvalid && current_state == ROW_FFT),
    .s_axis_data_tready (fft_256_ready_out),
    .s_axis_data_tlast  (data_count == ROW_SIZE-1),
    .m_axis_data_tdata  (fft_256_data_out),
    .m_axis_data_tvalid (fft_256_valid_out),
    .m_axis_data_tready (ram_we || (current_state != ROW_FFT)),  // 修改ready条件
    .m_axis_data_tlast  (fft_256_last_out)
);

// 16点FFT实例
FFT_Top_16 u_fft_16 (
    .aclk               (aclk),
    .aresetn            (aresetn),
    .s_axis_data_tdata  (ram_data_out),
    .s_axis_data_tvalid (ram_data_valid && current_state == COL_FFT),
    .s_axis_data_tready (fft_16_ready_out),
    .s_axis_data_tlast  (data_count == COL_SIZE-1),
    .m_axis_data_tdata  (fft_16_data_out),
    .m_axis_data_tvalid (fft_16_valid_out),
    .m_axis_data_tready (m_axis_data_tready || (current_state != COL_FFT)),  // 优化ready条件
    .m_axis_data_tlast  (fft_16_last_out)
);

// 双端口RAM实例
dual_port_ram u_ram (
    .clka  (aclk),
    .ena   (1'b1),
    .wea   (ram_we),
    .addra (ram_addr_write),
    .dina  (ram_data_in),
    .clkb  (aclk),
    .enb   (current_state == COL_FFT),  // 只在列FFT阶段使能RAM读取
    .addrb (ram_addr_read),
    .doutb (ram_data_out)
);

// ILA实例1 - 控制信号监控
ila_0 control_ins (
    .clk(aclk),
    .probe0(current_state),
    .probe1(next_state),
    .probe2(row_count),
    .probe3(col_count),
    .probe4(data_count),
    .probe5(col_fft_done),
    .probe6(s_axis_data_tvalid),
    .probe7(s_axis_data_tready),
    .probe8(fft_256_valid_out),
    .probe9(fft_256_ready_out),
    .probe10(fft_16_valid_out),
    .probe11(m_axis_data_tlast)
);

// ILA实例2 - 数据路径监控
ila_1 datapath_ins (
    .clk(aclk),
    .probe0(ram_addr_write),
    .probe1(ram_addr_read),
    .probe2(ram_data_in),
    .probe3(ram_data_out),
    .probe4(s_axis_data_tdata),
    .probe5(fft_256_data_out),
    .probe6(fft_16_data_out),
    .probe7(m_axis_data_tdata),
    .probe8(fft_16_valid_out)
);

// 输出信号赋值 - 修改输出有效条件
assign m_axis_data_tvalid = (current_state == COL_FFT) && fft_16_valid_out;
assign m_axis_data_tlast  = (current_state == COL_FFT)  &&  col_fft_done;
assign m_axis_data_tdata  = fft_16_data_out;
assign s_axis_data_tready = (current_state == ROW_FFT) && fft_256_ready_out;

endmodule