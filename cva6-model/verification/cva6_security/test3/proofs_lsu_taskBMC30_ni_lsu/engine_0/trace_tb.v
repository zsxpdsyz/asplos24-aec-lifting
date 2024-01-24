`ifndef VERILATOR
module testbench;
  reg [4095:0] vcdfile;
  reg clock;
`else
module testbench(input clock, output reg genclock);
  initial genclock = 1;
`endif
  reg genclock = 1;
  reg [31:0] cycle = 0;
  wire [0:0] PI_clk = clock;
  cva6_lsu_formal UUT (
    .clk(PI_clk)
  );
`ifndef VERILATOR
  initial begin
    if ($value$plusargs("vcd=%s", vcdfile)) begin
      $dumpfile(vcdfile);
      $dumpvars(0, testbench);
    end
    #5 clock = 0;
    while (genclock) begin
      #5 clock = 0;
      #5 clock = 1;
    end
  end
`endif
  initial begin
`ifndef VERILATOR
    #1;
`endif
    // UUT.$formal$cva6_lsu_formal.\v:169$11_EN  = 1'b0;
    // UUT.$formal$cva6_lsu_formal.\v:206$13_CHECK  = 1'b0;
    UUT.counter = 3'b000;
    UUT.init = 1'b1;
    UUT.local_ready_1 = 1'b0;
    UUT.local_ready_2 = 1'b0;
    UUT.pc_1 = 32'b00000000000000000000000000000000;
    UUT.pc_2 = 32'b00000000000000000000000000000000;
    UUT.reset = 1'b1;
    UUT.shim_i_1.load_cooldown = 3'b000;
    UUT.shim_i_1.loadstore_addr = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.loadstore_fsm = 3'b000;
    UUT.shim_i_1.loadstore_state = 1'b0;
    UUT.shim_i_1.lsu_shim_i.load_req_state = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.$auto$async2sync.\cc:140:execute$12229  = 32'b00000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12219  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12221  = 1'b0;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12223  = 1'b0;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12225  = 4'b0000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12227  = 13'b0000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_pipe_reg_load.$auto$async2sync.\cc:140:execute$12239  = 101'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_pipe_reg_store.$auto$async2sync.\cc:140:execute$12239  = 101'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12257  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12259  = 32'b00000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12261  = 4'b0000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12263  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12265  = 4'b0000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12267  = 3'b000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12241  = 292'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12243  = 3'b000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12245  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12247  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12249  = 292'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12251  = 3'b000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12253  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12255  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12231  = 170'b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12233  = 1'b1;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12235  = 1'b0;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12237  = 2'b10;
    UUT.shim_i_1.lsu_shim_i.store_req_state = 2'b00;
    UUT.shim_i_1.lsu_shim_i.tb_io_commit_tran_id_i = 3'b000;
    UUT.shim_i_1.lsu_shim_i.tb_io_dcache_req_ports_i = 105'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    UUT.shim_i_1.lsu_shim_i.tb_io_fu_data_i = 111'b001100100111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000001011;
    UUT.shim_i_1.lsu_shim_i.tb_io_lsu_valid_i = 1'b0;
    UUT.shim_i_1.lsu_shim_i.x_load_mem_resp_i = 1'b0;
    UUT.shim_i_1.\mem[0]  = 32'b10000110001111011001111110111000;
    UUT.shim_i_1.\mem[10]  = 32'b10001100110101000000010000101110;
    UUT.shim_i_1.\mem[11]  = 32'b10000010001101110001100010011000;
    UUT.shim_i_1.\mem[12]  = 32'b00010100010110000100000000011101;
    UUT.shim_i_1.\mem[13]  = 32'b10110010111110111111010000000100;
    UUT.shim_i_1.\mem[14]  = 32'b00111011111010111111000110010111;
    UUT.shim_i_1.\mem[15]  = 32'b01110001111111000000000000111110;
    UUT.shim_i_1.\mem[16]  = 32'b00011101101111111111011100111011;
    UUT.shim_i_1.\mem[17]  = 32'b00111101111101101111110010000000;
    UUT.shim_i_1.\mem[18]  = 32'b00011101101111101011011101101011;
    UUT.shim_i_1.\mem[19]  = 32'b00101001101101111101010100111111;
    UUT.shim_i_1.\mem[1]  = 32'b00010101110100011011100000000100;
    UUT.shim_i_1.\mem[20]  = 32'b00011101111011111111110000100101;
    UUT.shim_i_1.\mem[21]  = 32'b00011101111010111111110101000000;
    UUT.shim_i_1.\mem[22]  = 32'b11010111110010010001011100100111;
    UUT.shim_i_1.\mem[23]  = 32'b01001111100010110000111011011111;
    UUT.shim_i_1.\mem[24]  = 32'b11001000100100110000110011111000;
    UUT.shim_i_1.\mem[25]  = 32'b00001001101111111110000010110101;
    UUT.shim_i_1.\mem[26]  = 32'b00001000111110010101110010010111;
    UUT.shim_i_1.\mem[27]  = 32'b00100100101100110101110000000000;
    UUT.shim_i_1.\mem[28]  = 32'b11111010101100111111010000000100;
    UUT.shim_i_1.\mem[29]  = 32'b01011101000010111111011000111101;
    UUT.shim_i_1.\mem[2]  = 32'b10001100110100011000000000001110;
    UUT.shim_i_1.\mem[30]  = 32'b01001000111110110101110011111011;
    UUT.shim_i_1.\mem[31]  = 32'b00001000111011110101110010101111;
    UUT.shim_i_1.\mem[3]  = 32'b00010101010100000100000000001101;
    UUT.shim_i_1.\mem[4]  = 32'b10010100001110100000000001110110;
    UUT.shim_i_1.\mem[5]  = 32'b10010100001110100001011101010001;
    UUT.shim_i_1.\mem[6]  = 32'b10000100001100110001111101010100;
    UUT.shim_i_1.\mem[7]  = 32'b10001100001101100001001101010111;
    UUT.shim_i_1.\mem[8]  = 32'b00101110011010111100110000010101;
    UUT.shim_i_1.\mem[9]  = 32'b00101000101101000000000000110101;
    UUT.shim_i_1.ready_o = 1'b0;
    UUT.shim_i_1.\regfile[0]  = 32'b11111001111101101111111010100100;
    UUT.shim_i_1.\regfile[10]  = 32'b11111011001010000000000000001100;
    UUT.shim_i_1.\regfile[11]  = 32'b11111011001001111111111101110010;
    UUT.shim_i_1.\regfile[12]  = 32'b00010101110100011011111000110000;
    UUT.shim_i_1.\regfile[13]  = 32'b01101001111010110111000111011101;
    UUT.shim_i_1.\regfile[14]  = 32'b11111011001001111111011100100101;
    UUT.shim_i_1.\regfile[15]  = 32'b11111011001001111111011101011101;
    UUT.shim_i_1.\regfile[16]  = 32'b00010111000001000000100000100100;
    UUT.shim_i_1.\regfile[17]  = 32'b11111011001010000000001111101110;
    UUT.shim_i_1.\regfile[18]  = 32'b11111011001010000000001011001010;
    UUT.shim_i_1.\regfile[19]  = 32'b01101001111010110111110110000100;
    UUT.shim_i_1.\regfile[1]  = 32'b10010101110101001111110010000100;
    UUT.shim_i_1.\regfile[20]  = 32'b10011100111100011111110000010000;
    UUT.shim_i_1.\regfile[21]  = 32'b00010101010100000011111100101011;
    UUT.shim_i_1.\regfile[22]  = 32'b01101001111010110111110000011100;
    UUT.shim_i_1.\regfile[23]  = 32'b00110101111101011110111011001100;
    UUT.shim_i_1.\regfile[24]  = 32'b00010101010110100000011110101100;
    UUT.shim_i_1.\regfile[25]  = 32'b00010101110100011011110111001000;
    UUT.shim_i_1.\regfile[26]  = 32'b11111011001001111111110100000100;
    UUT.shim_i_1.\regfile[27]  = 32'b00100111010100000000011010000111;
    UUT.shim_i_1.\regfile[28]  = 32'b00010101110100011011011100011000;
    UUT.shim_i_1.\regfile[29]  = 32'b00010101110100011011101100101000;
    UUT.shim_i_1.\regfile[2]  = 32'b10010100111100010000110110000111;
    UUT.shim_i_1.\regfile[30]  = 32'b11111011001001111111110100000110;
    UUT.shim_i_1.\regfile[31]  = 32'b00010101110100011010111011001100;
    UUT.shim_i_1.\regfile[3]  = 32'b10010101010101010000001011000010;
    UUT.shim_i_1.\regfile[4]  = 32'b11111011001001111111111011111100;
    UUT.shim_i_1.\regfile[5]  = 32'b11111011001001111111100010101011;
    UUT.shim_i_1.\regfile[6]  = 32'b11000000000000000000110110100000;
    UUT.shim_i_1.\regfile[7]  = 32'b11111011001001111111011111000011;
    UUT.shim_i_1.\regfile[8]  = 32'b00010101110100011011000001110010;
    UUT.shim_i_1.\regfile[9]  = 32'b10010100001110101111110100001001;
    UUT.shim_i_1.store_cooldown = 1'b0;
    UUT.shim_i_1.store_count = 3'b000;
    UUT.shim_i_1.store_uncommitted = 1'b0;
    UUT.shim_i_1.tb_io_instr_i = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.tb_io_instr_valid_i = 1'b0;
    UUT.shim_i_1.tb_io_is_load_i = 1'b0;
    UUT.shim_i_1.tb_io_load_mem_resp_i = 1'b0;
    UUT.shim_i_1.tb_io_store_commit_i = 1'b0;
    UUT.shim_i_1.tb_io_store_mem_resp_i = 1'b0;
    UUT.shim_i_2.load_cooldown = 3'b000;
    UUT.shim_i_2.loadstore_addr = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.loadstore_fsm = 3'b000;
    UUT.shim_i_2.loadstore_state = 1'b0;
    UUT.shim_i_2.lsu_shim_i.load_req_state = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.$auto$async2sync.\cc:140:execute$12229  = 32'b00000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12219  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12221  = 1'b0;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12223  = 1'b0;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12225  = 4'b0000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12227  = 13'b0000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_pipe_reg_load.$auto$async2sync.\cc:140:execute$12239  = 101'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_pipe_reg_store.$auto$async2sync.\cc:140:execute$12239  = 101'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12257  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12259  = 32'b00000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12261  = 4'b0000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12263  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12265  = 4'b0000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12267  = 3'b000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12241  = 292'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12243  = 3'b000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12245  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12247  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12249  = 292'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12251  = 3'b000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12253  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12255  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12231  = 170'b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12233  = 1'b1;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12235  = 1'b0;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12237  = 2'b10;
    UUT.shim_i_2.lsu_shim_i.store_req_state = 2'b00;
    UUT.shim_i_2.lsu_shim_i.tb_io_commit_tran_id_i = 3'b000;
    UUT.shim_i_2.lsu_shim_i.tb_io_dcache_req_ports_i = 105'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    UUT.shim_i_2.lsu_shim_i.tb_io_fu_data_i = 111'b001100100111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000001011;
    UUT.shim_i_2.lsu_shim_i.tb_io_lsu_valid_i = 1'b0;
    UUT.shim_i_2.lsu_shim_i.x_load_mem_resp_i = 1'b0;
    UUT.shim_i_2.\mem[0]  = 32'b10101110011101101110010110100000;
    UUT.shim_i_2.\mem[10]  = 32'b00010010011101011001100101110111;
    UUT.shim_i_2.\mem[11]  = 32'b10110110000010001101100101000100;
    UUT.shim_i_2.\mem[12]  = 32'b00010111111111111111111110110110;
    UUT.shim_i_2.\mem[13]  = 32'b00011101010110111101011111101100;
    UUT.shim_i_2.\mem[14]  = 32'b00110011111111111111011010111110;
    UUT.shim_i_2.\mem[15]  = 32'b00001100110110111111011110110110;
    UUT.shim_i_2.\mem[16]  = 32'b10101110010011111111111110111110;
    UUT.shim_i_2.\mem[17]  = 32'b00011010010011111111111111111110;
    UUT.shim_i_2.\mem[18]  = 32'b10011110010011111111111010011011;
    UUT.shim_i_2.\mem[19]  = 32'b00110010010011111111111011111100;
    UUT.shim_i_2.\mem[1]  = 32'b10011100010010111000100110100101;
    UUT.shim_i_2.\mem[20]  = 32'b00111010000011111111111111111110;
    UUT.shim_i_2.\mem[21]  = 32'b10110110000011111111111010111111;
    UUT.shim_i_2.\mem[22]  = 32'b10110110000010111111111111111110;
    UUT.shim_i_2.\mem[23]  = 32'b10000110000011111111111011111110;
    UUT.shim_i_2.\mem[24]  = 32'b00100001010110101111111111110000;
    UUT.shim_i_2.\mem[25]  = 32'b00100101010110101111111111110000;
    UUT.shim_i_2.\mem[26]  = 32'b00010000010110111111110111010000;
    UUT.shim_i_2.\mem[27]  = 32'b00101001010110101111111111110000;
    UUT.shim_i_2.\mem[28]  = 32'b11110000110100111111011110101010;
    UUT.shim_i_2.\mem[29]  = 32'b10000000010110011111110101110000;
    UUT.shim_i_2.\mem[2]  = 32'b00111010010111111000001101010100;
    UUT.shim_i_2.\mem[30]  = 32'b00101001010110101111111111110000;
    UUT.shim_i_2.\mem[31]  = 32'b00100001010110101111111111110000;
    UUT.shim_i_2.\mem[3]  = 32'b00111010010111111000001101010101;
    UUT.shim_i_2.\mem[4]  = 32'b00101110011011101111111100010100;
    UUT.shim_i_2.\mem[5]  = 32'b11111000000010011000100110001001;
    UUT.shim_i_2.\mem[6]  = 32'b01101000001111111010101110101110;
    UUT.shim_i_2.\mem[7]  = 32'b10000000011011010110010000011011;
    UUT.shim_i_2.\mem[8]  = 32'b10010010010010001001111010011011;
    UUT.shim_i_2.\mem[9]  = 32'b00111111111001001111111110101100;
    UUT.shim_i_2.ready_o = 1'b0;
    UUT.shim_i_2.\regfile[0]  = 32'b01101010010000001110011000001010;
    UUT.shim_i_2.\regfile[10]  = 32'b00110110111100110111011100011111;
    UUT.shim_i_2.\regfile[11]  = 32'b00110110111100110111011010000101;
    UUT.shim_i_2.\regfile[12]  = 32'b01101000001111111011000111011010;
    UUT.shim_i_2.\regfile[13]  = 32'b10111001010000111111010110000111;
    UUT.shim_i_2.\regfile[14]  = 32'b00110110111100110110111000111000;
    UUT.shim_i_2.\regfile[15]  = 32'b00110110111100110110111001110000;
    UUT.shim_i_2.\regfile[16]  = 32'b01100011110000000000010001101110;
    UUT.shim_i_2.\regfile[17]  = 32'b00110110111100110111101100000001;
    UUT.shim_i_2.\regfile[18]  = 32'b00110110111100110111100111011101;
    UUT.shim_i_2.\regfile[19]  = 32'b10111001010001000000000100101110;
    UUT.shim_i_2.\regfile[1]  = 32'b00111101010110110100110010111000;
    UUT.shim_i_2.\regfile[20]  = 32'b00100011100010000010001100010010;
    UUT.shim_i_2.\regfile[21]  = 32'b00110000010111110111101001000000;
    UUT.shim_i_2.\regfile[22]  = 32'b10111001010000111111111111000110;
    UUT.shim_i_2.\regfile[23]  = 32'b01101000001111111010001001110110;
    UUT.shim_i_2.\regfile[24]  = 32'b00111001010111000000000010110001;
    UUT.shim_i_2.\regfile[25]  = 32'b01101000001111111011000101110010;
    UUT.shim_i_2.\regfile[26]  = 32'b00110110111100110111010000010111;
    UUT.shim_i_2.\regfile[27]  = 32'b00110011101101001111010010011111;
    UUT.shim_i_2.\regfile[28]  = 32'b01101000001111111010101011000010;
    UUT.shim_i_2.\regfile[29]  = 32'b01101000001111111010111011010010;
    UUT.shim_i_2.\regfile[2]  = 32'b00110011101010111111011011101111;
    UUT.shim_i_2.\regfile[30]  = 32'b00110110111100110111010000011001;
    UUT.shim_i_2.\regfile[31]  = 32'b01101000001111111010001001110110;
    UUT.shim_i_2.\regfile[3]  = 32'b00111011110101100100011001101100;
    UUT.shim_i_2.\regfile[4]  = 32'b00110110111100110111011000001111;
    UUT.shim_i_2.\regfile[5]  = 32'b00110110111100110110111110111110;
    UUT.shim_i_2.\regfile[6]  = 32'b11110010010100100000010010110011;
    UUT.shim_i_2.\regfile[7]  = 32'b00110110111100110110111011010110;
    UUT.shim_i_2.\regfile[8]  = 32'b01101000001111111010010000011100;
    UUT.shim_i_2.\regfile[9]  = 32'b10101010010111111111011111100000;
    UUT.shim_i_2.store_cooldown = 1'b0;
    UUT.shim_i_2.store_count = 3'b000;
    UUT.shim_i_2.store_uncommitted = 1'b0;
    UUT.shim_i_2.tb_io_instr_i = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.tb_io_instr_valid_i = 1'b0;
    UUT.shim_i_2.tb_io_is_load_i = 1'b0;
    UUT.shim_i_2.tb_io_load_mem_resp_i = 1'b0;
    UUT.shim_i_2.tb_io_store_commit_i = 1'b0;
    UUT.shim_i_2.tb_io_store_mem_resp_i = 1'b0;
    UUT.tb_io_instr_i_1 = 32'b11001111100010111111101000000011;
    UUT.tb_io_instr_i_2 = 32'b00000001010000110000010100000011;
    UUT.tb_io_instr_valid_i_1 = 1'b1;
    UUT.tb_io_instr_valid_i_2 = 1'b0;
    UUT.instr2 = 32'b10010001101110011010000000000011;
    UUT.instr1 = 32'b10001100000011001010110000100011;
    UUT.instr0 = 32'b01011100001000111010010100000011;
    UUT.instr3 = 32'b00000000000000000000000000010011;

    // state 0
    UUT.tb_io_store_mem_resp_i_2 = 1'b0;
    UUT.tb_io_store_mem_resp_i_1 = 1'b0;
    UUT.tb_io_load_mem_resp_i_2 = 1'b0;
    UUT.tb_io_load_mem_resp_i_1 = 1'b0;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 2
    if (cycle == 1) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 3
    if (cycle == 2) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 4
    if (cycle == 3) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 5
    if (cycle == 4) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 6
    if (cycle == 5) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 7
    if (cycle == 6) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 8
    if (cycle == 7) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 9
    if (cycle == 8) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 10
    if (cycle == 9) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 11
    if (cycle == 10) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 12
    if (cycle == 11) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 13
    if (cycle == 12) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 14
    if (cycle == 13) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 15
    if (cycle == 14) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 16
    if (cycle == 15) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 17
    if (cycle == 16) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 18
    if (cycle == 17) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 19
    if (cycle == 18) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 20
    if (cycle == 19) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 21
    if (cycle == 20) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 22
    if (cycle == 21) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 23
    if (cycle == 22) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 24
    if (cycle == 23) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 25
    if (cycle == 24) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 26
    if (cycle == 25) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 27
    if (cycle == 26) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    genclock <= cycle < 27;
    cycle <= cycle + 1;
  end
endmodule
