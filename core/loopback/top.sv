`timescale 1ns / 1ps

module subtop(
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
    output logic s_axi_rready
    );
    
    logic [31:0] stat;
    logic [31:0] data;
    logic [4:0] stage;
    logic [1:0] resp;
    
    logic flag1;
    logic flag2;
    
    always @(posedge clk) begin

      if (!rst) begin
        s_axi_araddr <= 0;
        s_axi_arvalid <= 0;
        s_axi_awaddr <= 0;
        s_axi_awvalid <= 0;
        s_axi_bready <= 0;
        s_axi_rready <= 0;
        s_axi_wdata <= 0;
        s_axi_wstrb <= 0;
        s_axi_wvalid <= 0;
        stage <= 0;
      end else begin
        if (stage == 0) begin
          s_axi_arvalid <= 1;
          s_axi_araddr <= 8;
          stage <= 1;
        end else if (stage == 1) begin
          if (s_axi_arready) begin
            s_axi_arvalid <= 0;
            s_axi_rready <= 1;
            stage <= 2;
          end
        end else if (stage == 2) begin
          if (s_axi_rvalid) begin
            s_axi_rready <= 0;
            resp <= s_axi_rresp; 
            stat <= s_axi_rdata;
            stage <= 3;
          end
        end else if (stage == 3) begin
          if (stat[0] == 1) begin
            s_axi_arvalid <= 1;
            s_axi_araddr <= 0;
            stage <= 4;       
          end else begin
            stage <= 0;
          end
        end else if (stage == 4) begin
          if (s_axi_arready) begin
            s_axi_arvalid <= 0;
            s_axi_rready <= 1;
            stage <= 5;
          end
        end else if (stage == 5) begin
          if (s_axi_rvalid) begin
            s_axi_rready <= 0;
            data <= s_axi_rdata;
            s_axi_arvalid <= 1;
            s_axi_araddr <= 8;
            stage <= 6;
          end
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
            s_axi_wdata <= data;
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
            s_axi_bready <= 0;
            stage <= 0;
          end
        end
      end
    end
    
endmodule
