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
    // UUT.$formal$cva6_lsu_formal.\v:166$11_EN  = 1'b0;
    // UUT.$formal$cva6_lsu_formal.\v:203$13_CHECK  = 1'b0;
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
    UUT.shim_i_1.\mem[0]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[10]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[11]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[12]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[13]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[14]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[15]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[16]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[17]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[18]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[19]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[1]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[20]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[21]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[22]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[23]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[24]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[25]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[26]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[27]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[28]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[29]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[2]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[30]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[31]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[3]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[4]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[5]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[6]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[7]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[8]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\mem[9]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.ready_o = 1'b0;
    UUT.shim_i_1.\regfile[0]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\regfile[10]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_1.\regfile[11]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_1.\regfile[12]  = 32'b11111111111111111111011101011100;
    UUT.shim_i_1.\regfile[13]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_1.\regfile[14]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_1.\regfile[15]  = 32'b11111111111111111111111111111101;
    UUT.shim_i_1.\regfile[16]  = 32'b11111111111111111110111111101101;
    UUT.shim_i_1.\regfile[17]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_1.\regfile[18]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_1.\regfile[19]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_1.\regfile[1]  = 32'b11111111111111111111111111111100;
    UUT.shim_i_1.\regfile[20]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_1.\regfile[21]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_1.\regfile[22]  = 32'b11111111111111111110111111111110;
    UUT.shim_i_1.\regfile[23]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_1.\regfile[24]  = 32'b11111111111111111111111111111101;
    UUT.shim_i_1.\regfile[25]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_1.\regfile[26]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_1.\regfile[27]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_1.\regfile[28]  = 32'b01111111111111111111111111111111;
    UUT.shim_i_1.\regfile[29]  = 32'b11111111111111111111010101111111;
    UUT.shim_i_1.\regfile[2]  = 32'b11111111111111111110111011111111;
    UUT.shim_i_1.\regfile[30]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_1.\regfile[31]  = 32'b01111111111111111111111111111111;
    UUT.shim_i_1.\regfile[3]  = 32'b11111111111111111110111111111110;
    UUT.shim_i_1.\regfile[4]  = 32'b11111111111111111111111011010001;
    UUT.shim_i_1.\regfile[5]  = 32'b11111111111111111111111111111010;
    UUT.shim_i_1.\regfile[6]  = 32'b01111111111111111111111110111111;
    UUT.shim_i_1.\regfile[7]  = 32'b11111111111111100111110111011011;
    UUT.shim_i_1.\regfile[8]  = 32'b11111111111111111111010001110101;
    UUT.shim_i_1.\regfile[9]  = 32'b11111111111111111111111111111111;
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
    UUT.shim_i_2.\mem[0]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[10]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[11]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[12]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[13]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[14]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[15]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[16]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[17]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[18]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[19]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[1]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[20]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[21]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[22]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[23]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[24]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[25]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[26]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[27]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[28]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\mem[29]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[2]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[30]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[31]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[3]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[4]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[5]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[6]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[7]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[8]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.\mem[9]  = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.ready_o = 1'b0;
    UUT.shim_i_2.\regfile[0]  = 32'b00000000000000000000000000000010;
    UUT.shim_i_2.\regfile[10]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\regfile[11]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\regfile[12]  = 32'b11111111111111111111010111100101;
    UUT.shim_i_2.\regfile[13]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\regfile[14]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\regfile[15]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\regfile[16]  = 32'b11111111111111111110111001110110;
    UUT.shim_i_2.\regfile[17]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\regfile[18]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\regfile[19]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\regfile[1]  = 32'b11111111111111111111111111111110;
    UUT.shim_i_2.\regfile[20]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\regfile[21]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\regfile[22]  = 32'b11111111111111111110111010000111;
    UUT.shim_i_2.\regfile[23]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\regfile[24]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\regfile[25]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\regfile[26]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\regfile[27]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\regfile[28]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.\regfile[29]  = 32'b11111111111111111111101100000010;
    UUT.shim_i_2.\regfile[2]  = 32'b11111111111111111110110110001001;
    UUT.shim_i_2.\regfile[30]  = 32'b00000000000000000000000000000010;
    UUT.shim_i_2.\regfile[31]  = 32'b01111111111111111111111010001000;
    UUT.shim_i_2.\regfile[3]  = 32'b11111111111111111110111010000111;
    UUT.shim_i_2.\regfile[4]  = 32'b11111111111111111111111011010011;
    UUT.shim_i_2.\regfile[5]  = 32'b11111111111111111111111111111100;
    UUT.shim_i_2.\regfile[6]  = 32'b11111111111111111111011111111111;
    UUT.shim_i_2.\regfile[7]  = 32'b11111111111111111111101111011011;
    UUT.shim_i_2.\regfile[8]  = 32'b11111111111111111111001011111110;
    UUT.shim_i_2.\regfile[9]  = 32'b11111111111111111111111111111111;
    UUT.shim_i_2.store_cooldown = 1'b0;
    UUT.shim_i_2.store_count = 3'b000;
    UUT.shim_i_2.store_uncommitted = 1'b0;
    UUT.shim_i_2.tb_io_instr_i = 32'b00000000000000000000000000000000;
    UUT.shim_i_2.tb_io_instr_valid_i = 1'b0;
    UUT.shim_i_2.tb_io_is_load_i = 1'b0;
    UUT.shim_i_2.tb_io_load_mem_resp_i = 1'b0;
    UUT.shim_i_2.tb_io_store_commit_i = 1'b0;
    UUT.shim_i_2.tb_io_store_mem_resp_i = 1'b0;
    UUT.tb_io_instr_i_1 = 32'b01011000000111101000111010010011;
    UUT.tb_io_instr_i_2 = 32'b00000110011011010110111110010011;
    UUT.tb_io_instr_valid_i_1 = 1'b1;
    UUT.tb_io_instr_valid_i_2 = 1'b0;
    UUT.instr2 = 32'b10100001101101100010000000000011;
    UUT.instr1 = 32'b00000000000000000010000000100011;
    UUT.instr0 = 32'b11001111011111101000100000010011;
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

    genclock <= cycle < 20;
    cycle <= cycle + 1;
  end
endmodule
