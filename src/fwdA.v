`ifndef _fwdA
`define _fwdA

`include "../src/def.v"

module fwdA(
    output reg [31:0] d_valA,
    input [4:0] d_srcA,
    input [4:0] E_dstE,
    input [4:0] M_dstM,
    input [4:0] M_dstE,
    input [4:0] W_dstM,
    input [4:0] W_dstE,
    input [31:0] d_rvalA,
    input [31:0] e_valE,
    input [31:0] m_valM,
    input [31:0] M_valE,
    input [31:0] W_valM,
    input [31:0] W_valE
);
    always @(*) begin
        if (d_srcA!=`RNONE) begin
            case (d_srcA)
                E_dstE:begin d_valA <= e_valE; end
                M_dstE:begin d_valA <= M_valE; end
                M_dstM:begin d_valA <= m_valM; end
                W_dstE:begin d_valA <= W_valE; end
                W_dstM:begin d_valA <= W_valM; end
                default: d_valA <= d_rvalA; end
            endcase
        end else begin
            d_valA = d_rvalA;
        end
    end

endmodule

`endif