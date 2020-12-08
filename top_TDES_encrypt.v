`timescale 1ns/10ps

module top_TDES_encrypt( input clk,
                         input [63:0]data,
                         input [63:0] key1,
                         input [63:0] key2,
                         input [63:0] key3,
                         input nrst,
                         output [63:0]data_out);
        
logic [63:0]data_out_1;
logic [63:0]data_out_2;

logic [1023:0]key_2_decrypt;
logic [2047:0]key_3_encrypt;

always @(posedge clk or negedge nrst)
begin
    if( ~nrst)
        key_2_decrypt <= 1024'h0;
    else
        key_2_decrypt <= {key_2_decrypt[959:0], key2};
end 

always @(posedge clk or negedge nrst)
begin
    if( ~nrst)
        key_3_encrypt <= 2048'h0;
    else
        key_3_encrypt <= {key_3_encrypt[1983:0], key3};
end
 
top_DES_encrypt des_1_encrypt( .clk(clk), .data(data)      , .key(key1),                     .nrst(nrst), .data_out(data_out_1));
top_DES_decrypt des_2_decrypt( .clk(clk), .data(data_out_1), .key(key_2_decrypt[1023:960]) , .nrst(nrst), .data_out(data_out_2));
top_DES_encrypt des_3_encrypt( .clk(clk), .data(data_out_2), .key(key_3_encrypt[2047:1984]), .nrst(nrst), .data_out(data_out  ));



endmodule


        
        
        
