`timescale 1ns/10ps

module key_encrypt(input [63:0] key_input,
           input clk,
           input nrst,
           output logic [767:0] key_output); // [48*16-1:0]
           
           
// permutation KI 
logic [55:0] key_p;
assign key_p = {key_input[7],  key_input[15], key_input[23], key_input[31], key_input[39], key_input[47], key_input[55], key_input[63], key_input[6],  key_input[14], key_input[22], key_input[30], key_input[38], key_input[46],
                key_input[54], key_input[62], key_input[5],  key_input[13], key_input[21], key_input[29], key_input[37], key_input[45], key_input[53], key_input[61], key_input[4],  key_input[12], key_input[20], key_input[28],
                key_input[1],  key_input[9],  key_input[17], key_input[25], key_input[33], key_input[41], key_input[49], key_input[57], key_input[2],  key_input[10], key_input[18], key_input[26], key_input[34], key_input[42],
                key_input[50], key_input[58], key_input[3],  key_input[11], key_input[19], key_input[27], key_input[35], key_input[43], key_input[51], key_input[59], key_input[36], key_input[44], key_input[52], key_input[60]};







logic [895:0] key_sh;
// shifting
always @( posedge clk or negedge nrst)
begin
    if( !nrst)
        key_sh <= 896'h0;
    else
        key_sh <= { key_sh[838:812] ,  key_sh[839] ,      key_sh[810:784], key_sh[811],         // 16
                    key_sh[781:756] ,  key_sh[783:782] ,  key_sh[753:728], key_sh[755:754],     // 15
                    key_sh[725:700] ,  key_sh[727:726] ,  key_sh[697:672], key_sh[699:698],     // 14
                    key_sh[669:644] ,  key_sh[671:670] ,  key_sh[641:616], key_sh[643:642],     // 13
                    key_sh[613:588] ,  key_sh[615:614] ,  key_sh[585:560], key_sh[587:586],     // 12
                    key_sh[557:532] ,  key_sh[559:558] ,  key_sh[529:504], key_sh[531:530],     // 11
                    key_sh[501:476] ,  key_sh[503:502] ,  key_sh[473:448], key_sh[475:474],     // 10
                    key_sh[446:420] ,  key_sh[447] ,      key_sh[418:392], key_sh[419],         // 9
                    key_sh[389:364] ,  key_sh[391:390] ,  key_sh[361:336], key_sh[363:362],     // 8
                    key_sh[333:308] ,  key_sh[335:334] ,  key_sh[305:280], key_sh[307:306],     // 7
                    key_sh[277:252] ,  key_sh[279:278] ,  key_sh[249:224], key_sh[251:250],     // 6
                    key_sh[221:196] ,  key_sh[223:222] ,  key_sh[193:168], key_sh[195:194],     // 5
                    key_sh[165:140] ,  key_sh[167:166] ,  key_sh[137:112], key_sh[139:138],     // 4
                    key_sh[109:84]  ,  key_sh[111:110] ,  key_sh[81:56],   key_sh[83:82],       // 3
                    key_sh[54:28]   ,  key_sh[55],        key_sh[26:0],    key_sh[27],          // 2
                    key_p [54:28]   ,  key_p [55],        key_p[26:0] ,    key_p[27] };         // 1
end

// output permutation KO
genvar stage;
generate for(stage = 0; stage < 16; stage = stage + 1)
    assign key_output[stage*48+47:stage*48] = {key_sh[42 + stage*56], key_sh[39 + stage*56], key_sh[45 + stage*56], key_sh[32 + stage*56], key_sh[55 + stage*56], key_sh[51 + stage*56], key_sh[53 + stage*56], key_sh[28 + stage*56],
                                               key_sh[41 + stage*56], key_sh[50 + stage*56], key_sh[35 + stage*56], key_sh[46 + stage*56], key_sh[33 + stage*56], key_sh[37 + stage*56], key_sh[44 + stage*56], key_sh[52 + stage*56], 
                                               key_sh[30 + stage*56], key_sh[48 + stage*56], key_sh[40 + stage*56], key_sh[49 + stage*56], key_sh[29 + stage*56], key_sh[36 + stage*56], key_sh[43 + stage*56], key_sh[54 + stage*56],
                                               key_sh[15 + stage*56], key_sh[4 + stage*56],  key_sh[25 + stage*56], key_sh[19 + stage*56], key_sh[9 + stage*56],  key_sh[1 + stage*56],  key_sh[26 + stage*56], key_sh[16 + stage*56], 
                                               key_sh[5 + stage*56],  key_sh[11 + stage*56], key_sh[23 + stage*56], key_sh[8 + stage*56],  key_sh[12 + stage*56], key_sh[7 + stage*56],  key_sh[17 + stage*56], key_sh[0 + stage*56],
                                               key_sh[22 + stage*56], key_sh[3 + stage*56],  key_sh[10 + stage*56], key_sh[14 + stage*56], key_sh[6 + stage*56],  key_sh[20 + stage*56], key_sh[27 + stage*56], key_sh[24 + stage*56]};

endgenerate

endmodule
