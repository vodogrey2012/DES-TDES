`timescale 1ns/10ps

module op( input [63:0] in,
           output logic [63:0] out);


assign out = {in[24], in[56], in[16], in[48], in[8],  in[40], in[0], in[32], in[25], in[57], in[17], in[49], in[9],  in[41], in[1], in[33],
              in[26], in[58], in[18], in[50], in[10], in[42], in[2], in[34], in[27], in[59], in[19], in[51], in[11], in[43], in[3], in[35],
              in[28], in[60], in[20], in[52], in[12], in[44], in[4], in[36], in[29], in[61], in[21], in[53], in[13], in[45], in[5], in[37],
              in[30], in[62], in[22], in[54], in[14], in[46], in[6], in[38], in[31], in[63], in[23], in[55], in[15], in[47], in[7], in[39]};
endmodule
