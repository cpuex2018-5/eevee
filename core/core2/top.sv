`timescale 1ns / 1ps

module subtop #(
    parameter MEMORY_SIZE = 262144
) (
    input clk,
    input rst,
    output logic [31:0] s_axi_awaddr,
    input s_axi_awready,
    output logic s_axi_awvalid,
    output logic [31:0] s_axi_wdata,
    output logic [3:0] s_axi_wstrb,
    output logic s_axi_wvalid,
    input s_axi_wready,
    input [1:0] s_axi_bresp,
    input s_axi_bvalid,
    output logic s_axi_bready,
    output logic [31:0] s_axi_araddr,
    output logic s_axi_arvalid,
    input s_axi_arready,
    input [31:0] s_axi_rdata,
    input [1:0] s_axi_rresp,
    input s_axi_rvalid,
    output logic s_axi_rready,
    output logic m_we,
    output logic [18:0] m_addr,
    input [31:0] m_r_data,
    output logic [31:0] m_w_data,
    output logic [14:0] b_addr,
    input [31:0] b_rdata
);

logic [31:0] b_stat;
logic [9:0] b_stage;
logic [1:0] b_resp;

logic b_flag1;
logic b_flag2;

(* mark_debug = "true" *) logic [31:0] e_program_counter;
(* mark_debug = "true" *) logic signed [31:0] e_registers[0:31];
(* mark_debug = "true" *) logic [31:0] f_registers[0:31];
logic [31:0] reg_rs1, reg_rs2, reg_rd;
logic [31:0] freg_rs1, freg_rs2, freg_rd;

logic [6:0] e_funct7;
logic [6:0] e_opcode;
logic [2:0] e_funct;
logic [4:0] e_rd, e_rs1, e_rs2;

logic [31:0] e_imm_sham;
logic [31:0] e_imm_i;
logic [31:0] e_imm_s;
logic [31:0] e_imm_u;
logic [31:0] e_imm_b;
logic [31:0] e_imm_j;

logic [3:0] e_wait;

logic [31:0] fadd_x1;
logic [31:0] fadd_x2;
logic [31:0] fadd_y;
logic [31:0] fsub_x1;
logic [31:0] fsub_x2;
logic [31:0] fsub_y;
logic [31:0] fmul_x1;
logic [31:0] fmul_x2;
logic [31:0] fmul_y;
logic [31:0] fdiv_x1;
logic [31:0] fdiv_x2;
logic [31:0] fdiv_y;
logic [31:0] fsqrt_x;
logic [31:0] fsqrt_y;
logic [31:0] feq_x1;
logic [31:0] feq_x2;
logic feq_y;
logic [31:0] flt_x1;
logic [31:0] flt_x2;
logic flt_y;
logic [31:0] fle_x1;
logic [31:0] fle_x2;
logic fle_y;
logic [31:0] fneg_x;
logic [31:0] fneg_y;
logic [31:0] fabs_x;
logic [31:0] fabs_y;
logic [31:0] finv_x;
logic [31:0] finv_y;

(* mark_debug = "true" *) logic [39:0] global_counter;

logic boot_stage;
logic main_stage;
logic fetch_stage;
logic set_stage;
logic exe_stage;
logic out_stage;

localparam OP_OP    = 7'b0110011;
localparam BRANCH   = 7'b1100011;
localparam OP_JALR  = 7'b1100111;
localparam OP_JAL   = 7'b1101111;
localparam OP_AUIPC = 7'b0010111;
localparam OP_LUI   = 7'b0110111;
localparam OP_LOAD  = 7'b0000011;
localparam LOAD_FP  = 7'b0000111;
localparam OP_STORE = 7'b0100011;
localparam STORE_FP = 7'b0100111;
localparam OP_FP    = 7'b1010011;
localparam OP_INOUT = 7'b1111111;
localparam OP_IMM   = 7'b0010011;

assign e_funct7 = b_rdata[31:25];
assign e_opcode = b_rdata[6:0];
assign e_funct = b_rdata[14:12];
assign e_rd = b_rdata[11:7];
assign e_rs1 = b_rdata[19:15];
assign e_rs2 = b_rdata[24:20];
assign e_imm_sham = {27'd0, b_rdata[24:20]};
assign e_imm_i = b_rdata[31]?{20'd1048575,b_rdata[31:20]}:{20'd0,b_rdata[31:20]};
assign e_imm_s = b_rdata[31]?{20'd1048575, b_rdata[31:25],b_rdata[11:7]}:{20'd0, b_rdata[31:25],b_rdata[11:7]};
assign e_imm_u = {b_rdata[31:12],12'd0};
assign e_imm_b = b_rdata[31]?{19'd524287, b_rdata[31],b_rdata[7],b_rdata[30:25],b_rdata[11:8],1'b0}:{19'd0, b_rdata[31],b_rdata[7],b_rdata[30:25],b_rdata[11:8],1'b0};
assign e_imm_j = b_rdata[31]?{11'd2047,b_rdata[31],b_rdata[19:12],b_rdata[20],b_rdata[30:21],1'b0}:{11'd0, b_rdata[31],b_rdata[19:12],b_rdata[20],b_rdata[30:21],1'b0};

fadd fadd(.x1(fadd_x1),
          .x2(fadd_x2),
          .y(fadd_y));
fsub fsub(.x1(fsub_x1),
          .x2(fsub_x2),
          .y(fsub_y));
fmul fmul(.x1(fmul_x1),
          .x2(fmul_x2),
          .y(fmul_y));
fdiv fdiv(.x1(fdiv_x1),
          .x2(fdiv_x2),
          .y(fdiv_y));
fsqrt fsqrt(.x(fsqrt_x),
          .y(fsqrt_y));
feq feq(.x1(feq_x1),
        .x2(feq_x2),
        .y(feq_y));
flt flt(.x1(flt_x1),
        .x2(flt_x2),
        .y(flt_y));
fle fle(.x1(fle_x1),
        .x2(fle_x2),
        .y(fle_y));
fneg fneg(.x(fneg_x),
          .y(fneg_y));
fabs fabs(.x(fabs_x),
          .y(fabs_y));
finv finv(.x(finv_x),
          .y(finv_y));
          
initial begin
    boot_stage = 0;
    main_stage = 0;
    m_we = 0;
end

always @(posedge clk) begin
    if (!rst) begin
        e_registers[0] <= 0;
        e_registers[2] <= MEMORY_SIZE*4;

        s_axi_araddr <= 0;
        s_axi_arvalid <= 0;
        s_axi_awaddr <= 0;
        s_axi_awvalid <= 0;
        s_axi_bready <= 0;
        s_axi_rready <= 0;
        s_axi_wdata <= 0;
        s_axi_wstrb <= 0;
        s_axi_wvalid <= 0;
        b_stage <= 0;
        b_addr <= 1;

        global_counter <= 0;
        e_program_counter <= 0;
        e_wait <= 0;

        boot_stage <= 1;
        main_stage <= 0;

        m_we <= 0;
    end else if (boot_stage) begin
        boot_stage <= 0;
        main_stage <= 1;
        fetch_stage <= 1;
    end else if (main_stage) begin
        if (fetch_stage) begin
            if (e_wait == 0) begin
                if (b_addr == e_program_counter/4) begin
                    main_stage <= 0;
                end
                b_addr <= e_program_counter/4;
                e_wait <= 1;
            end else if (e_wait == 1) begin
                e_wait <= 2;
            end else begin
                e_wait <= 0;
                fetch_stage <= 0;
                set_stage <= 1;
                global_counter <= global_counter + 1;
            end
        end else if (set_stage) begin
            reg_rs1 <= e_registers[e_rs1];
            reg_rs2 <= e_registers[e_rs2];
            reg_rd <= e_registers[e_rd];
            freg_rs1 <= f_registers[e_rs1];
            freg_rs2 <= f_registers[e_rs2];
            freg_rd <= f_registers[e_rd];
            set_stage <= 0;
            exe_stage <= 1;
        end else if (exe_stage) begin
            if (e_opcode == OP_IMM) begin //op_imm
                if (e_funct == 3'b000) begin //addi
                    reg_rd <= reg_rs1 + e_imm_i;
                    e_program_counter <= e_program_counter+4;
                    exe_stage <= 0;
                    out_stage <= 1;
                end else if (e_funct == 3'b001) begin //slli
                    reg_rd <= reg_rs1 << e_imm_sham;
                    e_program_counter <= e_program_counter+4;
                    exe_stage <= 0;
                    out_stage <= 1;
                end else if (e_funct == 3'b100) begin //xori
                    reg_rd <= reg_rs1 ^ e_imm_i;
                    e_program_counter <= e_program_counter+4;
                    exe_stage <= 0;
                    out_stage <= 1;
                end else if (e_funct == 3'b101) begin
                    if (e_funct7 == 7'b0100000) begin //srai
                        reg_rd <= reg_rs1 >>> e_imm_sham;
                        e_program_counter <= e_program_counter+4;
                        exe_stage <= 0;
                        out_stage <= 1;
                    end
                end else if (e_funct == 3'b111) begin //andi
                    reg_rd <= reg_rs1&e_imm_i;
                    e_program_counter <= e_program_counter+4;
                    exe_stage <= 0;
                    out_stage <= 1;
                end
            end else if (e_opcode == OP_LUI) begin //lui
                reg_rd <= e_imm_u;
                e_program_counter <= e_program_counter+4;
                exe_stage <= 0;
                out_stage <= 1;
            end else if (e_opcode == OP_AUIPC) begin //auipc
                reg_rd <= e_program_counter + e_imm_u;
                e_program_counter <= e_program_counter+4;
                exe_stage <= 0;
                out_stage <= 1;
            end else if (e_opcode == OP_JAL) begin //jal
                reg_rd <= e_program_counter + 4;
                e_program_counter <= e_program_counter + e_imm_j;
                exe_stage <= 0;
                out_stage <= 1;
            end else if (e_opcode == OP_JALR) begin
                if (e_funct == 3'b000) begin //jalr
                    reg_rd <= e_program_counter + 4;
                    e_program_counter <= reg_rs1 + e_imm_i;
                    exe_stage <= 0;
                    out_stage <= 1;
                end
            end else if (e_opcode == BRANCH) begin //branch
                if (e_funct == 3'b000) begin //beq
                    if (reg_rs1 == reg_rs2) e_program_counter <= e_program_counter + e_imm_b;
                    else e_program_counter <= e_program_counter + 4;
                    exe_stage <= 0;
                    out_stage <= 1;
                end else if (e_funct == 3'b001) begin //bne
                    if (reg_rs1 != reg_rs2) e_program_counter <= e_program_counter + e_imm_b;
                    else e_program_counter <= e_program_counter + 4;
                    exe_stage <= 0;
                    out_stage <= 1;
                end else if (e_funct == 3'b100) begin //blt
                    if (reg_rs1 < reg_rs2) e_program_counter <= e_program_counter + e_imm_b;
                    else e_program_counter <= e_program_counter + 4;
                    exe_stage <= 0;
                    out_stage <= 1;
                end else if (e_funct == 3'b101) begin //bge
                    if (reg_rs1 >= reg_rs2) e_program_counter <= e_program_counter + e_imm_b;
                    else e_program_counter <= e_program_counter + 4;
                    exe_stage <= 0;
                    out_stage <= 1;
                end 
            end else if (e_opcode == OP_LOAD) begin //load
                if (e_funct == 3'b000) begin //lb
                end else if (e_funct == 3'b001) begin //lh
                end else if (e_funct == 3'b010) begin //lw
                    if (e_wait == 0) begin
                        m_addr <= (reg_rs1 + e_imm_i)>>2;
                        e_wait <= 1;
                    end else if (e_wait == 1) begin
                        e_wait <= 2;
                    end else if (e_wait == 2) begin
                        e_wait <= 3;
                    end else if (e_wait == 3) begin
                        reg_rd <= m_r_data;
                        e_wait <= 0;
                        e_program_counter <= e_program_counter + 4;
                        exe_stage <= 0;
                        out_stage <= 1;
                    end
                end 
            end else if (e_opcode == OP_STORE) begin //store
                if (e_funct == 3'b010) begin //sw
                    if (e_wait == 0) begin
                        m_addr <= (reg_rs1 + e_imm_s)>>2;
                        m_w_data <= reg_rs2;
                        e_wait <= 1;
                    end else if (e_wait == 1) begin
                        m_we <= 1;
                        e_wait <= 2;
                    end else if (e_wait == 2) begin
                        m_we <= 0;
                        e_wait <= 0;
                        e_program_counter <= e_program_counter + 4;
                        exe_stage <= 0;
                        out_stage <= 1;
                    end
                end
            end else if (e_opcode == OP_OP) begin //op
                if (e_funct == 3'b000) begin
                    if (e_funct7 == 7'b0000000) begin //add
                        reg_rd <= reg_rs1+reg_rs2;
                        e_program_counter <= e_program_counter + 4;
                        exe_stage <= 0;
                        out_stage <= 1;
                    end else if (e_funct7 == 7'b0100000) begin //sub
                        reg_rd <= reg_rs1 - reg_rs2;
                        e_program_counter <= e_program_counter + 4;
                        exe_stage <= 0;
                        out_stage <= 1;
                    end
                end else if (e_funct == 3'b100) begin //xor
                    reg_rd <= reg_rs1 ^ reg_rs2;
                    e_program_counter <= e_program_counter + 4;
                    exe_stage <= 0;
                    out_stage <= 1;
                end
            end else if (e_opcode == LOAD_FP) begin //flw
                if (e_funct == 3'b010) begin
                    if (e_wait == 0) begin
                        m_addr <= (reg_rs1 + e_imm_i)>>2;
                        e_wait <= 1;
                    end else if (e_wait == 1) begin
                        e_wait <= 2;
                    end else if (e_wait == 2) begin
                        e_wait <= 3;
                    end else if (e_wait == 3) begin
                        freg_rd <= m_r_data;
                        e_wait <= 0;
                        e_program_counter <= e_program_counter + 4;
                        exe_stage <= 0;
                        out_stage <= 1;
                    end
                end
            end else if (e_opcode == STORE_FP) begin //fsw
                if (e_wait == 0) begin
                    m_addr <= (reg_rs1 + e_imm_s)>>2;
                    m_w_data <= freg_rs2;
                    e_wait <= 1;
                end else if (e_wait == 1) begin
                    m_we <= 1;
                    e_wait <= 2;
                end else if (e_wait == 2) begin
                    m_we <= 0;
                    e_wait <= 0;
                    e_program_counter <= e_program_counter + 4;
                    exe_stage <= 0;
                    out_stage <= 1;
                end
            end else if (e_opcode == OP_FP) begin //float
                if (e_funct7 == 7'b0000000) begin //fadd
                    if (e_wait == 0) begin
                        e_wait <= 1;
                        fadd_x1 <= freg_rs1;
                        fadd_x2 <= freg_rs2;
                    end else if (e_wait == 1) begin
                        e_wait <= 0;
                        freg_rd <= fadd_y;
                        e_program_counter <= e_program_counter + 4;
                        exe_stage <= 0;
                        out_stage <= 1;
                    end
                end else if (e_funct7 == 7'b0000100) begin //fsub
                    if (e_wait == 0) begin
                        e_wait <= 1;
                        fsub_x1 <= freg_rs1;
                        fsub_x2 <= freg_rs2;
                    end else if (e_wait == 1) begin
                        e_wait <= 0;
                        freg_rd <= fsub_y;
                        e_program_counter <= e_program_counter + 4;
                        exe_stage <= 0;
                        out_stage <= 1;
                    end
                end else if (e_funct7 == 7'b0001000) begin //fmul
                    if (e_wait == 0) begin
                        e_wait <= 1;
                        fmul_x1 <= freg_rs1;
                        fmul_x2 <= freg_rs2;
                    end else if (e_wait == 1) begin
                        e_wait <= 0;
                        freg_rd <= fmul_y;
                        e_program_counter <= e_program_counter + 4;
                        exe_stage <= 0;
                        out_stage <= 1;
                    end
                end else if (e_funct7 == 7'b0001100) begin //fdiv
                    if (e_wait == 0) begin
                        e_wait <= 1;
                        fdiv_x1 <= freg_rs1;
                        fdiv_x2 <= freg_rs2;
                    end else if (e_wait == 1) begin
                        e_wait <= 0;
                        freg_rd <= fdiv_y;
                        e_program_counter <= e_program_counter + 4;
                        exe_stage <= 0;
                        out_stage <= 1;
                    end
                end else if (e_funct7 == 7'b0101100) begin //fsqrt
                    if (e_wait == 0) begin
                        e_wait <= 1;
                        fsqrt_x <= freg_rs1;
                    end else if (e_wait == 1) begin
                        e_wait <= 0;
                        freg_rd <= fsqrt_y;
                        e_program_counter <= e_program_counter + 4;
                        exe_stage <= 0;
                        out_stage <= 1;
                    end
                end else if (e_funct7 == 7'b1010000) begin
                    if (e_funct == 3'b010) begin //feq
                        if (e_wait == 0) begin
                            e_wait <= 1;
                            feq_x1 <= freg_rs1;
                            feq_x2 <= freg_rs2;
                        end else if (e_wait == 1) begin
                            e_wait <= 0;
                            reg_rd <= feq_y;
                            e_program_counter <= e_program_counter + 4;
                            exe_stage <= 0;
                            out_stage <= 1;
                        end
                    end else if (e_funct == 3'b001) begin //flt
                        if (e_wait == 0) begin
                            e_wait <= 1;
                            flt_x1 <= freg_rs1;
                            flt_x2 <= freg_rs2;
                        end else if (e_wait == 1) begin
                            e_wait <= 0;
                            reg_rd <= flt_y;
                            e_program_counter <= e_program_counter + 4;
                            exe_stage <= 0;
                            out_stage <= 1;
                        end
                    end else if (e_funct == 3'b000) begin //fle
                        if (e_wait == 0) begin
                            e_wait <= 1;
                            fle_x1 <= freg_rs1;
                            fle_x2 <= freg_rs2;
                        end else if (e_wait == 1) begin
                            e_wait <= 0;
                            reg_rd <= fle_y;
                            e_program_counter <= e_program_counter + 4;
                            exe_stage <= 0;
                            out_stage <= 1;
                        end
                    end
                end else if (e_funct7 == 7'b0010000) begin //origin
                    if (e_funct == 3'b000) begin //fmv
                        freg_rd <= freg_rs1;
                        e_program_counter <= e_program_counter + 4;
                        exe_stage <= 0;
                        out_stage <= 1;
                    end else if (e_funct == 3'b001) begin //fneg
                        if (e_wait == 0) begin
                            e_wait <= 1;
                            fneg_x <= freg_rs1;
                        end else if (e_wait == 1) begin
                            e_wait <= 0;
                            freg_rd <= fneg_y;
                            e_program_counter <= e_program_counter + 4;
                            exe_stage <= 0;
                            out_stage <= 1;
                        end
                    end else if (e_funct == 3'b010) begin //fabs
                        if (e_wait == 0) begin
                            e_wait <= 1;
                            fabs_x <= freg_rs1;
                        end else if (e_wait == 1) begin
                            e_wait <= 0;
                            freg_rd <= fabs_y;
                            e_program_counter <= e_program_counter + 4;
                            exe_stage <= 0;
                            out_stage <= 1;
                        end
                    end else if (e_funct == 3'b011) begin //finv
                        if (e_wait == 0) begin
                            e_wait <= 1;
                            finv_x <= freg_rs1;
                        end else if (e_wait == 1) begin
                            e_wait <= 0;
                            freg_rd <= finv_y;
                            e_program_counter <= e_program_counter + 4;
                            exe_stage <= 0;
                            out_stage <= 1;
                        end
                    end
                end
            end else if (e_opcode == OP_INOUT) begin //inout
                if (e_imm_u == 0) begin //out
                    if (e_wait == 0) begin
                        b_stage <= 5;
                        e_wait <= 1;
                    end else if (b_stage == 5) begin
                        s_axi_arvalid <= 1;
                        s_axi_araddr <= 8;
                        b_stage <= 6;
                    end else if (b_stage == 6) begin
                        if (s_axi_arready) begin
                            s_axi_rready <= 1;
                            s_axi_arvalid <= 0;
                            b_stage <= 7;
                        end
                    end else if (b_stage == 7) begin
                        if (s_axi_rvalid) begin
                            s_axi_rready <= 0;
                            b_resp <= s_axi_rresp; 
                            b_stat <= s_axi_rdata;
                            b_stage <= 8;
                        end
                    end else if (b_stage == 8) begin
                        if (b_stat[3] == 0) begin
                            b_flag1 <= 0;
                            b_flag2 <= 0;
                            s_axi_awvalid <= 1;
                            s_axi_awaddr <= 4;
                            s_axi_wvalid <= 1;
                            s_axi_wdata <= reg_rd;
                            //s_axi_wdata <= m_r_data;
                            s_axi_wstrb <= 1;
                            b_stage <= 9;
                        end else begin
                            s_axi_arvalid <= 1;
                            s_axi_araddr <= 8;
                            b_stage <= 6;
                        end
                    end else if (b_stage == 9) begin
                        if (b_flag1 == 0 && s_axi_awready) begin
                            s_axi_awvalid <= 0;
                            b_flag1 <= 1;
                        end
                        if (b_flag2 == 0 && s_axi_wready) begin
                            s_axi_wvalid <= 0;
                            b_flag2 <= 1;
                        end
                        if (b_flag1 && b_flag2) begin
                            s_axi_bready <= 1;
                            b_stage <= 10;
                        end
                    end else if (b_stage == 10) begin
                        if (s_axi_bvalid) begin
                            s_axi_bready <= 0;
                            exe_stage <= 0;
                            out_stage <= 1;
                            e_wait <= 0;
                            e_program_counter <= e_program_counter + 4;
                        end
                    end
                end else begin // in
                    if (e_wait == 0) begin
                        b_stage <= 0;
                        e_wait <= 1;
                    end else if (b_stage == 0) begin
                        s_axi_arvalid <= 1;
                        s_axi_araddr <= 8;
                        b_stage <= 1;
                    end else if (b_stage == 1) begin
                        if (s_axi_arready) begin
                            s_axi_arvalid <= 0;
                            s_axi_rready <= 1;
                            b_stage <= 2;
                        end
                    end else if (b_stage == 2) begin
                        if (s_axi_rvalid) begin
                            s_axi_rready <= 0;
                            b_resp <= s_axi_rresp; 
                            b_stat <= s_axi_rdata;
                            b_stage <= 3;
                        end
                    end else if (b_stage == 3) begin
                        if (b_stat[0] == 1) begin
                            s_axi_arvalid <= 1;
                            s_axi_araddr <= 0;
                            b_stage <= 4;       
                        end else begin
                            b_stage <= 0;
                        end
                    end else if (b_stage == 4) begin
                        if (s_axi_arready) begin
                            s_axi_arvalid <= 0;
                            s_axi_rready <= 1;
                            b_stage <= 5;
                        end
                    end else if (b_stage == 5) begin
                        if (s_axi_rvalid) begin
                            s_axi_rready <= 0;
                            reg_rd <= {24'd0, s_axi_rdata[7:0]};
                            b_stage <= 6;
                        end
                    end else if (b_stage == 6) begin
                        exe_stage <= 0;
                        out_stage <= 1;
                        e_wait <= 0;
                        e_program_counter <= e_program_counter + 4;
                    end
                end
            end
        end else if (out_stage) begin
            e_registers[e_rd] <= reg_rd;
            f_registers[e_rd] <= freg_rd;
            out_stage <= 0;
            fetch_stage <= 1;
        end
        e_registers[0] <= 0;
    end
end

endmodule

