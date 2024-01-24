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
  sodor5_verif UUT (
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
    // UUT.$formal$sodor5_lb_unified_bmc.\v:164$206_CHECK  = 1'b0;
    // UUT.$formal$sodor5_lb_unified_bmc.\v:164$206_EN  = 1'b0;
    UUT.counter = 4'b0000;
    UUT.init = 1'b1;
    UUT.model1.copy_alu_op1 = 32'b00000000000000000000000000000000;
    UUT.model1.copy_alu_op2 = 32'b00000000000000000000000000000000;
    UUT.model1.copy_dec_wbaddr = 5'b00000;
    UUT.model1.copy_dmem_req_bits_addr = 32'b00000000000000000000000000000000;
    UUT.model1.copy_dmem_req_bits_data = 32'b00000000000000000000000000000000;
    UUT.model1.copy_dmem_req_valid = 1'b0;
    UUT.model1.copy_funct3 = 3'b000;
    UUT.model1.copy_imm = 32'b00000000000000000000000000000000;
    UUT.model1.copy_imm_sbtype_sext = 32'b00000000000000000000000000000000;
    UUT.model1.copy_imm_stype_sext = 32'b00000000000000000000000000000000;
    UUT.model1.copy_lb_table_addr = 32'b00000000000000000000000000000000;
    UUT.model1.copy_lb_table_data = 32'b00000000000000000000000000000000;
    UUT.model1.copy_lb_table_valid = 1'b0;
    UUT.model1.copy_reg_rd_data_in = 32'b00000000000000000000000000000000;
    UUT.model1.copy_reg_rs1_addr_in = 5'b00000;
    UUT.model1.copy_reg_rs2_addr_in = 5'b00000;
    UUT.model1.dec_reg_inst = 32'b00000000000000000000000000000000;
    UUT.model1.dec_reg_pc = 32'b00000000000000000000000000000000;
    UUT.model1.dmem.cycle_counter = 4'b0000;
    UUT.model1.dmem.dmem_resp_bits_data = 32'b00000000000000000000000000000000;
    UUT.model1.dmem.dmem_resp_valid = 1'b0;
    UUT.model1.exe_reg_inst = 32'b00000000000000000000000000000000;
    UUT.model1.exe_reg_pc = 32'b00000000000000000000000000000000;
    UUT.model1.exe_reg_rs2_data_out = 32'b00000000000000000000000000000000;
    UUT.model1.exe_reg_wbaddr = 5'b00000;
    UUT.model1.if_reg_pc = 32'b00000000000000000000000000000000;
    UUT.model1.\instr_queue[0]  = 32'b00000000000000000000000000000000;
    UUT.model1.\instr_queue[1]  = 32'b00000000000000000000000000000000;
    UUT.model1.\instr_queue[2]  = 32'b00000000000000000000000000000000;
    UUT.model1.\instr_queue[3]  = 32'b00000000000000000000000000000000;
    UUT.model1.\instr_queue_valid[0]  = 1'b0;
    UUT.model1.lb_table_addr = 32'b00000000000000000000000000000000;
    UUT.model1.lb_table_data = 32'b00000000000000000000000000000000;
    UUT.model1.lb_table_valid = 1'b0;
    UUT.model1.mem_reg_alu_out = 32'b00000000000000000000000000000000;
    UUT.model1.mem_reg_inst = 32'b00000000000000000000000000000000;
    UUT.model1.mem_reg_pc = 32'b00000000000000000000000000000000;
    UUT.model1.mem_reg_wbaddr = 5'b00000;
    UUT.model1.pc = 32'b00000000000000000000000000000000;
    UUT.model1.reg_rd_addr_in = 5'b00000;
    UUT.model1.reg_rs1_data_out = 32'b00000000000000000000000000000000;
    UUT.model1.reg_rs2_data_out = 32'b00000000000000000000000000000000;
    UUT.model1.\regfile[0]  = 32'b00000000000000000000000000000000;
    UUT.model1.\regfile[10]  = 32'b01001011101100000000010001111000;
    UUT.model1.\regfile[11]  = 32'b00011110111101100001100011100110;
    UUT.model1.\regfile[12]  = 32'b11000011101101010100000010101001;
    UUT.model1.\regfile[13]  = 32'b11101000101110111100111101001001;
    UUT.model1.\regfile[14]  = 32'b01000000101001000100010100111001;
    UUT.model1.\regfile[15]  = 32'b00101101100000000000001101111101;
    UUT.model1.\regfile[16]  = 32'b01000011111100001000100111110010;
    UUT.model1.\regfile[17]  = 32'b11111001111100001000001110101110;
    UUT.model1.\regfile[18]  = 32'b11111011101100000000000100110110;
    UUT.model1.\regfile[19]  = 32'b11010011111100001010100100000011;
    UUT.model1.\regfile[1]  = 32'b00001011111110000000011100011111;
    UUT.model1.\regfile[20]  = 32'b10100001101100001000001101110001;
    UUT.model1.\regfile[21]  = 32'b11111011101100000000001110010000;
    UUT.model1.\regfile[22]  = 32'b01111011111110000000011011001000;
    UUT.model1.\regfile[23]  = 32'b00000000101111010100111111111110;
    UUT.model1.\regfile[24]  = 32'b00000000100111010100000001110000;
    UUT.model1.\regfile[25]  = 32'b00010000101111011100011110010000;
    UUT.model1.\regfile[26]  = 32'b01001100000100001000010101001100;
    UUT.model1.\regfile[27]  = 32'b00011110111101100001011000010110;
    UUT.model1.\regfile[28]  = 32'b00000101100011100000000001110010;
    UUT.model1.\regfile[29]  = 32'b00011110111101100001101000000000;
    UUT.model1.\regfile[2]  = 32'b00011110111101100001100011110000;
    UUT.model1.\regfile[30]  = 32'b00011110111101100000111111001000;
    UUT.model1.\regfile[31]  = 32'b00001111001111000010011111101110;
    UUT.model1.\regfile[3]  = 32'b00011111111110000000011100001000;
    UUT.model1.\regfile[4]  = 32'b01011001111110000000011000000000;
    UUT.model1.\regfile[5]  = 32'b00011110111101100001011000101000;
    UUT.model1.\regfile[6]  = 32'b00011110111101100001010000100000;
    UUT.model1.\regfile[7]  = 32'b01011111111010101111011110001000;
    UUT.model1.\regfile[8]  = 32'b11001011101100000000100001000001;
    UUT.model1.\regfile[9]  = 32'b11011011111101001000100011111100;
    UUT.model1.signal__branch_decision = 1'b0;
    UUT.model2.copy_alu_op1 = 32'b00000000000000000000000000000000;
    UUT.model2.copy_alu_op2 = 32'b00000000000000000000000000000000;
    UUT.model2.copy_dec_wbaddr = 5'b00000;
    UUT.model2.copy_dmem_req_bits_addr = 32'b00000000000000000000000000000000;
    UUT.model2.copy_dmem_req_bits_data = 32'b00000000000000000000000000000000;
    UUT.model2.copy_dmem_req_valid = 1'b0;
    UUT.model2.copy_funct3 = 3'b000;
    UUT.model2.copy_imm = 32'b00000000000000000000000000000000;
    UUT.model2.copy_imm_sbtype_sext = 32'b00000000000000000000000000000000;
    UUT.model2.copy_imm_stype_sext = 32'b00000000000000000000000000000000;
    UUT.model2.copy_lb_table_addr = 32'b00000000000000000000000000000000;
    UUT.model2.copy_lb_table_data = 32'b00000000000000000000000000000000;
    UUT.model2.copy_lb_table_valid = 1'b0;
    UUT.model2.copy_reg_rd_data_in = 32'b00000000000000000000000000000000;
    UUT.model2.copy_reg_rs1_addr_in = 5'b00000;
    UUT.model2.copy_reg_rs2_addr_in = 5'b00000;
    UUT.model2.dec_reg_inst = 32'b00000000000000000000000000000000;
    UUT.model2.dec_reg_pc = 32'b00000000000000000000000000000000;
    UUT.model2.dmem.cycle_counter = 4'b0000;
    UUT.model2.dmem.dmem_resp_bits_data = 32'b00000000000000000000000000000000;
    UUT.model2.dmem.dmem_resp_valid = 1'b0;
    UUT.model2.exe_reg_inst = 32'b00000000000000000000000000000000;
    UUT.model2.exe_reg_pc = 32'b00000000000000000000000000000000;
    UUT.model2.exe_reg_rs2_data_out = 32'b00000000000000000000000000000000;
    UUT.model2.exe_reg_wbaddr = 5'b00000;
    UUT.model2.if_reg_pc = 32'b00000000000000000000000000000000;
    UUT.model2.\instr_queue[0]  = 32'b00000000000000000000000000000000;
    UUT.model2.\instr_queue[1]  = 32'b00000000000000000000000000000000;
    UUT.model2.\instr_queue[2]  = 32'b00000000000000000000000000000000;
    UUT.model2.\instr_queue[3]  = 32'b00000000000000000000000000000000;
    UUT.model2.\instr_queue_valid[0]  = 1'b0;
    UUT.model2.lb_table_addr = 32'b00000000000000000000000000000000;
    UUT.model2.lb_table_data = 32'b00000000000000000000000000000000;
    UUT.model2.lb_table_valid = 1'b0;
    UUT.model2.mem_reg_alu_out = 32'b00000000000000000000000000000000;
    UUT.model2.mem_reg_inst = 32'b00000000000000000000000000000000;
    UUT.model2.mem_reg_pc = 32'b00000000000000000000000000000000;
    UUT.model2.mem_reg_wbaddr = 5'b00000;
    UUT.model2.pc = 32'b00000000000000000000000000000000;
    UUT.model2.reg_rd_addr_in = 5'b00000;
    UUT.model2.reg_rs1_data_out = 32'b00000000000000000000000000000000;
    UUT.model2.reg_rs2_data_out = 32'b00000000000000000000000000000000;
    UUT.model2.\regfile[0]  = 32'b00000000000000000000000000000000;
    UUT.model2.\regfile[10]  = 32'b01001011101100000000010001111000;
    UUT.model2.\regfile[11]  = 32'b00011110111101100001100011100110;
    UUT.model2.\regfile[12]  = 32'b11000011101101010100000010101001;
    UUT.model2.\regfile[13]  = 32'b11101000101110111100111101001001;
    UUT.model2.\regfile[14]  = 32'b01000000101001000100010100111001;
    UUT.model2.\regfile[15]  = 32'b00101101100000000000001101111101;
    UUT.model2.\regfile[16]  = 32'b01000011111100001000100111110010;
    UUT.model2.\regfile[17]  = 32'b11111001111100001000001110101110;
    UUT.model2.\regfile[18]  = 32'b11111011101100000000000100110110;
    UUT.model2.\regfile[19]  = 32'b11010011111100001010100100000011;
    UUT.model2.\regfile[1]  = 32'b00001011111110000000011100011111;
    UUT.model2.\regfile[20]  = 32'b10100001101100001000001101110001;
    UUT.model2.\regfile[21]  = 32'b11111011101100000000001110010000;
    UUT.model2.\regfile[22]  = 32'b01111011111110000000011011001000;
    UUT.model2.\regfile[23]  = 32'b00000000101111010100111111111110;
    UUT.model2.\regfile[24]  = 32'b00000000100111010100000001110000;
    UUT.model2.\regfile[25]  = 32'b00010000101111011100011110010000;
    UUT.model2.\regfile[26]  = 32'b01001100000100001000010101001100;
    UUT.model2.\regfile[27]  = 32'b00011110111101100001011000010110;
    UUT.model2.\regfile[28]  = 32'b00000101100011100000000001110010;
    UUT.model2.\regfile[29]  = 32'b00011110111101100001101000000000;
    UUT.model2.\regfile[2]  = 32'b00011110111101100001100011110000;
    UUT.model2.\regfile[30]  = 32'b00011110111101100000111111001000;
    UUT.model2.\regfile[31]  = 32'b00001111001111000010011111101110;
    UUT.model2.\regfile[3]  = 32'b00011111111110000000011100001000;
    UUT.model2.\regfile[4]  = 32'b01011001111110000000011000000000;
    UUT.model2.\regfile[5]  = 32'b00011110111101100001011000101000;
    UUT.model2.\regfile[6]  = 32'b00011110111101100001010000100000;
    UUT.model2.\regfile[7]  = 32'b01011111111010101111011110001000;
    UUT.model2.\regfile[8]  = 32'b11001011101100000000100001000001;
    UUT.model2.\regfile[9]  = 32'b11011011111101001000100011111100;
    UUT.model2.signal__branch_decision = 1'b0;
    UUT.reset = 1'b1;
    UUT.rs2 = 5'b11000;
    UUT.rs1 = 5'b11101;
    UUT.rd2 = 5'b00000;
    UUT.rd1 = 5'b11000;
    UUT.imm2 = 12'b011111101011;
    UUT.imm1 = 12'b101011010000;
    UUT.model1.dmem.mem[4'b0000] = 32'b00000000000000000000000000000000;
    UUT.model1.dmem.mem[4'b0100] = 32'b00000000000000000000000000000000;
    UUT.model1.dmem.mem[4'b0111] = 32'b00000000000000000000000000000000;
    UUT.model2.dmem.mem[4'b0000] = 32'b00000000000000000000000000000000;
    UUT.model2.dmem.mem[4'b0100] = 32'b00000000000000000000000000000000;
    UUT.model2.dmem.mem[4'b0101] = 32'b00000000000000000000000000000000;

    // state 0
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
    end

    // state 2
    if (cycle == 1) begin
    end

    // state 3
    if (cycle == 2) begin
    end

    // state 4
    if (cycle == 3) begin
    end

    // state 5
    if (cycle == 4) begin
    end

    // state 6
    if (cycle == 5) begin
    end

    // state 7
    if (cycle == 6) begin
    end

    // state 8
    if (cycle == 7) begin
    end

    // state 9
    if (cycle == 8) begin
    end

    // state 10
    if (cycle == 9) begin
    end

    // state 11
    if (cycle == 10) begin
    end

    // state 12
    if (cycle == 11) begin
    end

    // state 13
    if (cycle == 12) begin
    end

    // state 14
    if (cycle == 13) begin
    end

    // state 15
    if (cycle == 14) begin
    end

    genclock <= cycle < 15;
    cycle <= cycle + 1;
  end
endmodule
