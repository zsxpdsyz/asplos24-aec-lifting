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
    // UUT.$formal$sodor5_lb_unified_bmc.\v:163$3_CHECK  = 1'b0;
    // UUT.$formal$sodor5_lb_unified_bmc.\v:163$3_EN  = 1'b0;
    UUT.coretop1.core.c.exe_inst_is_load = 1'b0;
    UUT.coretop1.core.c.exe_reg_illegal = 1'b0;
    UUT.coretop1.core.c.exe_reg_is_csr = 1'b0;
    UUT.coretop1.core.c.exe_reg_wbaddr = 5'b00000;
    UUT.coretop1.core.c.io_ctl_fencei_REG = 1'b0;
    UUT.coretop1.core.c.io_ctl_mem_exception_REG = 1'b0;
    UUT.coretop1.core.c.io_ctl_mem_exception_cause_REG = 1'b0;
    UUT.coretop1.core.c.io_ctl_mem_exception_cause_REG_1 = 1'b0;
    UUT.coretop1.core.d.brjmp_offset = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.csr.io_status_cease_r = 1'b0;
    UUT.coretop1.core.d.csr.large_ = 58'b0000000000000000000000000000000000000000000000000000000000;
    UUT.coretop1.core.d.csr.large_1 = 58'b0000000000000000000000000000000000000000000000000000000000;
    UUT.coretop1.core.d.csr.reg_dcsr_cause = 3'b000;
    UUT.coretop1.core.d.csr.reg_dcsr_ebreakm = 1'b0;
    UUT.coretop1.core.d.csr.reg_dcsr_step = 1'b0;
    UUT.coretop1.core.d.csr.reg_debug = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[10]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[11]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[12]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[13]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[14]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[15]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[16]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[17]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[18]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[19]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[20]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[21]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[22]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[23]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[24]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[25]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[26]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[27]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[28]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[29]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[2]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[30]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[31]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[3]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[4]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[5]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[6]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[7]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[8]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_dpc_reg[9]  = 1'b0;
    UUT.coretop1.core.d.csr.reg_dscratch = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.csr.reg_mcause = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.csr.\reg_mcountinhibit_reg[0]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mcountinhibit_reg[2]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[10]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[11]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[12]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[13]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[14]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[15]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[16]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[17]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[18]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[19]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[20]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[21]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[22]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[23]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[24]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[25]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[26]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[27]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[28]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[29]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[2]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[30]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[31]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[3]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[4]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[5]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[6]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[7]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[8]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mepc_reg[9]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mie_reg[11]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mie_reg[3]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mie_reg[7]  = 1'b0;
    UUT.coretop1.core.d.csr.reg_mscratch = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.csr.reg_mstatus_mie = 1'b0;
    UUT.coretop1.core.d.csr.reg_mstatus_mpie = 1'b0;
    UUT.coretop1.core.d.csr.reg_mtval = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[0]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[10]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[11]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[12]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[13]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[14]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[15]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[16]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[17]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[18]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[19]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[20]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[21]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[22]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[23]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[24]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[25]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[26]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[27]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[28]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[29]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[2]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[30]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[31]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[3]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[4]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[5]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[6]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[7]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[8]  = 1'b0;
    UUT.coretop1.core.d.csr.\reg_mtvec_reg[9]  = 1'b0;
    UUT.coretop1.core.d.csr.reg_singleStepped = 1'b0;
    UUT.coretop1.core.d.csr.reg_wfi = 1'b0;
    UUT.coretop1.core.d.csr.small_ = 6'b000000;
    UUT.coretop1.core.d.csr.small_1 = 6'b000000;
    UUT.coretop1.core.d.csr_io_tval_REG = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.dec_reg_inst = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.dec_reg_pc = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.dec_reg_valid = 1'b0;
    UUT.coretop1.core.d.exe_alu_op1 = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.exe_reg_ctrl_alu_fun = 4'b0000;
    UUT.coretop1.core.d.exe_reg_ctrl_br_type = 4'b0000;
    UUT.coretop1.core.d.exe_reg_ctrl_csr_cmd = 3'b000;
    UUT.coretop1.core.d.exe_reg_ctrl_mem_fcn = 1'b0;
    UUT.coretop1.core.d.exe_reg_ctrl_mem_typ = 3'b000;
    UUT.coretop1.core.d.exe_reg_ctrl_mem_val = 1'b0;
    UUT.coretop1.core.d.exe_reg_ctrl_rf_wen = 1'b0;
    UUT.coretop1.core.d.exe_reg_ctrl_wb_sel = 2'b00;
    UUT.coretop1.core.d.\exe_reg_inst_reg[0]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[11]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[12]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[13]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[14]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[15]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[16]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[17]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[18]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[19]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[1]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[20]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[21]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[22]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[23]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[24]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[25]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[26]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[27]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[28]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[29]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[2]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[30]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[31]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[3]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[4]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[5]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_inst_reg[6]  = 1'b0;
    UUT.coretop1.core.d.exe_reg_pc = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.exe_reg_rs2_data = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.exe_reg_valid = 1'b0;
    UUT.coretop1.core.d.\exe_reg_wbaddr_reg[0]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_wbaddr_reg[1]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_wbaddr_reg[2]  = 1'b0;
    UUT.coretop1.core.d.\exe_reg_wbaddr_reg[3]  = 1'b0;
    UUT.coretop1.core.d.if_buffer_out.maybe_full = 1'b0;
    UUT.coretop1.core.d.if_buffer_out.\ram_data[0]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.if_pc_buffer_out.maybe_full = 1'b0;
    UUT.coretop1.core.d.if_pc_buffer_out.\ram[0]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.if_reg_killed = 1'b0;
    UUT.coretop1.core.d.if_reg_pc = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.lb_table_addr = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.lb_table_data = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.lb_table_valid = 1'b0;
    UUT.coretop1.core.d.mem_reg_alu_out = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.mem_reg_ctrl_csr_cmd = 3'b000;
    UUT.coretop1.core.d.mem_reg_ctrl_mem_fcn = 1'b0;
    UUT.coretop1.core.d.mem_reg_ctrl_mem_typ = 3'b000;
    UUT.coretop1.core.d.mem_reg_ctrl_mem_val = 1'b0;
    UUT.coretop1.core.d.mem_reg_ctrl_rf_wen = 1'b0;
    UUT.coretop1.core.d.mem_reg_ctrl_wb_sel = 2'b00;
    UUT.coretop1.core.d.mem_reg_inst = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.mem_reg_pc = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.mem_reg_rs2_data = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.mem_reg_valid = 1'b0;
    UUT.coretop1.core.d.mem_reg_wbaddr = 5'b00000;
    UUT.coretop1.core.d.mem_tval_inst_ma_REG = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.reg_interrupt_handled = 1'b0;
    UUT.coretop1.core.d.regfile.\regfile[0]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[10]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[11]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[12]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[13]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[14]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[15]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[16]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[17]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[18]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[19]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[1]  = 32'b01111111111111111111111111111111;
    UUT.coretop1.core.d.regfile.\regfile[20]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[21]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[22]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[23]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[24]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[25]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[26]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[27]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[28]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[29]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[2]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[30]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[31]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[3]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[4]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[5]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[6]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[7]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[8]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.regfile.\regfile[9]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.core.d.wb_reg_ctrl_rf_wen = 1'b1;
    UUT.coretop1.core.d.wb_reg_valid = 1'b0;
    UUT.coretop1.core.d.wb_reg_wbaddr = 5'b11111;
    UUT.coretop1.core.d.wb_reg_wbdata = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.cycle_counter = 4'b0000;
    UUT.coretop1.dmem.dmem_resp_bits_data = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.dmem_resp_valid = 1'b0;
    UUT.coretop1.dmem.\mem[0]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.\mem[10]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.\mem[11]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.\mem[12]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.\mem[13]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.\mem[14]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.\mem[15]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.\mem[1]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.\mem[2]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.\mem[3]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.\mem[4]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.\mem[5]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.\mem[6]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.\mem[7]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.\mem[8]  = 32'b00000000000000000000000000000000;
    UUT.coretop1.dmem.\mem[9]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.c.exe_inst_is_load = 1'b0;
    UUT.coretop2.core.c.exe_reg_illegal = 1'b0;
    UUT.coretop2.core.c.exe_reg_is_csr = 1'b0;
    UUT.coretop2.core.c.exe_reg_wbaddr = 5'b00000;
    UUT.coretop2.core.c.io_ctl_fencei_REG = 1'b0;
    UUT.coretop2.core.c.io_ctl_mem_exception_REG = 1'b0;
    UUT.coretop2.core.c.io_ctl_mem_exception_cause_REG = 1'b0;
    UUT.coretop2.core.c.io_ctl_mem_exception_cause_REG_1 = 1'b0;
    UUT.coretop2.core.d.brjmp_offset = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.csr.io_status_cease_r = 1'b0;
    UUT.coretop2.core.d.csr.large_ = 58'b0000000000000000000000000000000000000000000000000000000000;
    UUT.coretop2.core.d.csr.large_1 = 58'b0000000000000000000000000000000000000000000000000000000000;
    UUT.coretop2.core.d.csr.reg_dcsr_cause = 3'b000;
    UUT.coretop2.core.d.csr.reg_dcsr_ebreakm = 1'b0;
    UUT.coretop2.core.d.csr.reg_dcsr_step = 1'b0;
    UUT.coretop2.core.d.csr.reg_debug = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[10]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[11]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[12]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[13]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[14]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[15]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[16]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[17]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[18]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[19]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[20]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[21]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[22]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[23]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[24]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[25]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[26]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[27]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[28]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[29]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[2]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[30]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[31]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[3]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[4]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[5]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[6]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[7]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[8]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_dpc_reg[9]  = 1'b0;
    UUT.coretop2.core.d.csr.reg_dscratch = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.csr.reg_mcause = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.csr.\reg_mcountinhibit_reg[0]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mcountinhibit_reg[2]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[10]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[11]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[12]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[13]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[14]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[15]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[16]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[17]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[18]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[19]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[20]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[21]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[22]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[23]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[24]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[25]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[26]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[27]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[28]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[29]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[2]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[30]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[31]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[3]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[4]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[5]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[6]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[7]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[8]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mepc_reg[9]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mie_reg[11]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mie_reg[3]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mie_reg[7]  = 1'b0;
    UUT.coretop2.core.d.csr.reg_mscratch = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.csr.reg_mstatus_mie = 1'b0;
    UUT.coretop2.core.d.csr.reg_mstatus_mpie = 1'b0;
    UUT.coretop2.core.d.csr.reg_mtval = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[0]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[10]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[11]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[12]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[13]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[14]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[15]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[16]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[17]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[18]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[19]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[20]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[21]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[22]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[23]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[24]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[25]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[26]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[27]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[28]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[29]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[2]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[30]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[31]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[3]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[4]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[5]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[6]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[7]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[8]  = 1'b0;
    UUT.coretop2.core.d.csr.\reg_mtvec_reg[9]  = 1'b0;
    UUT.coretop2.core.d.csr.reg_singleStepped = 1'b0;
    UUT.coretop2.core.d.csr.reg_wfi = 1'b0;
    UUT.coretop2.core.d.csr.small_ = 6'b000000;
    UUT.coretop2.core.d.csr.small_1 = 6'b000000;
    UUT.coretop2.core.d.csr_io_tval_REG = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.dec_reg_inst = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.dec_reg_pc = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.dec_reg_valid = 1'b0;
    UUT.coretop2.core.d.exe_alu_op1 = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.exe_reg_ctrl_alu_fun = 4'b0000;
    UUT.coretop2.core.d.exe_reg_ctrl_br_type = 4'b0000;
    UUT.coretop2.core.d.exe_reg_ctrl_csr_cmd = 3'b000;
    UUT.coretop2.core.d.exe_reg_ctrl_mem_fcn = 1'b0;
    UUT.coretop2.core.d.exe_reg_ctrl_mem_typ = 3'b000;
    UUT.coretop2.core.d.exe_reg_ctrl_mem_val = 1'b0;
    UUT.coretop2.core.d.exe_reg_ctrl_rf_wen = 1'b0;
    UUT.coretop2.core.d.exe_reg_ctrl_wb_sel = 2'b00;
    UUT.coretop2.core.d.\exe_reg_inst_reg[0]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[11]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[12]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[13]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[14]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[15]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[16]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[17]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[18]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[19]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[1]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[20]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[21]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[22]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[23]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[24]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[25]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[26]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[27]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[28]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[29]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[2]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[30]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[31]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[3]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[4]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[5]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_inst_reg[6]  = 1'b0;
    UUT.coretop2.core.d.exe_reg_pc = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.exe_reg_rs2_data = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.exe_reg_valid = 1'b0;
    UUT.coretop2.core.d.\exe_reg_wbaddr_reg[0]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_wbaddr_reg[1]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_wbaddr_reg[2]  = 1'b0;
    UUT.coretop2.core.d.\exe_reg_wbaddr_reg[3]  = 1'b0;
    UUT.coretop2.core.d.if_buffer_out.maybe_full = 1'b0;
    UUT.coretop2.core.d.if_buffer_out.\ram_data[0]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.if_pc_buffer_out.maybe_full = 1'b0;
    UUT.coretop2.core.d.if_pc_buffer_out.\ram[0]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.if_reg_killed = 1'b0;
    UUT.coretop2.core.d.if_reg_pc = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.lb_table_addr = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.lb_table_data = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.lb_table_valid = 1'b0;
    UUT.coretop2.core.d.mem_reg_alu_out = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.mem_reg_ctrl_csr_cmd = 3'b000;
    UUT.coretop2.core.d.mem_reg_ctrl_mem_fcn = 1'b0;
    UUT.coretop2.core.d.mem_reg_ctrl_mem_typ = 3'b000;
    UUT.coretop2.core.d.mem_reg_ctrl_mem_val = 1'b0;
    UUT.coretop2.core.d.mem_reg_ctrl_rf_wen = 1'b0;
    UUT.coretop2.core.d.mem_reg_ctrl_wb_sel = 2'b00;
    UUT.coretop2.core.d.mem_reg_inst = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.mem_reg_pc = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.mem_reg_rs2_data = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.mem_reg_valid = 1'b0;
    UUT.coretop2.core.d.mem_reg_wbaddr = 5'b00000;
    UUT.coretop2.core.d.mem_tval_inst_ma_REG = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.reg_interrupt_handled = 1'b0;
    UUT.coretop2.core.d.regfile.\regfile[0]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[10]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[11]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[12]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[13]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[14]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[15]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[16]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[17]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[18]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[19]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[1]  = 32'b01000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[20]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[21]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[22]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[23]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[24]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[25]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[26]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[27]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[28]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[29]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[2]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[30]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[31]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[3]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[4]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[5]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[6]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[7]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[8]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.regfile.\regfile[9]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.core.d.wb_reg_ctrl_rf_wen = 1'b1;
    UUT.coretop2.core.d.wb_reg_valid = 1'b0;
    UUT.coretop2.core.d.wb_reg_wbaddr = 5'b11111;
    UUT.coretop2.core.d.wb_reg_wbdata = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.cycle_counter = 4'b0000;
    UUT.coretop2.dmem.dmem_resp_bits_data = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.dmem_resp_valid = 1'b0;
    UUT.coretop2.dmem.\mem[0]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.\mem[10]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.\mem[11]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.\mem[12]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.\mem[13]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.\mem[14]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.\mem[15]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.\mem[1]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.\mem[2]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.\mem[3]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.\mem[4]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.\mem[5]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.\mem[6]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.\mem[7]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.\mem[8]  = 32'b00000000000000000000000000000000;
    UUT.coretop2.dmem.\mem[9]  = 32'b00000000000000000000000000000000;
    UUT.counter = 4'b0000;
    UUT.init = 1'b1;
    UUT.reset = 1'b1;
    UUT.rs1 = 5'b00001;
    UUT.rd1 = 5'b00000;
    UUT.imm1 = 12'b101010101001;

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
