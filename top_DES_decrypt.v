`timescale 1ns/10ps

module top_DES_decrypt( input clk,
            input [63:0]data,
            input [63:0] key,
            input nrst,
            output [63:0]data_out);
        
 
logic [47:0] key_output_1;  logic [31:0]R_1;  logic [31:0]L_1;  logic [31:0]R_1l;  logic [31:0]L_1l;
logic [47:0] key_output_2;  logic [31:0]R_2;  logic [31:0]L_2;  logic [31:0]R_2l;  logic [31:0]L_2l;
logic [47:0] key_output_3;  logic [31:0]R_3;  logic [31:0]L_3;  logic [31:0]R_3l;  logic [31:0]L_3l;
logic [47:0] key_output_4;  logic [31:0]R_4;  logic [31:0]L_4;  logic [31:0]R_4l;  logic [31:0]L_4l;
logic [47:0] key_output_5;  logic [31:0]R_5;  logic [31:0]L_5;  logic [31:0]R_5l;  logic [31:0]L_5l;
logic [47:0] key_output_6;  logic [31:0]R_6;  logic [31:0]L_6;  logic [31:0]R_6l;  logic [31:0]L_6l;
logic [47:0] key_output_7;  logic [31:0]R_7;  logic [31:0]L_7;  logic [31:0]R_7l;  logic [31:0]L_7l;
logic [47:0] key_output_8;  logic [31:0]R_8;  logic [31:0]L_8;  logic [31:0]R_8l;  logic [31:0]L_8l;
logic [47:0] key_output_9;  logic [31:0]R_9;  logic [31:0]L_9;  logic [31:0]R_9l;  logic [31:0]L_9l;
logic [47:0] key_output_10; logic [31:0]R_10; logic [31:0]L_10;  logic [31:0]R_10l;  logic [31:0]L_10l;
logic [47:0] key_output_11; logic [31:0]R_11; logic [31:0]L_11;  logic [31:0]R_11l;  logic [31:0]L_11l;
logic [47:0] key_output_12; logic [31:0]R_12; logic [31:0]L_12;  logic [31:0]R_12l;  logic [31:0]L_12l;
logic [47:0] key_output_13; logic [31:0]R_13; logic [31:0]L_13;  logic [31:0]R_13l;  logic [31:0]L_13l;
logic [47:0] key_output_14; logic [31:0]R_14; logic [31:0]L_14;  logic [31:0]R_14l;  logic [31:0]L_14l;
logic [47:0] key_output_15; logic [31:0]R_15; logic [31:0]L_15;  logic [31:0]R_15l;  logic [31:0]L_15l;
logic [47:0] key_output_16; logic [31:0]R_16; logic [31:0]L_16;  logic [31:0]R_16l;  logic [31:0]L_16l;

logic [31:0]R_out; logic [31:0]L_out;
logic [63:0]data_enc;
        
key_decrypt key1(.key_input(key), .clk(clk), .nrst(nrst), .key_output({key_output_16, key_output_15, key_output_14, key_output_13, key_output_12, key_output_11, key_output_10, key_output_9,
                                                               key_output_8,  key_output_7,  key_output_6,  key_output_5,  key_output_4,  key_output_3,  key_output_2,  key_output_1}));


ip ip1 (.in(data), .out({L_16, R_16}));
always @(posedge clk) begin R_16l <= R_16; end
always @(posedge clk) begin L_16l <= L_16; end
f decrypt_1  (.R(R_16l), .L(L_16l), .k(key_output_16), .R_out(R_15),  .L_out(L_15));
always @(posedge clk) begin R_15l <= R_15; end
always @(posedge clk) begin L_15l <= L_15; end
f decrypt_2  (.R(R_15l), .L(L_15l), .k(key_output_15), .R_out(R_14),  .L_out(L_14));
always @(posedge clk) begin R_14l <= R_14; end
always @(posedge clk) begin L_14l <= L_14; end
f decrypt_3  (.R(R_14l), .L(L_14l), .k(key_output_14), .R_out(R_13),  .L_out(L_13));
always @(posedge clk) begin R_13l <= R_13; end
always @(posedge clk) begin L_13l <= L_13; end
f decrypt_4  (.R(R_13l), .L(L_13l), .k(key_output_13), .R_out(R_12),  .L_out(L_12));
always @(posedge clk) begin R_12l <= R_12; end
always @(posedge clk) begin L_12l <= L_12; end
f decrypt_5  (.R(R_12l), .L(L_12l), .k(key_output_12), .R_out(R_11),  .L_out(L_11));
always @(posedge clk) begin R_11l <= R_11; end
always @(posedge clk) begin L_11l <= L_11; end
f decrypt_6  (.R(R_11l), .L(L_11l), .k(key_output_11), .R_out(R_10),  .L_out(L_10));
always @(posedge clk) begin R_10l <= R_10; end
always @(posedge clk) begin L_10l <= L_10; end
f decrypt_7  (.R(R_10l), .L(L_10l), .k(key_output_10), .R_out(R_9),   .L_out(L_9));
always @(posedge clk) begin R_9l <= R_9; end
always @(posedge clk) begin L_9l <= L_9; end
f decrypt_8  (.R(R_9l),  .L(L_9l),  .k(key_output_9),  .R_out(R_8),   .L_out(L_8));
always @(posedge clk) begin R_8l <= R_8; end
always @(posedge clk) begin L_8l <= L_8; end
f decrypt_9  (.R(R_8l),  .L(L_8l),  .k(key_output_8),  .R_out(R_7),   .L_out(L_7));
always @(posedge clk) begin R_7l <= R_7; end
always @(posedge clk) begin L_7l <= L_7; end
f decrypt_10 (.R(R_7l),  .L(L_7l),  .k(key_output_7),  .R_out(R_6),   .L_out(L_6));
always @(posedge clk) begin R_6l <= R_6; end
always @(posedge clk) begin L_6l <= L_6; end
f decrypt_11 (.R(R_6l),  .L(L_6l),  .k(key_output_6),  .R_out(R_5),   .L_out(L_5));
always @(posedge clk) begin R_5l <= R_5; end
always @(posedge clk) begin L_5l <= L_5; end
f decrypt_12 (.R(R_5l),  .L(L_5l),  .k(key_output_5),  .R_out(R_4),   .L_out(L_4));
always @(posedge clk) begin R_4l <= R_4; end
always @(posedge clk) begin L_4l <= L_4; end
f decrypt_13 (.R(R_4l),  .L(L_4l),  .k(key_output_4),  .R_out(R_3),   .L_out(L_3));
always @(posedge clk) begin R_3l <= R_3; end
always @(posedge clk) begin L_3l <= L_3; end
f decrypt_14 (.R(R_3l),  .L(L_3l),  .k(key_output_3),  .R_out(R_2),   .L_out(L_2));
always @(posedge clk) begin R_2l <= R_2; end
always @(posedge clk) begin L_2l <= L_2; end
f decrypt_15 (.R(R_2l),  .L(L_2l),  .k(key_output_2),  .R_out(R_1),   .L_out(L_1));
always @(posedge clk) begin R_1l <= R_1; end
always @(posedge clk) begin L_1l <= L_1; end
f decrypt_16 (.R(R_1l),  .L(L_1l),  .k(key_output_1),  .R_out(R_out), .L_out(L_out));
op op1 (.in({R_out, L_out}), .out(data_out));


endmodule


        
        
        
