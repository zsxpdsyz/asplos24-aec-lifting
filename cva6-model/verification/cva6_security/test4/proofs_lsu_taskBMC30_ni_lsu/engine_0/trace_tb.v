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
    // UUT.$formal$cva6_lsu_formal.\v:169$12_EN  = 1'b0;
    // UUT.$formal$cva6_lsu_formal.\v:206$14_CHECK  = 1'b0;
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
    // UUT.shim_i_1.lsu_shim_i.lsu_i.$auto$async2sync.\cc:140:execute$12244  = 32'b00000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12234  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12236  = 1'b0;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12238  = 1'b0;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12240  = 4'b0000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12242  = 13'b0000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_pipe_reg_load.$auto$async2sync.\cc:140:execute$12254  = 101'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_pipe_reg_store.$auto$async2sync.\cc:140:execute$12254  = 101'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12272  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12274  = 32'b00000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12276  = 4'b0000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12278  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12280  = 4'b0000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12282  = 3'b000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12256  = 292'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12258  = 3'b000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12260  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12262  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12264  = 292'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12266  = 3'b000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12268  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12270  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12246  = 170'b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12248  = 1'b1;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12250  = 1'b0;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12252  = 2'b10;
    UUT.shim_i_1.lsu_shim_i.store_req_state = 2'b00;
    UUT.shim_i_1.lsu_shim_i.tb_io_commit_tran_id_i = 3'b000;
    UUT.shim_i_1.lsu_shim_i.tb_io_dcache_req_ports_i = 105'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    UUT.shim_i_1.lsu_shim_i.tb_io_fu_data_i = 111'b001100100111011111111111111111111111111111011100101011111110110010101111111000000000000000000000000000000001011;
    UUT.shim_i_1.lsu_shim_i.tb_io_lsu_valid_i = 1'b0;
    UUT.shim_i_1.lsu_shim_i.x_load_mem_resp_i = 1'b0;
    UUT.shim_i_1.\mem[0]  = 32'b00011011011110010101111010110100;
    UUT.shim_i_1.\mem[10]  = 32'b10011011000110010101111100111110;
    UUT.shim_i_1.\mem[11]  = 32'b00011011111110010101110100111110;
    UUT.shim_i_1.\mem[12]  = 32'b00011011111110010101110110111100;
    UUT.shim_i_1.\mem[13]  = 32'b00011011000110010101111110110110;
    UUT.shim_i_1.\mem[14]  = 32'b00011011000110010101110100111100;
    UUT.shim_i_1.\mem[15]  = 32'b00011011111110010101110100111110;
    UUT.shim_i_1.\mem[16]  = 32'b00101011111100010101111010111110;
    UUT.shim_i_1.\mem[17]  = 32'b00011011111100000110011010111100;
    UUT.shim_i_1.\mem[18]  = 32'b10000001111101010011011100111110;
    UUT.shim_i_1.\mem[19]  = 32'b00000011111100000101101010110111;
    UUT.shim_i_1.\mem[1]  = 32'b11110101110100000110011100000000;
    UUT.shim_i_1.\mem[20]  = 32'b00000011111110010101111100111110;
    UUT.shim_i_1.\mem[21]  = 32'b00001011111100010101111110111100;
    UUT.shim_i_1.\mem[22]  = 32'b10011010111100010101111000111110;
    UUT.shim_i_1.\mem[23]  = 32'b10101000111010010101111100111110;
    UUT.shim_i_1.\mem[24]  = 32'b00011011111110010101101010111100;
    UUT.shim_i_1.\mem[25]  = 32'b00110100110100000110011110101110;
    UUT.shim_i_1.\mem[26]  = 32'b00110011001001010101110110110101;
    UUT.shim_i_1.\mem[27]  = 32'b10101011111110011001110000111100;
    UUT.shim_i_1.\mem[28]  = 32'b00011011111110010101111110111110;
    UUT.shim_i_1.\mem[29]  = 32'b00101001111110010101111010111100;
    UUT.shim_i_1.\mem[2]  = 32'b00011011011100001000111000111100;
    UUT.shim_i_1.\mem[30]  = 32'b00011011111110010101111100111110;
    UUT.shim_i_1.\mem[31]  = 32'b10111111111110010101111010111110;
    UUT.shim_i_1.\mem[3]  = 32'b01111011001110010101111010111100;
    UUT.shim_i_1.\mem[4]  = 32'b00001010111110010101111010111110;
    UUT.shim_i_1.\mem[5]  = 32'b00011011000110010101111100110100;
    UUT.shim_i_1.\mem[6]  = 32'b11111011110000100101111110110111;
    UUT.shim_i_1.\mem[7]  = 32'b11110001111101100100111011111110;
    UUT.shim_i_1.\mem[8]  = 32'b00101011000110001100111100111100;
    UUT.shim_i_1.\mem[9]  = 32'b10110100010000010101111010110010;
    UUT.shim_i_1.ready_o = 1'b0;
    UUT.shim_i_1.\regfile[0]  = 32'b11000011110111011010001101011101;
    UUT.shim_i_1.\regfile[10]  = 32'b10110101110100000101101110110111;
    UUT.shim_i_1.\regfile[11]  = 32'b10110101110100000110000001010111;
    UUT.shim_i_1.\regfile[12]  = 32'b11100000001000101101000001010110;
    UUT.shim_i_1.\regfile[13]  = 32'b11000000011111101001101000000010;
    UUT.shim_i_1.\regfile[14]  = 32'b10000010001000010111001001000001;
    UUT.shim_i_1.\regfile[15]  = 32'b11000011110111011001100010000010;
    UUT.shim_i_1.\regfile[16]  = 32'b11000011110111011001011011110010;
    UUT.shim_i_1.\regfile[17]  = 32'b10110101110100000101110111001001;
    UUT.shim_i_1.\regfile[18]  = 32'b11000000001000000011101001001001;
    UUT.shim_i_1.\regfile[19]  = 32'b11000011110111011001101001101100;
    UUT.shim_i_1.\regfile[1]  = 32'b11000011110111011001100000010100;
    UUT.shim_i_1.\regfile[20]  = 32'b11000011110111011010010100011111;
    UUT.shim_i_1.\regfile[21]  = 32'b10110101110100000110001011011001;
    UUT.shim_i_1.\regfile[22]  = 32'b10110101110100000110011001111110;
    UUT.shim_i_1.\regfile[23]  = 32'b10110011001000001000001000010001;
    UUT.shim_i_1.\regfile[24]  = 32'b10110101110100000110000000001110;
    UUT.shim_i_1.\regfile[25]  = 32'b11000011110111011001011111111110;
    UUT.shim_i_1.\regfile[26]  = 32'b10110101110100000101110000111110;
    UUT.shim_i_1.\regfile[27]  = 32'b11000011110111011001101001101101;
    UUT.shim_i_1.\regfile[28]  = 32'b11000011110111011001110000001010;
    UUT.shim_i_1.\regfile[29]  = 32'b11000011110111011001111010000111;
    UUT.shim_i_1.\regfile[2]  = 32'b10110101110100000101111100010000;
    UUT.shim_i_1.\regfile[30]  = 32'b11000011110111011010011001111000;
    UUT.shim_i_1.\regfile[31]  = 32'b10111111000000010000110110010011;
    UUT.shim_i_1.\regfile[3]  = 32'b11000011110111011010001011010000;
    UUT.shim_i_1.\regfile[4]  = 32'b11000000011111110010010110010110;
    UUT.shim_i_1.\regfile[5]  = 32'b11000000011111101010010000101101;
    UUT.shim_i_1.\regfile[6]  = 32'b11000011110111011010011100110100;
    UUT.shim_i_1.\regfile[7]  = 32'b11000011110111011010001100011111;
    UUT.shim_i_1.\regfile[8]  = 32'b11001000011111110000001101001001;
    UUT.shim_i_1.\regfile[9]  = 32'b10110110000000110101111001010000;
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
    // UUT.shim_i_2.lsu_shim_i.lsu_i.$auto$async2sync.\cc:140:execute$12244  = 32'b00000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12234  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12236  = 1'b0;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12238  = 1'b0;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12240  = 4'b0000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12242  = 13'b0000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_pipe_reg_load.$auto$async2sync.\cc:140:execute$12254  = 101'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_pipe_reg_store.$auto$async2sync.\cc:140:execute$12254  = 101'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12272  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12274  = 32'b00000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12276  = 4'b0000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12278  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12280  = 4'b0000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12282  = 3'b000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12256  = 292'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12258  = 3'b000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12260  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12262  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12264  = 292'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12266  = 3'b000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12268  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12270  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12246  = 170'b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12248  = 1'b1;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12250  = 1'b0;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12252  = 2'b10;
    UUT.shim_i_2.lsu_shim_i.store_req_state = 2'b00;
    UUT.shim_i_2.lsu_shim_i.tb_io_commit_tran_id_i = 3'b000;
    UUT.shim_i_2.lsu_shim_i.tb_io_dcache_req_ports_i = 105'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    UUT.shim_i_2.lsu_shim_i.tb_io_fu_data_i = 111'b001100100111011111111111111111111111111111011100101011111110110010101111111000000000000000000000000000000001011;
    UUT.shim_i_2.lsu_shim_i.tb_io_lsu_valid_i = 1'b0;
    UUT.shim_i_2.lsu_shim_i.x_load_mem_resp_i = 1'b0;
    UUT.shim_i_2.\mem[0]  = 32'b11001000011111100010001001010100;
    UUT.shim_i_2.\mem[10]  = 32'b11111111111111111101111100001100;
    UUT.shim_i_2.\mem[11]  = 32'b11111111111111110101111100100100;
    UUT.shim_i_2.\mem[12]  = 32'b11111111110000010010011101100101;
    UUT.shim_i_2.\mem[13]  = 32'b11111111111111011111111100000100;
    UUT.shim_i_2.\mem[14]  = 32'b11111111110101100000111100000100;
    UUT.shim_i_2.\mem[15]  = 32'b11101111111111010111111100000000;
    UUT.shim_i_2.\mem[16]  = 32'b00101011111100010111111100000010;
    UUT.shim_i_2.\mem[17]  = 32'b11111111111000001001111100000100;
    UUT.shim_i_2.\mem[18]  = 32'b10100000101111110101111100001010;
    UUT.shim_i_2.\mem[19]  = 32'b01111111111010110110110100101101;
    UUT.shim_i_2.\mem[1]  = 32'b11110101110100000110011101011100;
    UUT.shim_i_2.\mem[20]  = 32'b11111111111111011100111101001010;
    UUT.shim_i_2.\mem[21]  = 32'b10111111111111111011111100000000;
    UUT.shim_i_2.\mem[22]  = 32'b11101111111110100001011101000111;
    UUT.shim_i_2.\mem[23]  = 32'b10101000001110100111111101001100;
    UUT.shim_i_2.\mem[24]  = 32'b11111111111110111110111100100000;
    UUT.shim_i_2.\mem[25]  = 32'b11111111111111111110111100101101;
    UUT.shim_i_2.\mem[26]  = 32'b11111011111111001100111101001110;
    UUT.shim_i_2.\mem[27]  = 32'b11111111111010001100111100100000;
    UUT.shim_i_2.\mem[28]  = 32'b11111111111110000110111100000000;
    UUT.shim_i_2.\mem[29]  = 32'b11111111111000000110111100100010;
    UUT.shim_i_2.\mem[2]  = 32'b10011011111100011000111100000010;
    UUT.shim_i_2.\mem[30]  = 32'b10111110000011010000111100000110;
    UUT.shim_i_2.\mem[31]  = 32'b00111110000000010110111100100100;
    UUT.shim_i_2.\mem[3]  = 32'b11111011110011110001111100000100;
    UUT.shim_i_2.\mem[4]  = 32'b00000010111110010100111101000000;
    UUT.shim_i_2.\mem[5]  = 32'b11111111110000000110011100000000;
    UUT.shim_i_2.\mem[6]  = 32'b11111111111100000010011100000010;
    UUT.shim_i_2.\mem[7]  = 32'b11010101110110000111011100010101;
    UUT.shim_i_2.\mem[8]  = 32'b11011111111100111000110100000100;
    UUT.shim_i_2.\mem[9]  = 32'b11111010010000011000110100101100;
    UUT.shim_i_2.ready_o = 1'b0;
    UUT.shim_i_2.\regfile[0]  = 32'b11000011110111011010001101011101;
    UUT.shim_i_2.\regfile[10]  = 32'b10110101110100000101101110110111;
    UUT.shim_i_2.\regfile[11]  = 32'b10110101110100000110000001010111;
    UUT.shim_i_2.\regfile[12]  = 32'b11100000001000101101000001010110;
    UUT.shim_i_2.\regfile[13]  = 32'b11000000011111101001101000000010;
    UUT.shim_i_2.\regfile[14]  = 32'b10000010001000010111001001000001;
    UUT.shim_i_2.\regfile[15]  = 32'b11000011110111011001100010000010;
    UUT.shim_i_2.\regfile[16]  = 32'b11000011110111011001011011110010;
    UUT.shim_i_2.\regfile[17]  = 32'b10110101110100000101110111001001;
    UUT.shim_i_2.\regfile[18]  = 32'b11000000001000000011101001001001;
    UUT.shim_i_2.\regfile[19]  = 32'b11000011110111011001101001101100;
    UUT.shim_i_2.\regfile[1]  = 32'b11000011110111011001100000010100;
    UUT.shim_i_2.\regfile[20]  = 32'b11000011110111011010010100011111;
    UUT.shim_i_2.\regfile[21]  = 32'b10110101110100000110001011011001;
    UUT.shim_i_2.\regfile[22]  = 32'b10110101110100000110011001111110;
    UUT.shim_i_2.\regfile[23]  = 32'b10110011001000001000001000010001;
    UUT.shim_i_2.\regfile[24]  = 32'b10110101110100000110000000001110;
    UUT.shim_i_2.\regfile[25]  = 32'b11000011110111011001011111111110;
    UUT.shim_i_2.\regfile[26]  = 32'b10110101110100000101110000111110;
    UUT.shim_i_2.\regfile[27]  = 32'b11000011110111011001101001101101;
    UUT.shim_i_2.\regfile[28]  = 32'b11000011110111011001110000001010;
    UUT.shim_i_2.\regfile[29]  = 32'b11000011110111011001111010000111;
    UUT.shim_i_2.\regfile[2]  = 32'b10110101110100000101111100010000;
    UUT.shim_i_2.\regfile[30]  = 32'b11000011110111011010011001111000;
    UUT.shim_i_2.\regfile[31]  = 32'b10111111000000010000110110010011;
    UUT.shim_i_2.\regfile[3]  = 32'b11000011110111011010001011010000;
    UUT.shim_i_2.\regfile[4]  = 32'b11000000011111110010010110010110;
    UUT.shim_i_2.\regfile[5]  = 32'b11000000011111101010010000101101;
    UUT.shim_i_2.\regfile[6]  = 32'b11000011110111011010011100110100;
    UUT.shim_i_2.\regfile[7]  = 32'b11000011110111011010001100011111;
    UUT.shim_i_2.\regfile[8]  = 32'b11001000011111110000001101001001;
    UUT.shim_i_2.\regfile[9]  = 32'b10110110000000110101111001010000;
    UUT.shim_i_2.store_cooldown = 1'b0;
    UUT.shim_i_2.store_count = 3'b000;
    UUT.shim_i_2.store_uncommitted = 1'b0;
    UUT.shim_i_2.tb_io_instr_i = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.tb_io_instr_valid_i = 1'b0;
    UUT.shim_i_2.tb_io_is_load_i = 1'b0;
    UUT.shim_i_2.tb_io_load_mem_resp_i = 1'b0;
    UUT.shim_i_2.tb_io_store_commit_i = 1'b0;
    UUT.shim_i_2.tb_io_store_mem_resp_i = 1'b0;
    UUT.tb_io_instr_i_1 = 32'b01000000000100011001101110100010;
    UUT.tb_io_instr_i_2 = 32'b11000001110100000111000010000011;
    UUT.tb_io_instr_valid_i_1 = 1'b0;
    UUT.tb_io_instr_valid_i_2 = 1'b0;
    UUT.instr2 = 32'b10101011101111001010000000000011;
    UUT.instr1 = 32'b01011000000011010010100100100011;
    UUT.instr0 = 32'b01111000101000001010110010000011;
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
