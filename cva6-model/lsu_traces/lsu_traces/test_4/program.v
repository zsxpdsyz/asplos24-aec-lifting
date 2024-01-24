

    module cva6_lsu_model_tb ();
        parameter PHASE_TIME = 10;
        parameter CLK_CYCLE_TIME = PHASE_TIME * 2;
        parameter IMEM_INTERVAL = 20;
        parameter SIM_CYCLE = 25; // 100000000;
        parameter SIM_TIME = SIM_CYCLE * PHASE_TIME * 2;

        reg [31:0] 			CLK_CYCLE;
        reg 				clk;
        reg 				reset;
        
        initial begin
            clk = 1;
            forever #PHASE_TIME clk = ~clk;
        end

        initial begin
            reset = 1;
            // #IMEM_INTERVAL reset = 1;
            #IMEM_INTERVAL 
            reset = 0;
            #IMEM_INTERVAL 
            #IMEM_INTERVAL 
            reset = 1;
        end

        initial begin
            CLK_CYCLE = 32'h0;
        end
        
        always @(posedge clk) begin
            CLK_CYCLE <= CLK_CYCLE + 1;
        end

        initial begin
            $dumpfile("cva6_lsu_model_tb_wave_pipeline.vcd");
            $dumpvars(0, cva6_lsu_model_tb);
        end

        initial begin
            #IMEM_INTERVAL;
            #SIM_TIME;
            $finish;
        end

        integer seed = 464;

    reg [31:0] tb_io_instr_i;
    wire [31:0] de_io_instr_i;
    assign de_io_instr_i = tb_io_instr_i;
    reg tb_io_is_load_i;
    wire de_io_is_load_i;
    assign de_io_is_load_i = tb_io_is_load_i;
    reg tb_io_instr_valid_i;
    wire de_io_instr_valid_i;
    assign de_io_instr_valid_i = tb_io_instr_valid_i;


    reg tb_io_store_mem_resp_i;
    wire de_io_store_mem_resp_i;
    assign de_io_store_mem_resp_i = tb_io_store_mem_resp_i;
    reg tb_io_load_mem_resp_i;
    wire de_io_load_mem_resp_i;
    assign de_io_load_mem_resp_i = tb_io_load_mem_resp_i;

    wire de_io_ready_o_shim;
    wire de_io_ready_o_model;

    cva6_lsu_shim shim_i (
        .clk_i(clk),
        .rst_ni(reset),
        .instr_i(de_io_instr_i),
        .is_load_i(de_io_is_load_i),
        .instr_valid_i(de_io_instr_valid_i),
        .store_mem_resp_i(de_io_store_mem_resp_i),
        .load_mem_resp_i(de_io_load_mem_resp_i),
        .ready_o(de_io_ready_o_shim)
    );

    cva6_lsu_model model_i (
        .clk_i(clk),
        .rst_ni(reset),
        .instr_i(de_io_instr_i),
        .is_load_i(de_io_is_load_i),
        .instr_valid_i(de_io_instr_valid_i),
        .store_mem_resp_i(de_io_store_mem_resp_i),
        .load_mem_resp_i(de_io_load_mem_resp_i),
        .ready_o(de_io_ready_o_model)
    );

    
    reg load_state;
    reg store_state;

    reg choice;
    reg [1:0] wait_ctr;

    reg [19:0] instr_field;
    reg [31:0] addr;
    integer i;

    initial begin
        #20;
            load_state = 0;
            store_state = 0;
            choice = 0;
            wait_ctr = 0;

            tb_io_instr_i = 32'd0;
            tb_io_instr_valid_i = 0;
            tb_io_load_mem_resp_i = 0;
            tb_io_store_mem_resp_i = 0;

        #40;
    
    
        for (i = 0; i < 30; i = i + 1) begin
            
            choice = $random(seed);
            addr = 12'hcad; // $random(seed) % 2;
            
            if (wait_ctr == 0) begin
                choice = (de_io_ready_o_shim || load_state) ? choice : 0;
                if (choice) begin
                    if (!load_state && de_io_ready_o_shim) begin
                        $display("load @ addr: %h", addr);
                        tb_io_instr_i = addr;
                        tb_io_is_load_i = 1;
                        tb_io_instr_valid_i = 1;
                        load_state = 1;
                        wait_ctr = 3;
                    end else begin
                        tb_io_load_mem_resp_i = 1;
                        tb_io_instr_valid_i = 0;
                        load_state = 0;
                        wait_ctr = 3;
                    end
                end else begin
                    if (!store_state && de_io_ready_o_shim) begin
                        // if (!load_state) begin
                            $display("store @ addr: %h", addr);
                            tb_io_instr_i = addr;
                            tb_io_is_load_i = 0;
                            tb_io_instr_valid_i = 1;
                            store_state = 1;
                            wait_ctr = 3;
                        // end
                    end else begin
                        tb_io_store_mem_resp_i = 1;
                        tb_io_instr_valid_i = 0;
                        store_state = 0;
                        wait_ctr = 3;
                    end
                end
            end else begin
                wait_ctr = wait_ctr - 1;
                tb_io_instr_valid_i = 0;
                tb_io_instr_i = 32'd0;
                tb_io_load_mem_resp_i = 0;
                tb_io_store_mem_resp_i = 0;
            end

            #20;
        end

        wait_ctr = wait_ctr - 1;
        tb_io_instr_valid_i = 0;
        tb_io_instr_i = 32'd0;
        tb_io_load_mem_resp_i = 0;
        tb_io_store_mem_resp_i = 0;
    end
    
    endmodule
    

    