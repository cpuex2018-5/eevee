`timescale 1ns / 1ps

module subtop #(
    parameter CODE_SIZE = 32767,
    parameter MEMORY_SIZE = 262143
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

logic [6:0] e_funct7;
logic [6:0] e_opcode;
logic [2:0] e_funct;
logic [4:0] e_rd, e_rs1, e_rs2;

logic [31:0] e_imm_sham;
logic [31:0] e_imm_i;
logic [31:0] e_imm_s;
logic [31:0] e_imm_u;
logic [31:0] e_imm_b;

logic [3:0] e_wait;

logic [31:0] s_axi_w_buf;
logic [31:0] s_axi_r_buf;

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

localparam LOAD_FP  = 7'b0000111;
localparam STORE_FP = 7'b0100111;
localparam OP_FP    = 7'b1010011;
localparam OP_INOUT = 7'b1111111;

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
        e_registers[1] <= 0;
        e_registers[2] <= MEMORY_SIZE*4;
        e_registers[3] <= 0;
        e_registers[4] <= 0;
        e_registers[5] <= 0;
        e_registers[6] <= 0;
        e_registers[7] <= 0;
        e_registers[8] <= 0;
        e_registers[9] <= 0;
        e_registers[10] <= 0;
        e_registers[11] <= 0;
        e_registers[12] <= 0;
        e_registers[13] <= 0;
        e_registers[14] <= 0;
        e_registers[15] <= 0;
        e_registers[16] <= 0;
        e_registers[17] <= 0;
        e_registers[18] <= 0;
        e_registers[19] <= 0;
        e_registers[20] <= 0;
        e_registers[21] <= 0;
        e_registers[22] <= 0;
        e_registers[23] <= 0;
        e_registers[24] <= 0;
        e_registers[25] <= 0;
        e_registers[26] <= 0;
        e_registers[27] <= 0;
        e_registers[28] <= 0;
        e_registers[29] <= 0;
        e_registers[30] <= 0;
        e_registers[31] <= 0;
        
        f_registers[0] <= 0;
        f_registers[1] <= 0;
        f_registers[2] <= 0;
        f_registers[3] <= 0;
        f_registers[4] <= 0;
        f_registers[5] <= 0;
        f_registers[6] <= 0;
        f_registers[7] <= 0;
        f_registers[8] <= 0;
        f_registers[9] <= 0;
        f_registers[10] <= 0;
        f_registers[11] <= 0;
        f_registers[12] <= 0;
        f_registers[13] <= 0;
        f_registers[14] <= 0;
        f_registers[15] <= 0;
        f_registers[16] <= 0;
        f_registers[17] <= 0;
        f_registers[18] <= 0;
        f_registers[19] <= 0;
        f_registers[20] <= 0;
        f_registers[21] <= 0;
        f_registers[22] <= 0;
        f_registers[23] <= 0;
        f_registers[24] <= 0;
        f_registers[25] <= 0;
        f_registers[26] <= 0;
        f_registers[27] <= 0;
        f_registers[28] <= 0;
        f_registers[29] <= 0;
        f_registers[30] <= 0;
        f_registers[31] <= 0;


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
                global_counter <= global_counter + 1;
            end
        end else begin
            if (e_opcode == 7'b0010011) begin //op_imm
                if (e_funct == 3'b000) begin //addi
                    e_registers[e_rd] <= e_registers[e_rs1] + e_imm_i;
                    e_program_counter <= e_program_counter+4;
                    fetch_stage <= 1;
                end else if (e_funct == 3'b001) begin //slli
                    e_registers[e_rd] <= e_registers[e_rs1] << e_imm_sham;
                    e_program_counter <= e_program_counter+4;
                    fetch_stage <= 1;
                end else if (e_funct == 3'b100) begin //xori
                    e_registers[e_rd] <= e_registers[e_rs1] ^ e_imm_i;
                    e_program_counter <= e_program_counter+4;
                    fetch_stage <= 1;
                end else if (e_funct == 3'b101) begin
                    if (e_funct7 == 7'b0100000) begin //srai
                        e_registers[e_rd] <= e_registers[e_rs1] >>> e_imm_sham;
                        e_program_counter <= e_program_counter+4;
                        fetch_stage <= 1;
                    end
                end else if (e_funct == 3'b111) begin //andi
                    e_registers[e_rd] <= e_registers[e_rs1]&e_imm_i;
                    e_program_counter <= e_program_counter+4;
                    fetch_stage <= 1;
                end
            end else if (e_opcode == 7'b0110111) begin //lui
                e_registers[e_rd] <= e_imm_u;
                e_program_counter <= e_program_counter+4;
                fetch_stage <= 1;
            end else if (e_opcode == 7'b0010111) begin //auipc
                e_registers[e_rd] <= e_program_counter + e_imm_u;
                e_program_counter <= e_program_counter+4;
                fetch_stage <= 1;
            end else if (e_opcode == 7'b1101111) begin //jal
                e_registers[e_rd] <= e_program_counter + 4;
                e_program_counter <= e_program_counter + (b_rdata[31]?{11'd2047,b_rdata[31],b_rdata[19:12],b_rdata[20],b_rdata[30:21],1'b0}:{11'd0, b_rdata[31],b_rdata[19:12],b_rdata[20],b_rdata[30:21],1'b0});
                fetch_stage <= 1;
            end else if (e_opcode == 7'b1100111) begin
                if (e_funct == 3'b000) begin //jalr
                    e_registers[e_rd] <= e_program_counter + 4;
                    e_program_counter <= e_registers[e_rs1] + e_imm_i;
                    fetch_stage <= 1;
                end
            end else if (e_opcode == 7'b1100011) begin //branch
                if (e_funct == 3'b000) begin //beq
                    if (e_registers[e_rs1] == e_registers[e_rs2]) e_program_counter <= e_program_counter + e_imm_b;
                    else e_program_counter <= e_program_counter + 4;
                    fetch_stage <= 1;
                end else if (e_funct == 3'b001) begin //bne
                    if (e_registers[e_rs1] != e_registers[e_rs2]) e_program_counter <= e_program_counter + e_imm_b;
                    else e_program_counter <= e_program_counter + 4;
                    fetch_stage <= 1;
                end else if (e_funct == 3'b100) begin //blt
                    if (e_registers[e_rs1] < e_registers[e_rs2]) e_program_counter <= e_program_counter + e_imm_b;
                    else e_program_counter <= e_program_counter + 4;
                    fetch_stage <= 1;
                end else if (e_funct == 3'b101) begin //bge
                    if (e_registers[e_rs1] >= e_registers[e_rs2]) e_program_counter <= e_program_counter + e_imm_b;
                    else e_program_counter <= e_program_counter + 4;
                    fetch_stage <= 1;
                end 
            end else if (e_opcode == 7'b0000011) begin //load
                if (e_funct == 3'b000) begin //lb
                end else if (e_funct == 3'b001) begin //lh
                end else if (e_funct == 3'b010) begin //lw
                    if (e_wait == 0) begin
                        m_addr <= (e_registers[e_rs1] + e_imm_i)>>2;
                        e_wait <= 1;
                    end else if (e_wait == 1) begin
                        e_wait <= 2;
                    end else if (e_wait == 2) begin
                        e_wait <= 3;
                    end else if (e_wait == 3) begin
                        e_registers[e_rd] <= m_r_data;
                        e_wait <= 0;
                        e_program_counter <= e_program_counter + 4;
                        fetch_stage <= 1;
                    end
                end 
            end else if (e_opcode == 7'b0100011) begin //store
                if (e_funct == 3'b010) begin //sw
                    if (e_wait == 0) begin
                        m_addr <= (e_registers[e_rs1] + e_imm_s)>>2;
                        m_w_data <= e_registers[e_rs2];
                        e_wait <= 1;
                    end else if (e_wait == 1) begin
                        m_we <= 1;
                        e_wait <= 2;
                    end else if (e_wait == 2) begin
                        m_we <= 0;
                        e_wait <= 0;
                        e_program_counter <= e_program_counter + 4;
                        fetch_stage <= 1;
                    end
                end
            end else if (e_opcode == 7'b0110011) begin //op
                if (e_funct == 3'b000) begin
                    if (e_funct7 == 7'b0000000) begin //add
                        e_registers[e_rd] <= e_registers[e_rs1]+e_registers[e_rs2];
                        e_program_counter <= e_program_counter + 4;
                        fetch_stage <= 1;
                    end else if (e_funct7 == 7'b0100000) begin //sub
                        e_registers[e_rd] <= e_registers[e_rs1] - e_registers[e_rs2];
                        e_program_counter <= e_program_counter + 4;
                        fetch_stage <= 1;
                    end
                end else if (e_funct == 3'b100) begin //xor
                    e_registers[e_rd] <= e_registers[e_rs1] ^ e_registers[e_rs2];
                    e_program_counter <= e_program_counter + 4;
                    fetch_stage <= 1;
                end
            end else if (e_opcode == LOAD_FP) begin //flw
                if (e_funct == 3'b010) begin
                    if (e_wait == 0) begin
                        m_addr <= (e_registers[e_rs1] + e_imm_i)>>2;
                        e_wait <= 1;
                    end else if (e_wait == 1) begin
                        e_wait <= 2;
                    end else if (e_wait == 2) begin
                        e_wait <= 3;
                    end else if (e_wait == 3) begin
                        f_registers[e_rd] <= m_r_data;
                        e_wait <= 0;
                        e_program_counter <= e_program_counter + 4;
                        fetch_stage <= 1;
                    end
                end
            end else if (e_opcode == STORE_FP) begin //fsw
                if (e_wait == 0) begin
                    m_addr <= (e_registers[e_rs1] + e_imm_s)>>2;
                    m_w_data <= f_registers[e_rs2];
                    e_wait <= 1;
                end else if (e_wait == 1) begin
                    m_we <= 1;
                    e_wait <= 2;
                end else if (e_wait == 2) begin
                    m_we <= 0;
                    e_wait <= 0;
                    e_program_counter <= e_program_counter + 4;
                    fetch_stage <= 1;
                end
            end else if (e_opcode == OP_FP) begin //float
                if (e_funct7 == 7'b0000000) begin //fadd
                    if (e_wait == 0) begin
                        e_wait <= 1;
                        fadd_x1 <= f_registers[e_rs1];
                        fadd_x2 <= f_registers[e_rs2];
                    end else if (e_wait == 1) begin
                        e_wait <= 0;
                        f_registers[e_rd] <= fadd_y;
                        e_program_counter <= e_program_counter + 4;
                        fetch_stage <= 1;
                    end
                end else if (e_funct7 == 7'b0000100) begin //fsub
                    if (e_wait == 0) begin
                        e_wait <= 1;
                        fsub_x1 <= f_registers[e_rs1];
                        fsub_x2 <= f_registers[e_rs2];
                    end else if (e_wait == 1) begin
                        e_wait <= 0;
                        f_registers[e_rd] <= fsub_y;
                        e_program_counter <= e_program_counter + 4;
                        fetch_stage <= 1;
                    end
                end else if (e_funct7 == 7'b0001000) begin //fmul
                    if (e_wait == 0) begin
                        e_wait <= 1;
                        fmul_x1 <= f_registers[e_rs1];
                        fmul_x2 <= f_registers[e_rs2];
                    end else if (e_wait == 1) begin
                        e_wait <= 0;
                        f_registers[e_rd] <= fmul_y;
                        e_program_counter <= e_program_counter + 4;
                        fetch_stage <= 1;
                    end
                end else if (e_funct7 == 7'b0001100) begin //fdiv
                    if (e_wait == 0) begin
                        e_wait <= 1;
                        fdiv_x1 <= f_registers[e_rs1];
                        fdiv_x2 <= f_registers[e_rs2];
                    end else if (e_wait == 1) begin
                        e_wait <= 0;
                        f_registers[e_rd] <= fdiv_y;
                        e_program_counter <= e_program_counter + 4;
                        fetch_stage <= 1;
                    end
                end else if (e_funct7 == 7'b0101100) begin //fsqrt
                    if (e_wait == 0) begin
                        e_wait <= 1;
                        fsqrt_x <= f_registers[e_rs1];
                    end else if (e_wait == 1) begin
                        e_wait <= 0;
                        f_registers[e_rd] <= fsqrt_y;
                        e_program_counter <= e_program_counter + 4;
                        fetch_stage <= 1;
                    end
                end else if (e_funct7 == 7'b1010000) begin
                    if (e_funct == 3'b010) begin //feq
                        if (e_wait == 0) begin
                            e_wait <= 1;
                            feq_x1 <= f_registers[e_rs1];
                            feq_x2 <= f_registers[e_rs2];
                        end else if (e_wait == 1) begin
                            e_wait <= 0;
                            e_registers[e_rd] <= feq_y;
                            e_program_counter <= e_program_counter + 4;
                            fetch_stage <= 1;
                        end
                    end else if (e_funct == 3'b001) begin //flt
                        if (e_wait == 0) begin
                            e_wait <= 1;
                            flt_x1 <= f_registers[e_rs1];
                            flt_x2 <= f_registers[e_rs2];
                        end else if (e_wait == 1) begin
                            e_wait <= 0;
                            e_registers[e_rd] <= flt_y;
                            e_program_counter <= e_program_counter + 4;
                            fetch_stage <= 1;
                        end
                    end else if (e_funct == 3'b000) begin //fle
                        if (e_wait == 0) begin
                            e_wait <= 1;
                            fle_x1 <= f_registers[e_rs1];
                            fle_x2 <= f_registers[e_rs2];
                        end else if (e_wait == 1) begin
                            e_wait <= 0;
                            e_registers[e_rd] <= fle_y;
                            e_program_counter <= e_program_counter + 4;
                            fetch_stage <= 1;
                        end
                    end
                end else if (e_funct7 == 7'b0010000) begin //origin
                    if (e_funct == 3'b000) begin //fmv
                        f_registers[e_rd] <= f_registers[e_rs1];
                        e_program_counter <= e_program_counter + 4;
                        fetch_stage <= 1;
                    end else if (e_funct == 3'b001) begin //fneg
                        if (e_wait == 0) begin
                            e_wait <= 1;
                            fneg_x <= f_registers[e_rs1];
                        end else if (e_wait == 1) begin
                            e_wait <= 0;
                            f_registers[e_rd] <= fneg_y;
                            e_program_counter <= e_program_counter + 4;
                            fetch_stage <= 1;
                        end
                    end else if (e_funct == 3'b010) begin //fabs
                        if (e_wait == 0) begin
                            e_wait <= 1;
                            fabs_x <= f_registers[e_rs1];
                        end else if (e_wait == 1) begin
                            e_wait <= 0;
                            f_registers[e_rd] <= fabs_y;
                            e_program_counter <= e_program_counter + 4;
                            fetch_stage <= 1;
                        end
                    end else if (e_funct == 3'b011) begin //finv
                        if (e_wait == 0) begin
                            e_wait <= 1;
                            finv_x <= f_registers[e_rs1];
                        end else if (e_wait == 1) begin
                            e_wait <= 0;
                            f_registers[e_rd] <= finv_y;
                            e_program_counter <= e_program_counter + 4;
                            fetch_stage <= 1;
                        end
                    end
                end
            end else if (e_opcode == OP_INOUT) begin //inout
                if (e_imm_u == 0) begin //out
                    if (e_wait == 0) begin
                        b_stage <= 5;
                        e_wait <= 1;
                        s_axi_w_buf <= e_registers[e_rd];
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
                            s_axi_wdata <= s_axi_w_buf;
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
                            fetch_stage <= 1;
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
                            s_axi_r_buf <= {24'd0, s_axi_rdata[7:0]};
                            b_stage <= 6;
                        end
                    end else if (b_stage == 6) begin
                        e_registers[e_rd] <= s_axi_r_buf;
                        fetch_stage <= 1;
                        e_wait <= 0;
                        e_program_counter <= e_program_counter + 4;
                    end
                end
            end
        end
        e_registers[0] <= 0;
    end
end

endmodule

/*
end else if (exec_stage) begin
    if (stage == 5) begin
        s_axi_arvalid <= 1;
        s_axi_araddr <= 8;
        stage <= 6;
    end else if (stage == 6) begin
        if (s_axi_arready) begin
            s_axi_rready <= 1;
            s_axi_arvalid <= 0;
            stage <= 7;
        end
    end else if (stage == 7) begin
        if (s_axi_rvalid) begin
            s_axi_rready <= 0;
            resp <= s_axi_rresp; 
            stat <= s_axi_rdata;
            stage <= 8;
        end
    end else if (stage == 8) begin
        if (stat[3] == 0) begin
            flag1 <= 0;
            flag2 <= 0;
            s_axi_awvalid <= 1;
            s_axi_awaddr <= 4;
            s_axi_wvalid <= 1;
            s_axi_wdata <= rdata >> ((3-memory_stage)*8);
            s_axi_wstrb <= 1;
            stage <= 9;
        end else begin
            s_axi_arvalid <= 1;
            s_axi_araddr <= 8;
            stage <= 6;
        end
    end else if (stage == 9) begin
        if (flag1 == 0 && s_axi_awready) begin
            s_axi_awvalid <= 0;
            flag1 <= 1;
        end
        if (flag2 == 0 && s_axi_wready) begin
            s_axi_wvalid <= 0;
            flag2 <= 1;
        end
        if (flag1 && flag2) begin
            s_axi_bready <= 1;
            stage <= 10;
        end
    end else if (stage == 10) begin
        if (s_axi_bvalid) begin
            if (memory_stage == 3) begin
                r_counter <= r_counter + 1;
                memory_stage <= 0;
                if (r_counter+1 == w_counter) begin
                    exec_stage <= 0;
                end else begin
                    s_axi_bready <= 0;
                    s_axi_arvalid <= 1;
                    s_axi_araddr <= 8;
                    stage <= 6;
                end
            end else begin
                memory_stage <= memory_stage + 1;
                s_axi_bready <= 0;
                s_axi_arvalid <= 1;
                s_axi_araddr <= 8;
                stage <= 6;
            end
        end
    end
end
*/
