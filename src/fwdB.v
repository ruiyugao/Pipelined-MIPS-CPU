`ifndef _fwdB
`define _fwdB

`include "../src/def.v"

module fwdB(
    output reg [31:0] d_valB,
    input [4:0] d_srcB,
    input [4:0] E_dstE,
    input [4:0] M_dstM,
    input [4:0] M_dstE,
    input [4:0] W_dstM,
    input [4:0] W_dstE,
    input [31:0] d_rvalB,
    input [31:0] e_valE,
    input [31:0] m_valM,
    input [31:0] M_valE,
    input [31:0] W_valM,
    input [31:0] W_valE
);
    always @(*) begin
        if (d_srcB!=`RNONE) begin
            case (d_srcB)
                E_dstE:begin d_valB <= e_valE; end
                M_dstE:begin d_valB <= M_valE; end
                M_dstM:begin d_valB <= m_valM; end
                W_dstE:begin d_valB <= W_valE; end
                W_dstM:begin d_valB <= W_valM; end
                default: d_valB <= d_rvalB; end
            endcase
        end else begin
            d_valB = d_rvalB;
        end
    end

endmodule

`endif