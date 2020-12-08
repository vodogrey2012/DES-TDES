`timescale 1ns/10ps


module TB_TDES();

logic clk;
logic [63:0] key1;
logic [63:0] key2;
logic [63:0] key3;
logic nrst;
logic [63:0] plaintext;
logic [6:0] i;
logic [63:0] ciphertext;
logic [63:0] data_out;

initial begin
    clk = 1'b0;
    nrst = 1'b0;
    @(posedge clk);
    @(negedge clk);
    nrst = 1'b1;

key2 = 64'hffffffffffffffff;
key3 = 64'hffffffffffffffff;


fork
begin
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000800000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008000800000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000080800000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008080800000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000008000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008000008000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000080008000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008080008000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000808000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008000808000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000080808000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008080808000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008000000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000080000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008080000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000800080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008000800080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000080800080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008080800080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000008080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008000008080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000080008080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008080008080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000808080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008000808080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000080808080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008080808080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200008000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200008080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000000800000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200008000800000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000080800000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200008080800000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000000008000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200008000008000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000080008000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200008080008000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000000808000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200008000808000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000080808000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200008080808000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000000000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200008000000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000080000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200008080000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000000800080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200008000800080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000080800080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200008080800080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000000008080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200008000008080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000080008080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200008080008080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000000808080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200008000808080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000080808080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200008080808080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0080000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0080000000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8080000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8080000000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000800000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000800000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000800000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000800000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0080800000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0080800000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8080800000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8080800000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000008000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000008000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0080008000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0080008000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8080008000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8080008000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000808000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000808000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000808000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000808000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0080808000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0080808000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8080808000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8080808000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000080000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000080000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0080000080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0080000080000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8080000080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8080000080000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000800080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000800080000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000800080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000800080000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0080800080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0080800080000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8080800080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8080800080000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000008080000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000008080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000008080000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0080008080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0080008080000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8080008080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8080008080000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000808080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000808080000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000808080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000808080000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0080808080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0080808080000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8080808080000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8080808080000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000200000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002000200000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000020200000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002020200000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000002000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002000002000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000020002000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002020002000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000202000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002000202000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000020202000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002020202000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000020000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002020000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000200020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002000200020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000020200020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002020200020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000002020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002000002020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000020002020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002020002020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000202020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002000202020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000020202020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002020202020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000002000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000002020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000000200000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000002000200000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000020200000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000002020200000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000000002000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000002000002000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000020002000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000002020002000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000000202000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000002000202000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000020202000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000002020202000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000002000000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000020000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000002020000020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000000200020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000002000200020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000020200020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000002020200020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000000002020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000002000002020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000020002020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000002020002020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000000202020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000002000202020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000000020202020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h8000002020202020; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0020000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0020000000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2020000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2020000000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000200000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000200000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000200000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000200000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0020200000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0020200000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2020200000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2020200000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000002000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000002000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0020002000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0020002000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2020002000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2020002000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000202000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000202000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000202000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000202000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0020202000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0020202000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2020202000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2020202000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000020000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000020000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0020000020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0020000020000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2020000020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2020000020000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000200020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000200020000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000200020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000200020000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0020200020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0020200020000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2020200020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2020200020000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000002020000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000002020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000002020000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0020002020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0020002020000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2020002020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2020002020000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000202020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000202020000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000202020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000202020000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0020202020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0020202020000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2020202020000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2020202020000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000800000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000008000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000808000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000080000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000800080000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000008080000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000808080000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000800; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000800000800; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000008000800; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000808000800; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000080800; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000800080800; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000008080800; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000808080800; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000800000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000008000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000808000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000080008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000800080008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000008080008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000808080008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000808; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000800000808; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000008000808; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000808000808; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000080808; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000800080808; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000008080808; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000808080808; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000800000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000008000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000808000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000000080000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000800080000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000008080000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000808080000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000000000800; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000800000800; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000008000800; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000808000800; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000000080800; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000800080800; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000008080800; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000808080800; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000000000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000800000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000008000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000808000008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000000080008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000800080008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000008080008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000808080008; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000000000808; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000800000808; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000008000808; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000808000808; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000000080808; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000800080808; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000008080808; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h2000000808080808; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000000000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0008000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0008000000000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0808000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0808000000000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000080000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000080000000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800080000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800080000000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0008080000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0008080000000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0808080000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0808080000000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000800000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000800000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000800000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000800000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0008000800000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0008000800000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0808000800000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0808000800000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000080800000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000080800000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800080800000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800080800000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0008080800000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0008080800000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0808080800000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0808080800000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000008000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000008000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000008000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000008000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0008000008000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0008000008000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0808000008000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0808000008000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000080008000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000080008000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800080008000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800080008000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0008080008000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0008080008000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0808080008000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0808080008000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000808000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000808000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000808000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000808000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0008000808000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0008000808000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0808000808000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0808000808000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000080808000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000080808000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800080808000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800080808000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0008080808000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0008080808000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0808080808000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0808080808000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000200000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000002000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000202000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000020000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000200020000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000002020000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000202020000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000200; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000200000200; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000002000200; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000202000200; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000020200; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000200020200; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000002020200; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000202020200; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000200000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000002000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000202000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000020002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000200020002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000002020002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000202020002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000202; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000200000202; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000002000202; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000202000202; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000020202; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000200020202; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000002020202; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000202020202; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000200000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000002000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000202000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000000020000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000200020000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000002020000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000202020000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000000000200; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000200000200; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000002000200; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000202000200; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000000020200; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000200020200; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000002020200; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000202020200; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000000000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000200000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000002000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000202000002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000000020002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000200020002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000002020002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000202020002; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000000000202; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000200000202; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000002000202; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000202000202; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000000020202; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000200020202; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000002020202; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0800000202020202; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000000000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000000000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0002000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0002000000000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0202000000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0202000000000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000020000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000020000000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200020000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200020000000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0002020000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0002020000000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0202020000000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0202020000000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000200000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000200000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000200000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000200000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0002000200000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0002000200000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0202000200000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0202000200000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000020200000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000020200000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200020200000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200020200000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0002020200000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0002020200000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0202020200000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0202020200000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000002000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000002000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000002000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000002000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0002000002000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0002000002000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0202000002000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0202000002000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000020002000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000020002000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200020002000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200020002000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0002020002000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0002020002000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0202020002000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0202020002000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000202000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000000202000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000202000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200000202000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0002000202000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0002000202000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0202000202000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0202000202000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000020202000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0000020202000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200020202000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0200020202000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0002020202000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0002020202000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0202020202000000; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 
@(negedge clk); plaintext = 64'h0202020202000080; key1 = 64'h0000000000000000; key2 = 64'hffffffffffffffff; key3 = 64'hffffffffffffffff; 

@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000800000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000800000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080800000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080800000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000008000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000008000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080008000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080008000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000808000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000808000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080808000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080808000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000800080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000800080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080800080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080800080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000008080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000008080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080008080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080008080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000808080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000808080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080808080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080808080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000800000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008000800000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000080800000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008080800000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000008000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008000008000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000080008000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008080008000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000808000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008000808000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000080808000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008080808000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008000000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000080000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008080000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000800080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008000800080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000080800080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008080800080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000008080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008000008080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000080008080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008080008080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000808080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008000808080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000080808080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008080808080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080000000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080000000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000800000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000800000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000800000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000800000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080800000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080800000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080800000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080800000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000008000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000008000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080008000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080008000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080008000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080008000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000808000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000808000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000808000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000808000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080808000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080808000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080808000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080808000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000080000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080000080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080000080000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080000080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080000080000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000800080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000800080000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000800080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000800080000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080800080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080800080000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080800080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080800080000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000008080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000008080000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080008080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080008080000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080008080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080008080000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000808080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000808080000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000808080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000808080000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080808080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080808080000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080808080000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080808080000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000200000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000200000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020200000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020200000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000002000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000002000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020002000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020002000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000202000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000202000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020202000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020202000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000200020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000200020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020200020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020200020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000002020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000002020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020002020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020002020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000202020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000202020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020202020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020202020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000200000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002000200000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000020200000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002020200000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000002000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002000002000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000020002000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002020002000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000202000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002000202000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000020202000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002020202000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002000000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000020000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002020000020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000200020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002000200020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000020200020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002020200020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000002020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002000002020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000020002020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002020002020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000202020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002000202020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000020202020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002020202020; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020000000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020000000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000200000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000200000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000200000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000200000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020200000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020200000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020200000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020200000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000002000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000002000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020002000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020002000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020002000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020002000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000202000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000202000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000202000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000202000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020202000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020202000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020202000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020202000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000020000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020000020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020000020000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020000020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020000020000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000200020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000200020000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000200020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000200020000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020200020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020200020000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020200020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020200020000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000002020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000002020000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020002020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020002020000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020002020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020002020000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000202020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000202020000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000202020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000202020000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020202020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020202020000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020202020000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020202020000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000080000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800080000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008080000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808080000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000800; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800000800; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008000800; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808000800; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000080800; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800080800; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008080800; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808080800; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000080008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800080008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008080008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808080008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000808; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800000808; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008000808; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808000808; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000080808; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800080808; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008080808; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808080808; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000800000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000008000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000808000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000080000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000800080000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000008080000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000808080000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000000800; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000800000800; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000008000800; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000808000800; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000080800; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000800080800; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000008080800; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000808080800; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000800000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000008000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000808000008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000080008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000800080008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000008080008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000808080008; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000000808; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000800000808; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000008000808; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000808000808; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000080808; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000800080808; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000008080808; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000808080808; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008000000000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808000000000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000080000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000080000000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800080000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800080000000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008080000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008080000000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808080000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808080000000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000800000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000800000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008000800000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008000800000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808000800000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808000800000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000080800000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000080800000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800080800000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800080800000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008080800000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008080800000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808080800000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808080800000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000008000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000008000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008000008000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008000008000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808000008000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808000008000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000080008000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000080008000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800080008000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800080008000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008080008000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008080008000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808080008000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808080008000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000808000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000808000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008000808000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008000808000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808000808000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808000808000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000080808000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000080808000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800080808000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800080808000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008080808000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008080808000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808080808000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808080808000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000020000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200020000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002020000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202020000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000200; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200000200; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002000200; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202000200; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000020200; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200020200; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002020200; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202020200; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000020002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200020002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002020002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202020002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000202; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200000202; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002000202; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202000202; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000020202; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200020202; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002020202; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202020202; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000200000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000002000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000202000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000020000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000200020000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000002020000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000202020000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000000200; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000200000200; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000002000200; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000202000200; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000020200; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000200020200; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000002020200; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000202020200; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000200000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000002000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000202000002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000020002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000200020002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000002020002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000202020002; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000000202; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000200000202; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000002000202; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000202000202; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000020202; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000200020202; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000002020202; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000202020202; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002000000000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202000000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202000000000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000020000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000020000000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200020000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200020000000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002020000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002020000000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202020000000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202020000000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000200000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000200000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002000200000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002000200000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202000200000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202000200000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000020200000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000020200000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200020200000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200020200000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002020200000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002020200000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202020200000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202020200000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000002000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000002000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002000002000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002000002000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202000002000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202000002000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000020002000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000020002000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200020002000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200020002000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002020002000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002020002000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202020002000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202020002000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000202000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000202000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002000202000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002000202000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202000202000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202000202000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000020202000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000020202000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200020202000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200020202000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002020202000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002020202000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202020202000000; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202020202000080; key1 = 64'hffffffffffffffff;  key2 = 64'hffffffffffffffff; key3 = 64'h0000000000000000;


@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000800000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000800000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080800000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080800000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000008000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000008000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080008000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080008000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000808000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000808000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080808000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080808000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000800080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000800080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080800080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080800080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000008080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000008080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080008080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080008080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000808080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000808080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080808080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080808080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000800000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008000800000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000080800000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008080800000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000008000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008000008000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000080008000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008080008000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000808000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008000808000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000080808000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008080808000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008000000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000080000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008080000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000800080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008000800080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000080800080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008080800080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000008080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008000008080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000080008080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008080008080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000808080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008000808080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000080808080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200008080808080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080000000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080000000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000800000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000800000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000800000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000800000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080800000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080800000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080800000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080800000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000008000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000008000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080008000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080008000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080008000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080008000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000808000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000808000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000808000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000808000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080808000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080808000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080808000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080808000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000080000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000080000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080000080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080000080000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080000080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080000080000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000800080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000800080000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000800080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000800080000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080800080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080800080000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080800080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080800080000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000008080000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000008080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000008080000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080008080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080008080000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080008080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080008080000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000808080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000808080000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000808080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000808080000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080808080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0080808080000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080808080000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8080808080000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000200000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000200000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020200000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020200000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000002000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000002000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020002000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020002000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000202000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000202000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020202000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020202000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000200020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000200020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020200020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020200020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000002020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000002020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020002020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020002020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000202020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000202020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020202020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020202020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000200000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002000200000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000020200000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002020200000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000002000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002000002000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000020002000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002020002000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000202000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002000202000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000020202000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002020202000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002000000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000020000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002020000020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000200020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002000200020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000020200020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002020200020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000002020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002000002020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000020002020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002020002020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000000202020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002000202020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000000020202020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h8000002020202020; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020000000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020000000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000200000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000200000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000200000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000200000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020200000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020200000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020200000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020200000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000002000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000002000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020002000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020002000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020002000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020002000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000202000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000202000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000202000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000202000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020202000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020202000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020202000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020202000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000020000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000020000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020000020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020000020000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020000020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020000020000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000200020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000200020000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000200020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000200020000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020200020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020200020000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020200020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020200020000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000002020000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000002020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000002020000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020002020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020002020000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020002020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020002020000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000202020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000202020000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000202020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000202020000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020202020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0020202020000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020202020000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2020202020000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000080000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800080000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008080000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808080000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000800; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800000800; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008000800; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808000800; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000080800; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800080800; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008080800; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808080800; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000080008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800080008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008080008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808080008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000808; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800000808; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008000808; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808000808; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000080808; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800080808; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008080808; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808080808; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000800000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000008000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000808000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000080000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000800080000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000008080000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000808080000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000000800; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000800000800; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000008000800; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000808000800; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000080800; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000800080800; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000008080800; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000808080800; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000800000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000008000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000808000008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000080008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000800080008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000008080008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000808080008; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000000808; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000800000808; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000008000808; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000808000808; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000000080808; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000800080808; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000008080808; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h2000000808080808; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008000000000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808000000000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000080000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000080000000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800080000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800080000000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008080000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008080000000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808080000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808080000000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000800000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000800000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000800000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008000800000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008000800000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808000800000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808000800000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000080800000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000080800000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800080800000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800080800000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008080800000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008080800000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808080800000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808080800000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000008000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000008000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000008000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008000008000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008000008000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808000008000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808000008000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000080008000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000080008000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800080008000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800080008000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008080008000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008080008000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808080008000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808080008000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000808000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000808000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000808000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008000808000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008000808000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808000808000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808000808000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000080808000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000080808000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800080808000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800080808000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008080808000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0008080808000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808080808000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0808080808000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000020000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200020000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002020000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202020000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000200; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200000200; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002000200; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202000200; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000020200; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200020200; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002020200; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202020200; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000020002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200020002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002020002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202020002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000202; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200000202; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002000202; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202000202; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000020202; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200020202; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002020202; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202020202; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000200000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000002000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000202000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000020000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000200020000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000002020000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000202020000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000000200; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000200000200; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000002000200; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000202000200; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000020200; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000200020200; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000002020200; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000202020200; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000200000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000002000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000202000002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000020002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000200020002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000002020002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000202020002; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000000202; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000200000202; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000002000202; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000202000202; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000000020202; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000200020202; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000002020202; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0800000202020202; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000000000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000000000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002000000000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202000000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202000000000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000020000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000020000000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200020000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200020000000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002020000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002020000000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202020000000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202020000000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000200000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000200000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000200000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002000200000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002000200000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202000200000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202000200000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000020200000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000020200000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200020200000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200020200000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002020200000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002020200000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202020200000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202020200000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000002000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000002000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000002000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002000002000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002000002000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202000002000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202000002000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000020002000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000020002000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200020002000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200020002000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002020002000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002020002000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202020002000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202020002000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000000202000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000202000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200000202000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002000202000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002000202000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202000202000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202000202000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000020202000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0000020202000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200020202000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0200020202000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002020202000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0002020202000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202020202000000; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;
@(negedge clk); plaintext = 64'h0202020202000080; key1 = 64'h0000000000000000;  key2 = 64'h0000000000000000; key3 = 64'h0000000000000000;

end

begin
repeat(49) @(posedge clk);
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h750d079407521363; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he943d7568aec0c5c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf5346437eb98894d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h25eb5fc3f8cf0621; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8eef46c5b7ad8f00; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfa42ea81932764cf; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h701403f568ed4c42; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1029d55e880ec2d0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h491a59ce2c85bdc5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha39d174735f02865; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb5dbb04712066224; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5a7f56cabf65b45a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3d00d2213c765658; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h98410ff872bffefd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdcf99598e6ba277c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2fbc291a570db5c4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2cb7091f844a486d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hda91351381bd621d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc434ae54a6c6c60b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h03b9991d137ce798; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1d0cc05399402510; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h044dce73c450552c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hae78de8174f03f96; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0122990ce22c336a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb6b1652b6b3bb1cf; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hde712d74adbae4f8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf9c39986d59552e2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he98f5419217a1b24; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h15985fe377c23b99; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd515485d23ddad19; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h81bffd4bd6757b96; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6cc5defaaf04512f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc5d6090efe1729bc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'haab7b0e61960e61b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdc8536242c20b511; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb7349f3b8a314d72; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h97491e21d73a07a6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd98db605ce44c0a0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5ec10a30d527952e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h66c2df945c652d9c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h57720bad90d8d71f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h72f56c0c81ac8707; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8cfdd9d51532ee1c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb6a1762eb2db033c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h575ea069cc763b18; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h86c1969c99db5d58; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9d212f7a749a1819; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3f775a1d61cf6d8e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc8225bac7da6cac9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbc98e679f2111bb3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc403e08c6aaacbf7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h161b63d0e54e2a9c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbd7152110c206cea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hddda44c0473ba91a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4479977b17f9846f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8479f80588420fcb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf7527fe42f268d0e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h97d01b580d230220; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h479f2b1a95f4be7c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he6b4abdcd2a6c229; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h190edcb4f661cec1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5778669e9ceeb896; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hca70587e4dfb90b9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0953e2258e8e90a1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h95f8a5e5dd31d900; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h80b18a751b306f5b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd9031b0271bd5a0a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8a241606cfada606; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd025fbccec8243c9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he95aab1d20063e96; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2b9f982f20037fa9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdb677e26d1006cbc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h231a0eb993c4ae05; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6f2c565d2bd99034; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6e07c789bc3a6d78; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h766f3cb958beda33; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h445ec53dd0028416; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'haee91480dcc885be; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h750d079407521363; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h350441f810170d63; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h28e8c8fbdbb6de4c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hffebb9bc04715f3b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1ff4eb0bb21af351; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h42d5539c2f4c978d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2d4499ecffd12003; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1bee4cd1f2cd2abc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8d9b16b2eee71f2a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h136198cfdc3e40b6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha43d41834401c6e5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'haaf5d1935a66b659; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h05382b8a88832ba3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h245602af7d55ba85; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h931f143e5c9d697c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5e1d28686d142e9a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he943d7568aec0c5c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h35fb3f25d3c5219e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h354f374e47ed157f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hda05adc68d3cd258; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h71524f6d6b543f37; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3aa99a9c601dd2e8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9a66c4c6b5dd7dd4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h51a07b83a74c1b3e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3c251fda1bd52bd8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd21d1b3985c7ce70; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb954096f58231906; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hee2364dd4356e109; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7f74e4f797f5ab80; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hba265a0333faff27; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1d4f67475b8f4df6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h425b85530a4a787e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf5346437eb98894d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbe6213977643e65d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc8c537f5162ccbb2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha88b00db59e09994; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he4edc6183e86e93f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdb54422267329c19; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h579ec3e5f27dd01c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h50b27f8fa85a8ef3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9d446e3958dbb409; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc50241fc992f774b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2bc0877c4d2c904b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hffcf3887e70f09e6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfb459ab293181a09; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7e40aefbdabc3e61; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdc61264874b01eb6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1805bd4771087fcb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf02b263b328e2b60; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb160e4680f6c696f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h332a2f0f750fca19; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h79e90dbc98f92cca; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h69ab0ca2f062938b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf77098453548f43b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8b258f93b94625bb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1d1ca853ae7c0c5f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha46e83cbe229ff57; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd120b0b03045f1eb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2cc770699d6f5ab9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h01392f27ad409825; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbbd1497b6d43a9b1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h223ab402c2bcbc44; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0477d6bf911fdb61; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0953e2258e8e90a1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7dac3d40e1a96b1c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc392e37ad7f8540d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h377389cb13e9f54a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8139e703d2ceec40; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h51f02d060c83dcc0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he95637f45c109a7d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1aab35b4d4abe62d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h126d851629b41d3b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3d5a59457962686c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5320efe05c99935e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h43163e99ea977299; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h61e6af82bcdab4c9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6dcac8848da5272a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h12478bac5fd18abc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf84d0c93b6f9118c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h95f8a5e5dd31d900; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd3dc060dbf551377; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h60daf5ca7dadeb74; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h35795a6d86da1459; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5081751ebcd9f00e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2a23803e94070ef6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha5882c3a5f3700ec; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2267dd74f4b392df; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hda7abfec28c7f4b9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h838a832a1d1b744a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf0cbb2daac5b95ce; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h07f544e12f98628f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3f1934e8a6fdfe78; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc6f241adfba0a342; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h04019515420d2478; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h288bd18b66a74a48; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h80b18a751b306f5b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2da85f97af2c1ad6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hddb824f2a9285aea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6961c44ed7a56e58; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9e60754c4ad5e9fd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h093b34e76fe03c10; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc3529fb66068d4e2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb63e58ab57466f0d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5f61795c90043e2d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he8b8de451754ee89; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he8ab7c21d1e3c79d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h440ebc143620b231; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hed78cb724265d04b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb5d523b51b19e59f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h064e5c0e25763e14; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc9586d3206b2feca; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcc083f1e6d9e85f6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2e8653104f3834ea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h52ab03a1b099ccbc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb8061b7ecd9a21e5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h557e9a12ac0afffb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4c6a3da2f87806de; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd43512cf86e305ac; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he19e275d846a1298; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h34d54b374e2c7eee; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9fd0517ee2764b5a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7673fbda4ed92b98; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0978292308b48e31; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0792ffd7fd70afbe; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3c0c2c1332ed2afc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc38a9dff2c7a46c7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf02b263b328e2b60; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcccf24c9e9a1c4e8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he4147c129d321a4c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h209aa9e16a3791dd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h821b72ae800e2103; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hafd5a56aafcb4eff; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h204599e1e7f7fdab; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha9c1cdf45002660b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h80c9262166135333; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hca05adecfc169058; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h21fab493110eaec0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h96e491d7a9cfda4c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h03d0b0576af7632c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he275f734e742cc34; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3aaed04fbfec06b6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h091b7a43e3746663; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb160e4680f6c696f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha8f7b31bbb4d33b1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hac3a56cf82c0f8eb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5f20fccac6091df4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h444aa0aff374c7e2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5a373287ade64a2e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h355a6394f3445f50; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfe0e005666666f7a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha09c09013214b53b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9c301691fea2a3e8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcdbf984043ebc130; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1b028025e18b29df; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h05363a7962fb6d2d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2e7adb3d23734a75; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9413f2c59bcd26be; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h17fea307e809ba37; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h332a2f0f750fca19; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfeb168d710a301fa; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha1cb3d49e749927a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb0d99821057c1a00; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8979aef813e1e57c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h483634f906853666; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h53504f8cabdd0bf5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h187ff6ef62972963; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha15e7e69e21ab72d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd4a58d4e3335a021; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h42cb30e1ff9ce893; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h020d4d30ffabb783; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdc28d32aab409fd7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfcaf3e9a9e8c3a15; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3cf6da2111aad310; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbcba9fbc055d93cb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd106ff0bed5255d7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hca3a2b036dbc8502; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf19a0f8c5cb3c160; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8b54536f2f3e64a8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h84e15a039c9b12d4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9dc40a1238746816; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h90e49f2d8d200911; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8405d1abe24fb942; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3c9191e2f4447c43; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha0faadeb9948acc1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb6513d9ea58eb8af; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5fb63f575f4b1c49; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h670bffef4c6c1c3e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc100aff25cd4a617; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2e9ec2bff2a8d3d6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcc083f1e6d9e85f6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h12a51255ec90300c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h38000b4daa965081; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd39c9261f644041d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcd80c09323ad8f51; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4ec745de59b7ad13; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6dc43c764ffc1831; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9eb4344208cb8a02; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h25b45b599a53394b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he801af92f2829665; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4009b21df04fb834; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0cad8a1ac6d9c462; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h52a59dc26f4df808; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h249388e5dddb1311; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h83603834d8c16e69; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'heceadf955b2a0b62; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2e8653104f3834ea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4977a34a97746bcf; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2e307cbdeccb549a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfbab06086d0e038d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc4278f8053a4df28; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdc697419dcb9a7f2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfcc24a0276975ea3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h73087a1abec25666; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h673acf48a2910ee0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2319dd6fe630c599; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h274ddc6887f33ea9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h34bbe1604f7ea44b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7b44497638c38f56; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'heb05e519eca00a25; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb18af9c352e780fd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h064a7caf8642b6c8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h52ab03a1b099ccbc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd6c0de0c3ceb1f17; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h22eec97ad3a37451; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h487bb821a7780fa9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha38125cb63d45b89; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha304b1c0a0a1e732; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc9bc9d83595ec0e9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he01210ee450c7550; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcced13d9d8c00764; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0e332ef906eaaddd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf3423fb76b0172e1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h65fd818e72461fe1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h840471b64bff6243; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h48e6e4d81994b588; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7c3249a82847257f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h25dbe22b7481a5af; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h06e7ea22ce92708f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h20b9e767b2fb1456; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5ee35aa3a178d235; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hadd0cc8d6e5deba1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8e178778f74e6ff0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8cea2936d38e9c32; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h894f2521bd6b7803; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he7fce22557d23c97; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h450e1e3fc2de3358; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h35c648d58178294a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h94123ffefe3e9c08; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hba9e468fe1eba516; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1f391419abf4433b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h05ae5858dc20f760; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc3981ca50658dd54; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd106ff0bed5255d7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9d12767a52b0eac4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h09ac4f45a512c109; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4f399a73264f9911; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc077d2257d2590dd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h766a4d5bf09ab915; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb68e0986fbd4f2ea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf7f895de8b8742e1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h854a731fa3a0f381; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5b8a01761c124cef; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9a0a0eb089c519d6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h64356419d30ac518; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h76b74b040ff64b8e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hda750e85a5415cd6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h111fd6905a7dfed9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1d2c5adbc58ecb98; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hca3a2b036dbc8502; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbd203d2fc7efedba; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hda25e9a9749b9586; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0ef8dcedb73f47d5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h36e441dbd104efd1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdeb910017f2db2f7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h81aadcb2b42ca0f1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9bd657bf3a287efd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0727854a848088b6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3d0940363d2e5476; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1bdd4afeb977537d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h13b8cca7338bb10e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcd290ca88a996f1b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h21af7683da9eb41c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h533d7da1d2dc2a49; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc5644290601ffa86; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf19a0f8c5cb3c160; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2d16997cb1aba051; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hecddebf9fbc75a29; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h371f39375b26ee21; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf106f7ad990133cf; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7a35e6db1ab21560; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h30694fb8b634fb8a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1d0d885fa8a16df8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h90a89dbc49f398c9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h615588f2c0e99bf7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he9a295aa32b0a108; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc41c0aec6271b941; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h08f1823fe823ff97; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h26dbdcabd97b17ea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h507c71c0375b10d3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8f07ba7331a87d9d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he428581186ec8f46; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h814eeb3b91d90726; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h85dfe7fd654940ef; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcaffc6ac4542de31; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h83554263d455acae; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcfb2fb60813b0a59; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7f6d14b22a811dae; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h48221b9937748a23; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hce4c377f5b0a6e9c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf2b1feadfad2ef75; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8e1e63eb8f4dcf5a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6f8ac619f506fdce; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdcc83fe382bfc8f6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8940ae04932d3053; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h48e96cbd92940131; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h06e7ea22ce92708f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc596e91e3811fab5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6629a011bbcb0db7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc11dd8d92c3f4ab4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcc511aa3a2e80c10; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h058f4fa0951edc5c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5bc39502885c9e15; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7371d25c8e2d83b8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hac5619e4068e2887; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3be434546d549a8a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h69e69631cf6295db; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'had7cef9e42b5888e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ccac4b7dfc6b4da; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1eaf34bca7a82b95; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc594e27021e6d053; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h65810e6fe9cfb70d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h20b9e767b2fb1456; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h089a890920a3efd7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6448fc850c36b970; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h575f9cce906e42ae; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h59b45096fac1052c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6bdcc7c3bc038917; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd2c545bd892a5535; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7019a2b7d3decde0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9c331412e6e549e8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc259c842ddd25bf6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfb4d8c131ecbecf4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc61eac96aa887142; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc25645c05729eca1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hebc7ca31435bba3b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h426e3a34124872e6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h970142d38ac84fda; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5ee35aa3a178d235; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hca109085825888e2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'had4d9f3b68ca3166; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h456e4b3f385ed21e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he6c7091d8da3adc5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc648cf6ed1345351; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hffc91807e72f918e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'haf0348f2b08548f1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2354bf9b8c5119c7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd48c6fb0e87a58c3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h04568c74acd82307; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hadd8d916badaf1bb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h85d8c1bccef3c555; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf698c3783d91fcc4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbb8522253a8de637; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h46569ced02870d18; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2fbc291a570db5c4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6cc5defaaf04512f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3f775a1d61cf6d8e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hecbfe3bd3f591a5e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6efbb077d01ace44; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3470ea1e02d07a2f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h73ae1f3e47f148f1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha484c3ad38dc9c19; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb96ba95407704715; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc4ca67624008f023; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5079543896c67823; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9b2c555ea32034b4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdcfe0d70f896700a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbd5ba147598052fd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1e834f303318c6c3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he428581186ec8f46; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf07415dbf673a18f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7184c09ad069dd39; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h668a84572bc7600b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5166fe1cfeae7ede; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2b537219788c2981; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h213e52a5b40b9264; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0fa1636715135f47; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6a8d507329d8c4eb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf8a368929a176c03; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h403e8dc9c0571604; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha3a87ad14ea8361d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1bca08e692bf193d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6c5b7018a6063388; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he025790a54efd9be; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h172018e1754a8318; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h814eeb3b91d90726; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h63108501b9d85a36; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2197c4980d872389; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h55502d85ab77bcaf; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h06a3c90938bc96a3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcab1011d859f7bbd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb4aa24b655c608cd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc4067ef70cfec520; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha8bc75521ca5cfd3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4cd11635dc6085cd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbd5dbacbabf06d07; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h10ad22b60287c1b2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4ac79e559c73bdad; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1e58ca80f9d91dc9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3b2e0013101f7d4f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h27ca93528a39a8c9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h85dfe7fd654940ef; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb3dcee657239cf94; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb232133c6d5c0120; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2442305c3e814f4e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7a4e355b7db52e1b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha4f2d3b51a9c4af5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hef0220b6a8cc3260; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h38f80b49d28656c7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4bc7235480fdb8d6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h823bff5a3634ce9e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h18f2f7448d56bfbe; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h19790e74389f0827; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h03af3d3a6735a78a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdd8867b3150c08d7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbf95dcdfef72f819; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hab4255669930bb1d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end

ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h750d079407521363; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he943d7568aec0c5c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf5346437eb98894d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h25eb5fc3f8cf0621; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8eef46c5b7ad8f00; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfa42ea81932764cf; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h701403f568ed4c42; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1029d55e880ec2d0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h491a59ce2c85bdc5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha39d174735f02865; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb5dbb04712066224; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5a7f56cabf65b45a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3d00d2213c765658; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h98410ff872bffefd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdcf99598e6ba277c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2fbc291a570db5c4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2cb7091f844a486d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hda91351381bd621d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc434ae54a6c6c60b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h03b9991d137ce798; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1d0cc05399402510; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h044dce73c450552c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hae78de8174f03f96; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0122990ce22c336a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb6b1652b6b3bb1cf; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hde712d74adbae4f8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf9c39986d59552e2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he98f5419217a1b24; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h15985fe377c23b99; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd515485d23ddad19; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h81bffd4bd6757b96; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6cc5defaaf04512f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc5d6090efe1729bc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'haab7b0e61960e61b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdc8536242c20b511; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb7349f3b8a314d72; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h97491e21d73a07a6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd98db605ce44c0a0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5ec10a30d527952e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h66c2df945c652d9c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h57720bad90d8d71f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h72f56c0c81ac8707; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8cfdd9d51532ee1c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb6a1762eb2db033c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h575ea069cc763b18; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h86c1969c99db5d58; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9d212f7a749a1819; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3f775a1d61cf6d8e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc8225bac7da6cac9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbc98e679f2111bb3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc403e08c6aaacbf7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h161b63d0e54e2a9c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbd7152110c206cea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hddda44c0473ba91a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4479977b17f9846f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8479f80588420fcb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf7527fe42f268d0e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h97d01b580d230220; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h479f2b1a95f4be7c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he6b4abdcd2a6c229; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h190edcb4f661cec1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5778669e9ceeb896; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hca70587e4dfb90b9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0953e2258e8e90a1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h95f8a5e5dd31d900; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h80b18a751b306f5b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd9031b0271bd5a0a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8a241606cfada606; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd025fbccec8243c9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he95aab1d20063e96; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2b9f982f20037fa9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdb677e26d1006cbc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h231a0eb993c4ae05; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6f2c565d2bd99034; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6e07c789bc3a6d78; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h766f3cb958beda33; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h445ec53dd0028416; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'haee91480dcc885be; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h750d079407521363; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h350441f810170d63; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h28e8c8fbdbb6de4c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hffebb9bc04715f3b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1ff4eb0bb21af351; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h42d5539c2f4c978d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2d4499ecffd12003; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1bee4cd1f2cd2abc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8d9b16b2eee71f2a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h136198cfdc3e40b6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha43d41834401c6e5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'haaf5d1935a66b659; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h05382b8a88832ba3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h245602af7d55ba85; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h931f143e5c9d697c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5e1d28686d142e9a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he943d7568aec0c5c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h35fb3f25d3c5219e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h354f374e47ed157f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hda05adc68d3cd258; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h71524f6d6b543f37; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3aa99a9c601dd2e8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9a66c4c6b5dd7dd4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h51a07b83a74c1b3e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3c251fda1bd52bd8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd21d1b3985c7ce70; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb954096f58231906; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hee2364dd4356e109; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7f74e4f797f5ab80; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hba265a0333faff27; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1d4f67475b8f4df6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h425b85530a4a787e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf5346437eb98894d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbe6213977643e65d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc8c537f5162ccbb2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha88b00db59e09994; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he4edc6183e86e93f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdb54422267329c19; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h579ec3e5f27dd01c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h50b27f8fa85a8ef3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9d446e3958dbb409; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc50241fc992f774b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2bc0877c4d2c904b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hffcf3887e70f09e6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfb459ab293181a09; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7e40aefbdabc3e61; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdc61264874b01eb6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1805bd4771087fcb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf02b263b328e2b60; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb160e4680f6c696f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h332a2f0f750fca19; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h79e90dbc98f92cca; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h69ab0ca2f062938b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf77098453548f43b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8b258f93b94625bb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1d1ca853ae7c0c5f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha46e83cbe229ff57; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd120b0b03045f1eb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2cc770699d6f5ab9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h01392f27ad409825; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbbd1497b6d43a9b1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h223ab402c2bcbc44; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0477d6bf911fdb61; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0953e2258e8e90a1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7dac3d40e1a96b1c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc392e37ad7f8540d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h377389cb13e9f54a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8139e703d2ceec40; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h51f02d060c83dcc0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he95637f45c109a7d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1aab35b4d4abe62d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h126d851629b41d3b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3d5a59457962686c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5320efe05c99935e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h43163e99ea977299; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h61e6af82bcdab4c9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6dcac8848da5272a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h12478bac5fd18abc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf84d0c93b6f9118c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h95f8a5e5dd31d900; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd3dc060dbf551377; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h60daf5ca7dadeb74; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h35795a6d86da1459; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5081751ebcd9f00e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2a23803e94070ef6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha5882c3a5f3700ec; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2267dd74f4b392df; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hda7abfec28c7f4b9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h838a832a1d1b744a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf0cbb2daac5b95ce; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h07f544e12f98628f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3f1934e8a6fdfe78; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc6f241adfba0a342; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h04019515420d2478; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h288bd18b66a74a48; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h80b18a751b306f5b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2da85f97af2c1ad6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hddb824f2a9285aea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6961c44ed7a56e58; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9e60754c4ad5e9fd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h093b34e76fe03c10; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc3529fb66068d4e2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb63e58ab57466f0d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5f61795c90043e2d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he8b8de451754ee89; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he8ab7c21d1e3c79d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h440ebc143620b231; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hed78cb724265d04b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb5d523b51b19e59f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h064e5c0e25763e14; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc9586d3206b2feca; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcc083f1e6d9e85f6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2e8653104f3834ea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h52ab03a1b099ccbc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb8061b7ecd9a21e5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h557e9a12ac0afffb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4c6a3da2f87806de; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd43512cf86e305ac; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he19e275d846a1298; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h34d54b374e2c7eee; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9fd0517ee2764b5a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7673fbda4ed92b98; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0978292308b48e31; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0792ffd7fd70afbe; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3c0c2c1332ed2afc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc38a9dff2c7a46c7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf02b263b328e2b60; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcccf24c9e9a1c4e8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he4147c129d321a4c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h209aa9e16a3791dd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h821b72ae800e2103; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hafd5a56aafcb4eff; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h204599e1e7f7fdab; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha9c1cdf45002660b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h80c9262166135333; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hca05adecfc169058; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h21fab493110eaec0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h96e491d7a9cfda4c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h03d0b0576af7632c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he275f734e742cc34; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3aaed04fbfec06b6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h091b7a43e3746663; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb160e4680f6c696f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha8f7b31bbb4d33b1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hac3a56cf82c0f8eb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5f20fccac6091df4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h444aa0aff374c7e2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5a373287ade64a2e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h355a6394f3445f50; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfe0e005666666f7a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha09c09013214b53b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9c301691fea2a3e8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcdbf984043ebc130; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1b028025e18b29df; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h05363a7962fb6d2d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2e7adb3d23734a75; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9413f2c59bcd26be; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h17fea307e809ba37; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h332a2f0f750fca19; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfeb168d710a301fa; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha1cb3d49e749927a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb0d99821057c1a00; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8979aef813e1e57c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h483634f906853666; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h53504f8cabdd0bf5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h187ff6ef62972963; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha15e7e69e21ab72d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd4a58d4e3335a021; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h42cb30e1ff9ce893; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h020d4d30ffabb783; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdc28d32aab409fd7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfcaf3e9a9e8c3a15; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3cf6da2111aad310; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbcba9fbc055d93cb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd106ff0bed5255d7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hca3a2b036dbc8502; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf19a0f8c5cb3c160; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8b54536f2f3e64a8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h84e15a039c9b12d4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9dc40a1238746816; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h90e49f2d8d200911; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8405d1abe24fb942; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3c9191e2f4447c43; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha0faadeb9948acc1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb6513d9ea58eb8af; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5fb63f575f4b1c49; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h670bffef4c6c1c3e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc100aff25cd4a617; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2e9ec2bff2a8d3d6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcc083f1e6d9e85f6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h12a51255ec90300c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h38000b4daa965081; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd39c9261f644041d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcd80c09323ad8f51; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4ec745de59b7ad13; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6dc43c764ffc1831; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9eb4344208cb8a02; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h25b45b599a53394b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he801af92f2829665; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4009b21df04fb834; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0cad8a1ac6d9c462; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h52a59dc26f4df808; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h249388e5dddb1311; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h83603834d8c16e69; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'heceadf955b2a0b62; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2e8653104f3834ea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4977a34a97746bcf; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2e307cbdeccb549a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfbab06086d0e038d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc4278f8053a4df28; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdc697419dcb9a7f2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfcc24a0276975ea3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h73087a1abec25666; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h673acf48a2910ee0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2319dd6fe630c599; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h274ddc6887f33ea9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h34bbe1604f7ea44b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7b44497638c38f56; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'heb05e519eca00a25; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb18af9c352e780fd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h064a7caf8642b6c8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h52ab03a1b099ccbc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd6c0de0c3ceb1f17; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h22eec97ad3a37451; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h487bb821a7780fa9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha38125cb63d45b89; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha304b1c0a0a1e732; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc9bc9d83595ec0e9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he01210ee450c7550; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcced13d9d8c00764; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0e332ef906eaaddd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf3423fb76b0172e1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h65fd818e72461fe1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h840471b64bff6243; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h48e6e4d81994b588; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7c3249a82847257f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h25dbe22b7481a5af; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h06e7ea22ce92708f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h20b9e767b2fb1456; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5ee35aa3a178d235; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hadd0cc8d6e5deba1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8e178778f74e6ff0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8cea2936d38e9c32; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h894f2521bd6b7803; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he7fce22557d23c97; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h450e1e3fc2de3358; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h35c648d58178294a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h94123ffefe3e9c08; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hba9e468fe1eba516; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1f391419abf4433b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h05ae5858dc20f760; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc3981ca50658dd54; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd106ff0bed5255d7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9d12767a52b0eac4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h09ac4f45a512c109; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4f399a73264f9911; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc077d2257d2590dd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h766a4d5bf09ab915; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb68e0986fbd4f2ea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf7f895de8b8742e1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h854a731fa3a0f381; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5b8a01761c124cef; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9a0a0eb089c519d6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h64356419d30ac518; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h76b74b040ff64b8e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hda750e85a5415cd6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h111fd6905a7dfed9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1d2c5adbc58ecb98; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hca3a2b036dbc8502; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbd203d2fc7efedba; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hda25e9a9749b9586; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0ef8dcedb73f47d5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h36e441dbd104efd1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdeb910017f2db2f7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h81aadcb2b42ca0f1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9bd657bf3a287efd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0727854a848088b6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3d0940363d2e5476; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1bdd4afeb977537d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h13b8cca7338bb10e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcd290ca88a996f1b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h21af7683da9eb41c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h533d7da1d2dc2a49; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc5644290601ffa86; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf19a0f8c5cb3c160; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2d16997cb1aba051; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hecddebf9fbc75a29; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h371f39375b26ee21; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf106f7ad990133cf; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7a35e6db1ab21560; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h30694fb8b634fb8a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1d0d885fa8a16df8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h90a89dbc49f398c9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h615588f2c0e99bf7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he9a295aa32b0a108; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc41c0aec6271b941; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h08f1823fe823ff97; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h26dbdcabd97b17ea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h507c71c0375b10d3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8f07ba7331a87d9d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he428581186ec8f46; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h814eeb3b91d90726; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h85dfe7fd654940ef; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcaffc6ac4542de31; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h83554263d455acae; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcfb2fb60813b0a59; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7f6d14b22a811dae; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h48221b9937748a23; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hce4c377f5b0a6e9c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf2b1feadfad2ef75; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8e1e63eb8f4dcf5a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6f8ac619f506fdce; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdcc83fe382bfc8f6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8940ae04932d3053; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h48e96cbd92940131; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h06e7ea22ce92708f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc596e91e3811fab5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6629a011bbcb0db7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc11dd8d92c3f4ab4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcc511aa3a2e80c10; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h058f4fa0951edc5c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5bc39502885c9e15; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7371d25c8e2d83b8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hac5619e4068e2887; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3be434546d549a8a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h69e69631cf6295db; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'had7cef9e42b5888e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ccac4b7dfc6b4da; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1eaf34bca7a82b95; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc594e27021e6d053; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h65810e6fe9cfb70d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h20b9e767b2fb1456; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h089a890920a3efd7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6448fc850c36b970; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h575f9cce906e42ae; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h59b45096fac1052c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6bdcc7c3bc038917; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd2c545bd892a5535; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7019a2b7d3decde0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9c331412e6e549e8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc259c842ddd25bf6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfb4d8c131ecbecf4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc61eac96aa887142; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc25645c05729eca1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hebc7ca31435bba3b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h426e3a34124872e6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h970142d38ac84fda; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5ee35aa3a178d235; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hca109085825888e2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'had4d9f3b68ca3166; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h456e4b3f385ed21e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he6c7091d8da3adc5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc648cf6ed1345351; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hffc91807e72f918e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'haf0348f2b08548f1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2354bf9b8c5119c7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd48c6fb0e87a58c3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h04568c74acd82307; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hadd8d916badaf1bb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h85d8c1bccef3c555; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf698c3783d91fcc4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbb8522253a8de637; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h46569ced02870d18; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2fbc291a570db5c4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6cc5defaaf04512f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3f775a1d61cf6d8e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hecbfe3bd3f591a5e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6efbb077d01ace44; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3470ea1e02d07a2f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h73ae1f3e47f148f1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha484c3ad38dc9c19; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb96ba95407704715; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc4ca67624008f023; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5079543896c67823; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9b2c555ea32034b4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdcfe0d70f896700a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbd5ba147598052fd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1e834f303318c6c3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he428581186ec8f46; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf07415dbf673a18f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7184c09ad069dd39; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h668a84572bc7600b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5166fe1cfeae7ede; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2b537219788c2981; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h213e52a5b40b9264; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0fa1636715135f47; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6a8d507329d8c4eb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf8a368929a176c03; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h403e8dc9c0571604; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha3a87ad14ea8361d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1bca08e692bf193d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6c5b7018a6063388; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he025790a54efd9be; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h172018e1754a8318; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h814eeb3b91d90726; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h63108501b9d85a36; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2197c4980d872389; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h55502d85ab77bcaf; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h06a3c90938bc96a3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcab1011d859f7bbd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb4aa24b655c608cd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc4067ef70cfec520; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha8bc75521ca5cfd3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4cd11635dc6085cd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbd5dbacbabf06d07; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h10ad22b60287c1b2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4ac79e559c73bdad; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1e58ca80f9d91dc9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3b2e0013101f7d4f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h27ca93528a39a8c9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h85dfe7fd654940ef; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb3dcee657239cf94; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb232133c6d5c0120; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2442305c3e814f4e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7a4e355b7db52e1b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha4f2d3b51a9c4af5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hef0220b6a8cc3260; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h38f80b49d28656c7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4bc7235480fdb8d6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h823bff5a3634ce9e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h18f2f7448d56bfbe; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h19790e74389f0827; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h03af3d3a6735a78a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdd8867b3150c08d7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbf95dcdfef72f819; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hab4255669930bb1d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end

ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h750d079407521363; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he943d7568aec0c5c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf5346437eb98894d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h25eb5fc3f8cf0621; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8eef46c5b7ad8f00; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfa42ea81932764cf; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h701403f568ed4c42; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1029d55e880ec2d0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h491a59ce2c85bdc5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha39d174735f02865; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb5dbb04712066224; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5a7f56cabf65b45a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3d00d2213c765658; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h98410ff872bffefd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdcf99598e6ba277c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2fbc291a570db5c4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2cb7091f844a486d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hda91351381bd621d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc434ae54a6c6c60b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h03b9991d137ce798; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1d0cc05399402510; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h044dce73c450552c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hae78de8174f03f96; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0122990ce22c336a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb6b1652b6b3bb1cf; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hde712d74adbae4f8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf9c39986d59552e2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he98f5419217a1b24; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h15985fe377c23b99; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd515485d23ddad19; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h81bffd4bd6757b96; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6cc5defaaf04512f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc5d6090efe1729bc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'haab7b0e61960e61b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdc8536242c20b511; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb7349f3b8a314d72; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h97491e21d73a07a6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd98db605ce44c0a0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5ec10a30d527952e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h66c2df945c652d9c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h57720bad90d8d71f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h72f56c0c81ac8707; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8cfdd9d51532ee1c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb6a1762eb2db033c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h575ea069cc763b18; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h86c1969c99db5d58; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9d212f7a749a1819; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3f775a1d61cf6d8e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc8225bac7da6cac9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbc98e679f2111bb3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc403e08c6aaacbf7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h161b63d0e54e2a9c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbd7152110c206cea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hddda44c0473ba91a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4479977b17f9846f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8479f80588420fcb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf7527fe42f268d0e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h97d01b580d230220; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h479f2b1a95f4be7c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he6b4abdcd2a6c229; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h190edcb4f661cec1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5778669e9ceeb896; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hca70587e4dfb90b9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0953e2258e8e90a1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h95f8a5e5dd31d900; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h80b18a751b306f5b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd9031b0271bd5a0a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8a241606cfada606; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd025fbccec8243c9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he95aab1d20063e96; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2b9f982f20037fa9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdb677e26d1006cbc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h231a0eb993c4ae05; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6f2c565d2bd99034; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6e07c789bc3a6d78; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h766f3cb958beda33; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h445ec53dd0028416; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'haee91480dcc885be; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h750d079407521363; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h350441f810170d63; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h28e8c8fbdbb6de4c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hffebb9bc04715f3b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1ff4eb0bb21af351; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h42d5539c2f4c978d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2d4499ecffd12003; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1bee4cd1f2cd2abc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8d9b16b2eee71f2a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h136198cfdc3e40b6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha43d41834401c6e5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'haaf5d1935a66b659; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h05382b8a88832ba3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h245602af7d55ba85; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h931f143e5c9d697c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5e1d28686d142e9a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he943d7568aec0c5c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h35fb3f25d3c5219e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h354f374e47ed157f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hda05adc68d3cd258; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h71524f6d6b543f37; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3aa99a9c601dd2e8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9a66c4c6b5dd7dd4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h51a07b83a74c1b3e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3c251fda1bd52bd8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd21d1b3985c7ce70; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb954096f58231906; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hee2364dd4356e109; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7f74e4f797f5ab80; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hba265a0333faff27; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1d4f67475b8f4df6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h425b85530a4a787e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf5346437eb98894d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbe6213977643e65d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc8c537f5162ccbb2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha88b00db59e09994; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he4edc6183e86e93f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdb54422267329c19; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h579ec3e5f27dd01c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h50b27f8fa85a8ef3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9d446e3958dbb409; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc50241fc992f774b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2bc0877c4d2c904b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hffcf3887e70f09e6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfb459ab293181a09; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7e40aefbdabc3e61; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdc61264874b01eb6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1805bd4771087fcb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf02b263b328e2b60; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb160e4680f6c696f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h332a2f0f750fca19; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h79e90dbc98f92cca; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h69ab0ca2f062938b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf77098453548f43b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8b258f93b94625bb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1d1ca853ae7c0c5f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha46e83cbe229ff57; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd120b0b03045f1eb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2cc770699d6f5ab9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h01392f27ad409825; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbbd1497b6d43a9b1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h223ab402c2bcbc44; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0477d6bf911fdb61; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0953e2258e8e90a1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7dac3d40e1a96b1c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc392e37ad7f8540d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h377389cb13e9f54a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8139e703d2ceec40; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h51f02d060c83dcc0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he95637f45c109a7d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1aab35b4d4abe62d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h126d851629b41d3b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3d5a59457962686c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5320efe05c99935e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h43163e99ea977299; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h61e6af82bcdab4c9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6dcac8848da5272a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h12478bac5fd18abc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf84d0c93b6f9118c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h95f8a5e5dd31d900; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd3dc060dbf551377; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h60daf5ca7dadeb74; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h35795a6d86da1459; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5081751ebcd9f00e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2a23803e94070ef6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha5882c3a5f3700ec; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2267dd74f4b392df; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hda7abfec28c7f4b9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h838a832a1d1b744a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf0cbb2daac5b95ce; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h07f544e12f98628f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3f1934e8a6fdfe78; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc6f241adfba0a342; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h04019515420d2478; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h288bd18b66a74a48; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h80b18a751b306f5b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2da85f97af2c1ad6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hddb824f2a9285aea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6961c44ed7a56e58; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9e60754c4ad5e9fd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h093b34e76fe03c10; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc3529fb66068d4e2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb63e58ab57466f0d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5f61795c90043e2d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he8b8de451754ee89; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he8ab7c21d1e3c79d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h440ebc143620b231; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hed78cb724265d04b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb5d523b51b19e59f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h064e5c0e25763e14; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc9586d3206b2feca; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcc083f1e6d9e85f6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2e8653104f3834ea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h52ab03a1b099ccbc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb8061b7ecd9a21e5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h557e9a12ac0afffb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4c6a3da2f87806de; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd43512cf86e305ac; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he19e275d846a1298; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h34d54b374e2c7eee; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9fd0517ee2764b5a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7673fbda4ed92b98; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0978292308b48e31; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0792ffd7fd70afbe; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3c0c2c1332ed2afc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc38a9dff2c7a46c7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf02b263b328e2b60; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcccf24c9e9a1c4e8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he4147c129d321a4c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h209aa9e16a3791dd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h821b72ae800e2103; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hafd5a56aafcb4eff; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h204599e1e7f7fdab; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha9c1cdf45002660b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h80c9262166135333; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hca05adecfc169058; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h21fab493110eaec0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h96e491d7a9cfda4c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h03d0b0576af7632c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he275f734e742cc34; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3aaed04fbfec06b6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h091b7a43e3746663; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb160e4680f6c696f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha8f7b31bbb4d33b1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hac3a56cf82c0f8eb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5f20fccac6091df4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h444aa0aff374c7e2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5a373287ade64a2e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h355a6394f3445f50; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfe0e005666666f7a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha09c09013214b53b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9c301691fea2a3e8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcdbf984043ebc130; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1b028025e18b29df; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h05363a7962fb6d2d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2e7adb3d23734a75; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9413f2c59bcd26be; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h17fea307e809ba37; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h332a2f0f750fca19; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfeb168d710a301fa; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha1cb3d49e749927a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb0d99821057c1a00; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8979aef813e1e57c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h483634f906853666; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h53504f8cabdd0bf5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h187ff6ef62972963; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha15e7e69e21ab72d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd4a58d4e3335a021; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h42cb30e1ff9ce893; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h020d4d30ffabb783; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdc28d32aab409fd7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfcaf3e9a9e8c3a15; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3cf6da2111aad310; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbcba9fbc055d93cb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd106ff0bed5255d7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hca3a2b036dbc8502; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf19a0f8c5cb3c160; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8b54536f2f3e64a8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h84e15a039c9b12d4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9dc40a1238746816; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h90e49f2d8d200911; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8405d1abe24fb942; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3c9191e2f4447c43; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha0faadeb9948acc1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb6513d9ea58eb8af; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5fb63f575f4b1c49; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h670bffef4c6c1c3e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc100aff25cd4a617; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2e9ec2bff2a8d3d6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcc083f1e6d9e85f6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h12a51255ec90300c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h38000b4daa965081; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd39c9261f644041d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcd80c09323ad8f51; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4ec745de59b7ad13; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6dc43c764ffc1831; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9eb4344208cb8a02; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h25b45b599a53394b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he801af92f2829665; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4009b21df04fb834; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0cad8a1ac6d9c462; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h52a59dc26f4df808; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h249388e5dddb1311; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h83603834d8c16e69; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'heceadf955b2a0b62; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2e8653104f3834ea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4977a34a97746bcf; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2e307cbdeccb549a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfbab06086d0e038d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc4278f8053a4df28; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdc697419dcb9a7f2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfcc24a0276975ea3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h73087a1abec25666; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h673acf48a2910ee0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2319dd6fe630c599; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h274ddc6887f33ea9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h34bbe1604f7ea44b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7b44497638c38f56; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'heb05e519eca00a25; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb18af9c352e780fd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h064a7caf8642b6c8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h52ab03a1b099ccbc; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd6c0de0c3ceb1f17; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h22eec97ad3a37451; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h487bb821a7780fa9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha38125cb63d45b89; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha304b1c0a0a1e732; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc9bc9d83595ec0e9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he01210ee450c7550; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcced13d9d8c00764; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0e332ef906eaaddd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf3423fb76b0172e1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h65fd818e72461fe1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h840471b64bff6243; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h48e6e4d81994b588; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7c3249a82847257f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h25dbe22b7481a5af; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h06e7ea22ce92708f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h20b9e767b2fb1456; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5ee35aa3a178d235; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hadd0cc8d6e5deba1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8e178778f74e6ff0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8cea2936d38e9c32; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h894f2521bd6b7803; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he7fce22557d23c97; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h450e1e3fc2de3358; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h35c648d58178294a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h94123ffefe3e9c08; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hba9e468fe1eba516; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1f391419abf4433b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h05ae5858dc20f760; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc3981ca50658dd54; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd106ff0bed5255d7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9d12767a52b0eac4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h09ac4f45a512c109; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4f399a73264f9911; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc077d2257d2590dd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h766a4d5bf09ab915; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb68e0986fbd4f2ea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf7f895de8b8742e1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h854a731fa3a0f381; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5b8a01761c124cef; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9a0a0eb089c519d6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h64356419d30ac518; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h76b74b040ff64b8e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hda750e85a5415cd6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h111fd6905a7dfed9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1d2c5adbc58ecb98; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hca3a2b036dbc8502; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbd203d2fc7efedba; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hda25e9a9749b9586; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0ef8dcedb73f47d5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h36e441dbd104efd1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdeb910017f2db2f7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h81aadcb2b42ca0f1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9bd657bf3a287efd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0727854a848088b6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3d0940363d2e5476; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1bdd4afeb977537d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h13b8cca7338bb10e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcd290ca88a996f1b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h21af7683da9eb41c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h533d7da1d2dc2a49; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc5644290601ffa86; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf19a0f8c5cb3c160; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2d16997cb1aba051; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hecddebf9fbc75a29; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h371f39375b26ee21; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf106f7ad990133cf; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7a35e6db1ab21560; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h30694fb8b634fb8a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1d0d885fa8a16df8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h90a89dbc49f398c9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h615588f2c0e99bf7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he9a295aa32b0a108; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc41c0aec6271b941; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h08f1823fe823ff97; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h26dbdcabd97b17ea; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h507c71c0375b10d3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8f07ba7331a87d9d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he428581186ec8f46; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h814eeb3b91d90726; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h85dfe7fd654940ef; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcaffc6ac4542de31; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h83554263d455acae; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcfb2fb60813b0a59; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7f6d14b22a811dae; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h48221b9937748a23; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hce4c377f5b0a6e9c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf2b1feadfad2ef75; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8e1e63eb8f4dcf5a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6f8ac619f506fdce; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdcc83fe382bfc8f6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8940ae04932d3053; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h48e96cbd92940131; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h06e7ea22ce92708f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc596e91e3811fab5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6629a011bbcb0db7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc11dd8d92c3f4ab4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcc511aa3a2e80c10; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h058f4fa0951edc5c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5bc39502885c9e15; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7371d25c8e2d83b8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hac5619e4068e2887; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3be434546d549a8a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h69e69631cf6295db; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'had7cef9e42b5888e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ccac4b7dfc6b4da; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1eaf34bca7a82b95; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc594e27021e6d053; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h65810e6fe9cfb70d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h20b9e767b2fb1456; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h089a890920a3efd7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6448fc850c36b970; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h575f9cce906e42ae; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h59b45096fac1052c; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6bdcc7c3bc038917; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd2c545bd892a5535; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7019a2b7d3decde0; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9c331412e6e549e8; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc259c842ddd25bf6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hfb4d8c131ecbecf4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc61eac96aa887142; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc25645c05729eca1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hebc7ca31435bba3b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h426e3a34124872e6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h970142d38ac84fda; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5ee35aa3a178d235; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hca109085825888e2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'had4d9f3b68ca3166; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h456e4b3f385ed21e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he6c7091d8da3adc5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc648cf6ed1345351; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hffc91807e72f918e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'haf0348f2b08548f1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2354bf9b8c5119c7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hd48c6fb0e87a58c3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h04568c74acd82307; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hadd8d916badaf1bb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h85d8c1bccef3c555; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf698c3783d91fcc4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbb8522253a8de637; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h46569ced02870d18; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h8ca64de9c1b123a7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2fbc291a570db5c4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6cc5defaaf04512f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3f775a1d61cf6d8e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hecbfe3bd3f591a5e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6efbb077d01ace44; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3470ea1e02d07a2f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h73ae1f3e47f148f1; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha484c3ad38dc9c19; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb96ba95407704715; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc4ca67624008f023; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5079543896c67823; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h9b2c555ea32034b4; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdcfe0d70f896700a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbd5ba147598052fd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1e834f303318c6c3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he428581186ec8f46; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf07415dbf673a18f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7184c09ad069dd39; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h668a84572bc7600b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h5166fe1cfeae7ede; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2b537219788c2981; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h213e52a5b40b9264; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h0fa1636715135f47; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6a8d507329d8c4eb; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hf8a368929a176c03; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h403e8dc9c0571604; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha3a87ad14ea8361d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1bca08e692bf193d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h6c5b7018a6063388; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'he025790a54efd9be; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h172018e1754a8318; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h814eeb3b91d90726; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h63108501b9d85a36; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2197c4980d872389; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h55502d85ab77bcaf; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h06a3c90938bc96a3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hcab1011d859f7bbd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb4aa24b655c608cd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hc4067ef70cfec520; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha8bc75521ca5cfd3; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4cd11635dc6085cd; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbd5dbacbabf06d07; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h10ad22b60287c1b2; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4ac79e559c73bdad; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h1e58ca80f9d91dc9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h3b2e0013101f7d4f; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h27ca93528a39a8c9; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h85dfe7fd654940ef; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb3dcee657239cf94; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hb232133c6d5c0120; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h2442305c3e814f4e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h7a4e355b7db52e1b; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'ha4f2d3b51a9c4af5; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hef0220b6a8cc3260; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h38f80b49d28656c7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h4bc7235480fdb8d6; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h823bff5a3634ce9e; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h18f2f7448d56bfbe; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h19790e74389f0827; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'h03af3d3a6735a78a; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hdd8867b3150c08d7; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hbf95dcdfef72f819; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
ciphertext = 64'hab4255669930bb1d; @(posedge clk); if( ciphertext !== data_out) begin $display("ERROR: output data=%h, expected data=%h", data_out, ciphertext); $finish; end
end
join

    $display("SUCCESS!");
    $finish;
end

always #(1us) clk <= ~clk;

top_TDES_encrypt top1( .clk(clk), .nrst(nrst), .key1(key1), .key2(key2), .key3(key3), .data(plaintext), .data_out(data_out));




endmodule
