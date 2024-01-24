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
    // UUT.$formal$cva6_lsu_formal.\v:172$13_EN  = 1'b0;
    // UUT.$formal$cva6_lsu_formal.\v:209$15_CHECK  = 1'b0;
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
    // UUT.shim_i_1.lsu_shim_i.lsu_i.$auto$async2sync.\cc:140:execute$12259  = 32'b00000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12249  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12251  = 1'b0;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12253  = 1'b0;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12255  = 4'b0000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12257  = 13'b0000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_pipe_reg_load.$auto$async2sync.\cc:140:execute$12269  = 101'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_pipe_reg_store.$auto$async2sync.\cc:140:execute$12269  = 101'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12287  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12289  = 32'b00000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12291  = 4'b0000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12293  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12295  = 4'b0000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12297  = 3'b000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12271  = 292'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12273  = 3'b000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12275  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12277  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12279  = 292'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12281  = 3'b000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12283  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12285  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12261  = 170'b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12263  = 1'b1;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12265  = 1'b0;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12267  = 2'b10;
    UUT.shim_i_1.lsu_shim_i.store_req_state = 2'b00;
    UUT.shim_i_1.lsu_shim_i.tb_io_commit_tran_id_i = 3'b000;
    UUT.shim_i_1.lsu_shim_i.tb_io_dcache_req_ports_i = 105'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    UUT.shim_i_1.lsu_shim_i.tb_io_fu_data_i = 111'b001100100111000000000000000000000000000000011100101011111110110010101111111001111111111111111111111111111110011;
    UUT.shim_i_1.lsu_shim_i.tb_io_lsu_valid_i = 1'b0;
    UUT.shim_i_1.lsu_shim_i.x_load_mem_resp_i = 1'b0;
    UUT.shim_i_1.\mem[0]  = 32'b10010111111111111110011011000100;
    UUT.shim_i_1.\mem[10]  = 32'b11111111111111111110011011000110;
    UUT.shim_i_1.\mem[11]  = 32'b11111111111111111110011011000110;
    UUT.shim_i_1.\mem[12]  = 32'b11111111111111111110011011000100;
    UUT.shim_i_1.\mem[13]  = 32'b11111111111111111110011011000100;
    UUT.shim_i_1.\mem[14]  = 32'b11111111111111111111111011000110;
    UUT.shim_i_1.\mem[15]  = 32'b11111111111111111111111011000110;
    UUT.shim_i_1.\mem[16]  = 32'b10011111111111111110011011000100;
    UUT.shim_i_1.\mem[17]  = 32'b11111111111111111110011011000100;
    UUT.shim_i_1.\mem[18]  = 32'b10010111111111111110011011000100;
    UUT.shim_i_1.\mem[19]  = 32'b01110000000000000000000001010000;
    UUT.shim_i_1.\mem[1]  = 32'b10010111111111111110011011000100;
    UUT.shim_i_1.\mem[20]  = 32'b10111111111111111110011011000100;
    UUT.shim_i_1.\mem[21]  = 32'b00010110101111111110011011000100;
    UUT.shim_i_1.\mem[22]  = 32'b11111111111111111110111011000100;
    UUT.shim_i_1.\mem[23]  = 32'b11111111111111111111111011000100;
    UUT.shim_i_1.\mem[24]  = 32'b11111111111111111111011011000100;
    UUT.shim_i_1.\mem[25]  = 32'b11111110111111111110011011000100;
    UUT.shim_i_1.\mem[26]  = 32'b11111111111111111110011011000100;
    UUT.shim_i_1.\mem[27]  = 32'b11111111111111111110011011000100;
    UUT.shim_i_1.\mem[28]  = 32'b11111111111111111111111011000100;
    UUT.shim_i_1.\mem[29]  = 32'b00000000111100000000011011000100;
    UUT.shim_i_1.\mem[2]  = 32'b10010111111111111110011011000100;
    UUT.shim_i_1.\mem[30]  = 32'b11111111111111111111111011000100;
    UUT.shim_i_1.\mem[31]  = 32'b11111111111111111110011011000100;
    UUT.shim_i_1.\mem[3]  = 32'b10010110101111111110011011000100;
    UUT.shim_i_1.\mem[4]  = 32'b11111111111111111111111011000100;
    UUT.shim_i_1.\mem[5]  = 32'b11111111111111111111111011000100;
    UUT.shim_i_1.\mem[6]  = 32'b10011111111111111111111011000100;
    UUT.shim_i_1.\mem[7]  = 32'b11111111111111111111111011000100;
    UUT.shim_i_1.\mem[8]  = 32'b11111111111111111110011011000100;
    UUT.shim_i_1.\mem[9]  = 32'b11111111111111111111111011000100;
    UUT.shim_i_1.ready_o = 1'b0;
    UUT.shim_i_1.\regfile[0]  = 32'b01010111101111100000001001010001;
    UUT.shim_i_1.\regfile[10]  = 32'b01010111101111100000001000000011;
    UUT.shim_i_1.\regfile[11]  = 32'b01010111101111011111111111000011;
    UUT.shim_i_1.\regfile[12]  = 32'b01110101000001011111110101101111;
    UUT.shim_i_1.\regfile[13]  = 32'b01010111101111011111011100000011;
    UUT.shim_i_1.\regfile[14]  = 32'b01010111101111100000000010100000;
    UUT.shim_i_1.\regfile[15]  = 32'b01010111101111100000000001110001;
    UUT.shim_i_1.\regfile[16]  = 32'b00010110001010000001110111010110;
    UUT.shim_i_1.\regfile[17]  = 32'b01110010000000000000100101011000;
    UUT.shim_i_1.\regfile[18]  = 32'b00010110000000000000001111010010;
    UUT.shim_i_1.\regfile[19]  = 32'b01010111101111100000000001000101;
    UUT.shim_i_1.\regfile[1]  = 32'b01010111101111011111010101001011;
    UUT.shim_i_1.\regfile[20]  = 32'b01110000100000001010100101000011;
    UUT.shim_i_1.\regfile[21]  = 32'b01010111101111011111100000000011;
    UUT.shim_i_1.\regfile[22]  = 32'b01010111101111011111111000111001;
    UUT.shim_i_1.\regfile[23]  = 32'b11110000001000010001001111000111;
    UUT.shim_i_1.\regfile[24]  = 32'b11110010000000000101101100001011;
    UUT.shim_i_1.\regfile[25]  = 32'b01100100111011110001000010011000;
    UUT.shim_i_1.\regfile[26]  = 32'b01010111101111011111111000011101;
    UUT.shim_i_1.\regfile[27]  = 32'b01010111101111011111011000001101;
    UUT.shim_i_1.\regfile[28]  = 32'b01110000000000000000000100011110;
    UUT.shim_i_1.\regfile[29]  = 32'b01110000001000011000001010101010;
    UUT.shim_i_1.\regfile[2]  = 32'b01100100111011110111111010011101;
    UUT.shim_i_1.\regfile[30]  = 32'b01010111101111011111101000100000;
    UUT.shim_i_1.\regfile[31]  = 32'b01010111101111100000000101001001;
    UUT.shim_i_1.\regfile[3]  = 32'b01010111101111011111111010100100;
    UUT.shim_i_1.\regfile[4]  = 32'b11110110000010100000000100000011;
    UUT.shim_i_1.\regfile[5]  = 32'b01010111101111011111010110011011;
    UUT.shim_i_1.\regfile[6]  = 32'b01010111101111100000000100011101;
    UUT.shim_i_1.\regfile[7]  = 32'b01110000001111011111000100001010;
    UUT.shim_i_1.\regfile[8]  = 32'b01110000000000000001001100001000;
    UUT.shim_i_1.\regfile[9]  = 32'b01110010000000000000100110011011;
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
    // UUT.shim_i_2.lsu_shim_i.lsu_i.$auto$async2sync.\cc:140:execute$12259  = 32'b00000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12249  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12251  = 1'b0;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12253  = 1'b0;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12255  = 4'b0000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12257  = 13'b0000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_pipe_reg_load.$auto$async2sync.\cc:140:execute$12269  = 101'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_pipe_reg_store.$auto$async2sync.\cc:140:execute$12269  = 101'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12287  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12289  = 32'b00000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12291  = 4'b0000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12293  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12295  = 4'b0000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12297  = 3'b000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12271  = 292'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12273  = 3'b000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12275  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12277  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12279  = 292'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12281  = 3'b000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12283  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12285  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12261  = 170'b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12263  = 1'b1;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12265  = 1'b0;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12267  = 2'b10;
    UUT.shim_i_2.lsu_shim_i.store_req_state = 2'b00;
    UUT.shim_i_2.lsu_shim_i.tb_io_commit_tran_id_i = 3'b000;
    UUT.shim_i_2.lsu_shim_i.tb_io_dcache_req_ports_i = 105'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    UUT.shim_i_2.lsu_shim_i.tb_io_fu_data_i = 111'b001100100111000000000000000000000000000000011100101011111110110010101111111001111111111111111111111111111110011;
    UUT.shim_i_2.lsu_shim_i.tb_io_lsu_valid_i = 1'b0;
    UUT.shim_i_2.lsu_shim_i.x_load_mem_resp_i = 1'b0;
    UUT.shim_i_2.\mem[0]  = 32'b11111111111111111111111111011110;
    UUT.shim_i_2.\mem[10]  = 32'b11111111111111111111111111011110;
    UUT.shim_i_2.\mem[11]  = 32'b11111111111111111111111110011110;
    UUT.shim_i_2.\mem[12]  = 32'b11111111111111111111111111011110;
    UUT.shim_i_2.\mem[13]  = 32'b11111111111111111111111111011110;
    UUT.shim_i_2.\mem[14]  = 32'b11111111111111111111111111011110;
    UUT.shim_i_2.\mem[15]  = 32'b11111111111111111111111111011110;
    UUT.shim_i_2.\mem[16]  = 32'b11111111111111111111111111011010;
    UUT.shim_i_2.\mem[17]  = 32'b11111111111111111111111111011010;
    UUT.shim_i_2.\mem[18]  = 32'b11111111111111111111110111011011;
    UUT.shim_i_2.\mem[19]  = 32'b01110010000000011001100101100010;
    UUT.shim_i_2.\mem[1]  = 32'b11110110001111111001111000001101;
    UUT.shim_i_2.\mem[20]  = 32'b11111111111111111111001000000100;
    UUT.shim_i_2.\mem[21]  = 32'b00010110101111111110011011011000;
    UUT.shim_i_2.\mem[22]  = 32'b11111111111111111111111110011010;
    UUT.shim_i_2.\mem[23]  = 32'b11111111111111111111111110011010;
    UUT.shim_i_2.\mem[24]  = 32'b11111111111111111111111111111110;
    UUT.shim_i_2.\mem[25]  = 32'b11111110011111111110100010101011;
    UUT.shim_i_2.\mem[26]  = 32'b11111111111111111111111110011010;
    UUT.shim_i_2.\mem[27]  = 32'b11111111111111111111111110011010;
    UUT.shim_i_2.\mem[28]  = 32'b11110001111111111111110011000100;
    UUT.shim_i_2.\mem[29]  = 32'b01010000000000000000000001111111;
    UUT.shim_i_2.\mem[2]  = 32'b11111111111111111111111110011110;
    UUT.shim_i_2.\mem[30]  = 32'b11111111111111111111111110011010;
    UUT.shim_i_2.\mem[31]  = 32'b11111111111111111111111110011010;
    UUT.shim_i_2.\mem[3]  = 32'b10010110101111111110000101001110;
    UUT.shim_i_2.\mem[4]  = 32'b11111111111111111111111111011110;
    UUT.shim_i_2.\mem[5]  = 32'b11111111111111111111111111011110;
    UUT.shim_i_2.\mem[6]  = 32'b11111111111111111111001000000100;
    UUT.shim_i_2.\mem[7]  = 32'b11111111111111111111111111011010;
    UUT.shim_i_2.\mem[8]  = 32'b11111111111111111111111111011110;
    UUT.shim_i_2.\mem[9]  = 32'b11111111111111111111111110011010;
    UUT.shim_i_2.ready_o = 1'b0;
    UUT.shim_i_2.\regfile[0]  = 32'b01010111101111100000001001010001;
    UUT.shim_i_2.\regfile[10]  = 32'b01010111101111100000001000000011;
    UUT.shim_i_2.\regfile[11]  = 32'b01010111101111011111111111000011;
    UUT.shim_i_2.\regfile[12]  = 32'b01110101000001011111110101101111;
    UUT.shim_i_2.\regfile[13]  = 32'b01010111101111011111011100000011;
    UUT.shim_i_2.\regfile[14]  = 32'b01010111101111100000000010100000;
    UUT.shim_i_2.\regfile[15]  = 32'b01010111101111100000000001110001;
    UUT.shim_i_2.\regfile[16]  = 32'b00010110001010000001110111010110;
    UUT.shim_i_2.\regfile[17]  = 32'b01110010000000000000100101011000;
    UUT.shim_i_2.\regfile[18]  = 32'b00010110000000000000001111010010;
    UUT.shim_i_2.\regfile[19]  = 32'b01010111101111100000000001000101;
    UUT.shim_i_2.\regfile[1]  = 32'b01010111101111011111010101001011;
    UUT.shim_i_2.\regfile[20]  = 32'b01110000100000001010100101000011;
    UUT.shim_i_2.\regfile[21]  = 32'b01010111101111011111100000000011;
    UUT.shim_i_2.\regfile[22]  = 32'b01010111101111011111111000111001;
    UUT.shim_i_2.\regfile[23]  = 32'b11110000001000010001001111000111;
    UUT.shim_i_2.\regfile[24]  = 32'b11110010000000000101101100001011;
    UUT.shim_i_2.\regfile[25]  = 32'b01100100111011110001000010011000;
    UUT.shim_i_2.\regfile[26]  = 32'b01010111101111011111111000011101;
    UUT.shim_i_2.\regfile[27]  = 32'b01010111101111011111011000001101;
    UUT.shim_i_2.\regfile[28]  = 32'b01110000000000000000000100011110;
    UUT.shim_i_2.\regfile[29]  = 32'b01110000001000011000001010101010;
    UUT.shim_i_2.\regfile[2]  = 32'b01100100111011110111111010011101;
    UUT.shim_i_2.\regfile[30]  = 32'b01010111101111011111101000100000;
    UUT.shim_i_2.\regfile[31]  = 32'b01010111101111100000000101001001;
    UUT.shim_i_2.\regfile[3]  = 32'b01010111101111011111111010100100;
    UUT.shim_i_2.\regfile[4]  = 32'b11110110000010100000000100000011;
    UUT.shim_i_2.\regfile[5]  = 32'b01010111101111011111010110011011;
    UUT.shim_i_2.\regfile[6]  = 32'b01010111101111100000000100011101;
    UUT.shim_i_2.\regfile[7]  = 32'b01110000001111011111000100001010;
    UUT.shim_i_2.\regfile[8]  = 32'b01110000000000000001001100001000;
    UUT.shim_i_2.\regfile[9]  = 32'b01110010000000000000100110011011;
    UUT.shim_i_2.store_cooldown = 1'b0;
    UUT.shim_i_2.store_count = 3'b000;
    UUT.shim_i_2.store_uncommitted = 1'b0;
    UUT.shim_i_2.tb_io_instr_i = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.tb_io_instr_valid_i = 1'b0;
    UUT.shim_i_2.tb_io_is_load_i = 1'b0;
    UUT.shim_i_2.tb_io_load_mem_resp_i = 1'b0;
    UUT.shim_i_2.tb_io_store_commit_i = 1'b0;
    UUT.shim_i_2.tb_io_store_mem_resp_i = 1'b0;
    UUT.tb_io_instr_i_1 = 32'b01000100011011000101111000010011;
    UUT.tb_io_instr_i_2 = 32'b00000100000011000010111000000011;
    UUT.tb_io_instr_valid_i_1 = 1'b0;
    UUT.tb_io_instr_valid_i_2 = 1'b0;
    UUT.instr2 = 32'b10101110100111111010000000000011;
    UUT.instr1 = 32'b00110010000010101010101100100011;
    UUT.instr0 = 32'b10110000100101011010111110000011;
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
