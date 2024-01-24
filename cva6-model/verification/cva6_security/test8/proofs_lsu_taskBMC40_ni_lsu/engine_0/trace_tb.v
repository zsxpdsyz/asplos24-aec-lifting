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
    // UUT.$formal$cva6_lsu_formal.\v:173$14_EN  = 1'b0;
    // UUT.$formal$cva6_lsu_formal.\v:210$16_CHECK  = 1'b0;
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
    // UUT.shim_i_1.lsu_shim_i.lsu_i.$auto$async2sync.\cc:140:execute$12274  = 32'b00000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12264  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12266  = 1'b0;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12268  = 1'b0;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12270  = 4'b0000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12272  = 13'b0000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_pipe_reg_load.$auto$async2sync.\cc:140:execute$12284  = 101'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_pipe_reg_store.$auto$async2sync.\cc:140:execute$12284  = 101'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12302  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12304  = 32'b00000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12306  = 4'b0000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12308  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12310  = 4'b0000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12312  = 3'b000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12286  = 292'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12288  = 3'b000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12290  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12292  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12294  = 292'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12296  = 3'b000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12298  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12300  = 2'b00;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12276  = 170'b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12278  = 1'b1;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12280  = 1'b0;
    // UUT.shim_i_1.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12282  = 2'b10;
    UUT.shim_i_1.lsu_shim_i.store_req_state = 2'b00;
    UUT.shim_i_1.lsu_shim_i.tb_io_commit_tran_id_i = 3'b000;
    UUT.shim_i_1.lsu_shim_i.tb_io_dcache_req_ports_i = 105'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    UUT.shim_i_1.lsu_shim_i.tb_io_fu_data_i = 111'b001100100111001111111111111111111111111111111100101011111110110010101111111000111111111111111111111111111111011;
    UUT.shim_i_1.lsu_shim_i.tb_io_lsu_valid_i = 1'b0;
    UUT.shim_i_1.lsu_shim_i.x_load_mem_resp_i = 1'b0;
    UUT.shim_i_1.\mem[0]  = 32'b00001011100011111101011000000000;
    UUT.shim_i_1.\mem[10]  = 32'b10001011110111110100011010010000;
    UUT.shim_i_1.\mem[11]  = 32'b00001111110001010111011110010000;
    UUT.shim_i_1.\mem[12]  = 32'b01001011110011010110111110000000;
    UUT.shim_i_1.\mem[13]  = 32'b01011011111111110101011010000001;
    UUT.shim_i_1.\mem[14]  = 32'b10001011111011110110011010010100;
    UUT.shim_i_1.\mem[15]  = 32'b00101111100010110101010110010000;
    UUT.shim_i_1.\mem[16]  = 32'b00001011100011010111000000001001;
    UUT.shim_i_1.\mem[17]  = 32'b10001011110011000101101100110111;
    UUT.shim_i_1.\mem[18]  = 32'b11101011110111110111100011010000;
    UUT.shim_i_1.\mem[19]  = 32'b11001000110011110110001000010000;
    UUT.shim_i_1.\mem[1]  = 32'b01101011110010110110001110000000;
    UUT.shim_i_1.\mem[20]  = 32'b00101010110111110110001101110001;
    UUT.shim_i_1.\mem[21]  = 32'b11001011110010010100111100010010;
    UUT.shim_i_1.\mem[22]  = 32'b00101010111111110100000111010000;
    UUT.shim_i_1.\mem[23]  = 32'b11101010010111110110000001111000;
    UUT.shim_i_1.\mem[24]  = 32'b10001011110011110101111011000000;
    UUT.shim_i_1.\mem[25]  = 32'b11000000000111000111110100000110;
    UUT.shim_i_1.\mem[26]  = 32'b00101011110011100111100110000000;
    UUT.shim_i_1.\mem[27]  = 32'b11101011111111110110001100000000;
    UUT.shim_i_1.\mem[28]  = 32'b11101011100011110111010001011010;
    UUT.shim_i_1.\mem[29]  = 32'b11001011100011010110110111010110;
    UUT.shim_i_1.\mem[2]  = 32'b00001010011111110111101011110000;
    UUT.shim_i_1.\mem[30]  = 32'b01011011111111110101100110000000;
    UUT.shim_i_1.\mem[31]  = 32'b01001011100011110011111110000001;
    UUT.shim_i_1.\mem[3]  = 32'b00001011100111011011011010011000;
    UUT.shim_i_1.\mem[4]  = 32'b00010100100101001110000010000111;
    UUT.shim_i_1.\mem[5]  = 32'b11101011100001010101010111000110;
    UUT.shim_i_1.\mem[6]  = 32'b00101000111101110100111000010000;
    UUT.shim_i_1.\mem[7]  = 32'b11101010110111110110000000101100;
    UUT.shim_i_1.\mem[8]  = 32'b00101001100101010110001011010010;
    UUT.shim_i_1.\mem[9]  = 32'b00101110100001010101011011010110;
    UUT.shim_i_1.ready_o = 1'b0;
    UUT.shim_i_1.\regfile[0]  = 32'b11011100100101010011111111100001;
    UUT.shim_i_1.\regfile[10]  = 32'b00010100100101001101111101011111;
    UUT.shim_i_1.\regfile[11]  = 32'b11101111111000000001001010101100;
    UUT.shim_i_1.\regfile[12]  = 32'b01001100000111001111110010010010;
    UUT.shim_i_1.\regfile[13]  = 32'b01010000000101000111100101100011;
    UUT.shim_i_1.\regfile[14]  = 32'b11011100100101010011111111011011;
    UUT.shim_i_1.\regfile[15]  = 32'b11101111111000000001011011011011;
    UUT.shim_i_1.\regfile[16]  = 32'b11101111111000000001010011100111;
    UUT.shim_i_1.\regfile[17]  = 32'b11101111111000000000101101010011;
    UUT.shim_i_1.\regfile[18]  = 32'b11011100100101010100101111111011;
    UUT.shim_i_1.\regfile[19]  = 32'b10001100011011000010110010001101;
    UUT.shim_i_1.\regfile[1]  = 32'b00010100100101001110000011110000;
    UUT.shim_i_1.\regfile[20]  = 32'b11011100100101010100000001110110;
    UUT.shim_i_1.\regfile[21]  = 32'b11101111111000000001001010110110;
    UUT.shim_i_1.\regfile[22]  = 32'b11101111111000000000101111010011;
    UUT.shim_i_1.\regfile[23]  = 32'b11101111111000000001100110101110;
    UUT.shim_i_1.\regfile[24]  = 32'b01010110101110000100100100010011;
    UUT.shim_i_1.\regfile[25]  = 32'b11000110011100010000100100000100;
    UUT.shim_i_1.\regfile[26]  = 32'b11101111111000000000101011010111;
    UUT.shim_i_1.\regfile[27]  = 32'b11010100001100100111101010011001;
    UUT.shim_i_1.\regfile[28]  = 32'b00010100100101001110100110010011;
    UUT.shim_i_1.\regfile[29]  = 32'b11011100110101010110001101111011;
    UUT.shim_i_1.\regfile[2]  = 32'b11000110110111011101111010110010;
    UUT.shim_i_1.\regfile[30]  = 32'b11000111111010000010101101010001;
    UUT.shim_i_1.\regfile[31]  = 32'b00010100100101001101110110000011;
    UUT.shim_i_1.\regfile[3]  = 32'b11000111111011101110101111111110;
    UUT.shim_i_1.\regfile[4]  = 32'b11001100001100100101101110011111;
    UUT.shim_i_1.\regfile[5]  = 32'b11011100100101010100101101000001;
    UUT.shim_i_1.\regfile[6]  = 32'b01001100001111100101111011011111;
    UUT.shim_i_1.\regfile[7]  = 32'b00010100100101001110100000000110;
    UUT.shim_i_1.\regfile[8]  = 32'b01001011111010111111101101111101;
    UUT.shim_i_1.\regfile[9]  = 32'b11011100100101010100110000000101;
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
    // UUT.shim_i_2.lsu_shim_i.lsu_i.$auto$async2sync.\cc:140:execute$12274  = 32'b00000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12264  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12266  = 1'b0;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12268  = 1'b0;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12270  = 4'b0000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_load_unit.$auto$async2sync.\cc:140:execute$12272  = 13'b0000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_pipe_reg_load.$auto$async2sync.\cc:140:execute$12284  = 101'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_pipe_reg_store.$auto$async2sync.\cc:140:execute$12284  = 101'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12302  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12304  = 32'b00000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12306  = 4'b0000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12308  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12310  = 4'b0000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.$auto$async2sync.\cc:140:execute$12312  = 3'b000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12286  = 292'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12288  = 3'b000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12290  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12292  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12294  = 292'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12296  = 3'b000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12298  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.i_store_unit.store_buffer_i.$auto$async2sync.\cc:140:execute$12300  = 2'b00;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12276  = 170'b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12278  = 1'b1;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12280  = 1'b0;
    // UUT.shim_i_2.lsu_shim_i.lsu_i.lsu_bypass_i.$auto$async2sync.\cc:140:execute$12282  = 2'b10;
    UUT.shim_i_2.lsu_shim_i.store_req_state = 2'b00;
    UUT.shim_i_2.lsu_shim_i.tb_io_commit_tran_id_i = 3'b000;
    UUT.shim_i_2.lsu_shim_i.tb_io_dcache_req_ports_i = 105'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    UUT.shim_i_2.lsu_shim_i.tb_io_fu_data_i = 111'b001100100111001111111111111111111111111111111100101011111110110010101111111000111111111111111111111111111111011;
    UUT.shim_i_2.lsu_shim_i.tb_io_lsu_valid_i = 1'b0;
    UUT.shim_i_2.lsu_shim_i.x_load_mem_resp_i = 1'b0;
    UUT.shim_i_2.\mem[0]  = 32'b10100111110111011111110011110100;
    UUT.shim_i_2.\mem[10]  = 32'b10101111110100001000011001111100;
    UUT.shim_i_2.\mem[11]  = 32'b11100010110111111111111011111001;
    UUT.shim_i_2.\mem[12]  = 32'b00100011110100001000001101111010;
    UUT.shim_i_2.\mem[13]  = 32'b11110110000011000010100001111110;
    UUT.shim_i_2.\mem[14]  = 32'b10100111110111101111010011110110;
    UUT.shim_i_2.\mem[15]  = 32'b10100101110101101001101111110010;
    UUT.shim_i_2.\mem[16]  = 32'b10100110110111011111000010110001;
    UUT.shim_i_2.\mem[17]  = 32'b10001111000100001011101111011100;
    UUT.shim_i_2.\mem[18]  = 32'b11101011100011110001001101011001;
    UUT.shim_i_2.\mem[19]  = 32'b11001111111111111111000100011100;
    UUT.shim_i_2.\mem[1]  = 32'b00010100100101001110000010000111;
    UUT.shim_i_2.\mem[20]  = 32'b10100110000000001001000101111100;
    UUT.shim_i_2.\mem[21]  = 32'b11001101110000101111100110011100;
    UUT.shim_i_2.\mem[22]  = 32'b10101111110111111111100101111100;
    UUT.shim_i_2.\mem[23]  = 32'b10100110000000000000001001111111;
    UUT.shim_i_2.\mem[24]  = 32'b11101111110111110110011011110001;
    UUT.shim_i_2.\mem[25]  = 32'b10101111110011110000100111110011;
    UUT.shim_i_2.\mem[26]  = 32'b10101111111111011100111111111101;
    UUT.shim_i_2.\mem[27]  = 32'b01001111110111111011001101111100;
    UUT.shim_i_2.\mem[28]  = 32'b10110101000110111011010101111011;
    UUT.shim_i_2.\mem[29]  = 32'b10100001110100001000100011111100;
    UUT.shim_i_2.\mem[2]  = 32'b01010100110111111110011101110010;
    UUT.shim_i_2.\mem[30]  = 32'b11110110000011000010101101111101;
    UUT.shim_i_2.\mem[31]  = 32'b10101111111111111111000111111100;
    UUT.shim_i_2.\mem[3]  = 32'b01001111110101101000000111110111;
    UUT.shim_i_2.\mem[4]  = 32'b11011101000001000001111111110111;
    UUT.shim_i_2.\mem[5]  = 32'b10100111110100001000010011111101;
    UUT.shim_i_2.\mem[6]  = 32'b00100011110111001110110010011100;
    UUT.shim_i_2.\mem[7]  = 32'b00100000000001000000001001111011;
    UUT.shim_i_2.\mem[8]  = 32'b10000111100100011001011011111001;
    UUT.shim_i_2.\mem[9]  = 32'b00010011110100101001000001110001;
    UUT.shim_i_2.ready_o = 1'b0;
    UUT.shim_i_2.\regfile[0]  = 32'b11011100100101010011111111100001;
    UUT.shim_i_2.\regfile[10]  = 32'b00010100100101001101111101011111;
    UUT.shim_i_2.\regfile[11]  = 32'b11101111111000000001001010101100;
    UUT.shim_i_2.\regfile[12]  = 32'b01001100000111001111110010010010;
    UUT.shim_i_2.\regfile[13]  = 32'b01010000000101000111100101100011;
    UUT.shim_i_2.\regfile[14]  = 32'b11011100100101010011111111011011;
    UUT.shim_i_2.\regfile[15]  = 32'b11101111111000000001011011011011;
    UUT.shim_i_2.\regfile[16]  = 32'b11101111111000000001010011100111;
    UUT.shim_i_2.\regfile[17]  = 32'b11101111111000000000101101010011;
    UUT.shim_i_2.\regfile[18]  = 32'b11011100100101010100101111111011;
    UUT.shim_i_2.\regfile[19]  = 32'b10001100011011000010110010001101;
    UUT.shim_i_2.\regfile[1]  = 32'b00010100100101001110000011110000;
    UUT.shim_i_2.\regfile[20]  = 32'b11011100100101010100000001110110;
    UUT.shim_i_2.\regfile[21]  = 32'b11101111111000000001001010110110;
    UUT.shim_i_2.\regfile[22]  = 32'b11101111111000000000101111010011;
    UUT.shim_i_2.\regfile[23]  = 32'b11101111111000000001100110101110;
    UUT.shim_i_2.\regfile[24]  = 32'b01010110101110000100100100010011;
    UUT.shim_i_2.\regfile[25]  = 32'b11000110011100010000100100000100;
    UUT.shim_i_2.\regfile[26]  = 32'b11101111111000000000101011010111;
    UUT.shim_i_2.\regfile[27]  = 32'b11010100001100100111101010011001;
    UUT.shim_i_2.\regfile[28]  = 32'b00010100100101001110100110010011;
    UUT.shim_i_2.\regfile[29]  = 32'b11011100110101010110001101111011;
    UUT.shim_i_2.\regfile[2]  = 32'b11000110110111011101111010110010;
    UUT.shim_i_2.\regfile[30]  = 32'b11000111111010000010101101010001;
    UUT.shim_i_2.\regfile[31]  = 32'b00010100100101001101110110000011;
    UUT.shim_i_2.\regfile[3]  = 32'b11000111111011101110101111111110;
    UUT.shim_i_2.\regfile[4]  = 32'b11001100001100100101101110011111;
    UUT.shim_i_2.\regfile[5]  = 32'b11011100100101010100101101000001;
    UUT.shim_i_2.\regfile[6]  = 32'b01001100001111100101111011011111;
    UUT.shim_i_2.\regfile[7]  = 32'b00010100100101001110100000000110;
    UUT.shim_i_2.\regfile[8]  = 32'b01001011111010111111101101111101;
    UUT.shim_i_2.\regfile[9]  = 32'b11011100100101010100110000000101;
    UUT.shim_i_2.store_cooldown = 1'b0;
    UUT.shim_i_2.store_count = 3'b000;
    UUT.shim_i_2.store_uncommitted = 1'b0;
    UUT.shim_i_2.tb_io_instr_i = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.tb_io_instr_valid_i = 1'b0;
    UUT.shim_i_2.tb_io_is_load_i = 1'b0;
    UUT.shim_i_2.tb_io_load_mem_resp_i = 1'b0;
    UUT.shim_i_2.tb_io_store_commit_i = 1'b0;
    UUT.shim_i_2.tb_io_store_mem_resp_i = 1'b0;
    UUT.tb_io_instr_i_1 = 32'b01000000001110011101100110000011;
    UUT.tb_io_instr_i_2 = 32'b11100010010000000000100110000011;
    UUT.tb_io_instr_valid_i_1 = 1'b1;
    UUT.tb_io_instr_valid_i_2 = 1'b1;
    UUT.instr2 = 32'b11000011100100101010111110000011;
    UUT.instr1 = 32'b11001110000000111010110000100011;
    UUT.instr0 = 32'b10010000011110111010010110000011;
    UUT.instr3 = 32'b11000111101001011010111100000011;

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

    // state 28
    if (cycle == 27) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 29
    if (cycle == 28) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 30
    if (cycle == 29) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 31
    if (cycle == 30) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 32
    if (cycle == 31) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 33
    if (cycle == 32) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 34
    if (cycle == 33) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    // state 35
    if (cycle == 34) begin
      UUT.tb_io_store_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_store_mem_resp_i_1 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_2 <= 1'b0;
      UUT.tb_io_load_mem_resp_i_1 <= 1'b0;
    end

    genclock <= cycle < 35;
    cycle <= cycle + 1;
  end
endmodule
