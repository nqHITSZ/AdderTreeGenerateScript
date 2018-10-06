`timescale 1ns / 1ps
//Create Date: 2018-10-06 13:43:37
//Author: NQ
//University: Harbin Institute of Tecnology,ShenZhen

//Note: This module is an unsigned processor
module AdderTree #(parameter
    DATA_WIDTH = 8, RESULT_WIDTH = 14
)
(
    input clk, //rst,
    input din_valid, 
    output dout_valid,

    input [DATA_WIDTH-1:0] i_0,
    input [DATA_WIDTH-1:0] i_1,
    input [DATA_WIDTH-1:0] i_2,
    input [DATA_WIDTH-1:0] i_3,
    input [DATA_WIDTH-1:0] i_4,
    input [DATA_WIDTH-1:0] i_5,
    input [DATA_WIDTH-1:0] i_6,
    input [DATA_WIDTH-1:0] i_7,
    input [DATA_WIDTH-1:0] i_8,
    input [DATA_WIDTH-1:0] i_9,
    input [DATA_WIDTH-1:0] i_10,
    input [DATA_WIDTH-1:0] i_11,
    input [DATA_WIDTH-1:0] i_12,
    input [DATA_WIDTH-1:0] i_13,
    input [DATA_WIDTH-1:0] i_14,
    input [DATA_WIDTH-1:0] i_15,
    input [DATA_WIDTH-1:0] i_16,
    input [DATA_WIDTH-1:0] i_17,
    input [DATA_WIDTH-1:0] i_18,
    input [DATA_WIDTH-1:0] i_19,
    input [DATA_WIDTH-1:0] i_20,
    input [DATA_WIDTH-1:0] i_21,
    input [DATA_WIDTH-1:0] i_22,
    input [DATA_WIDTH-1:0] i_23,
    input [DATA_WIDTH-1:0] i_24,
    input [DATA_WIDTH-1:0] i_25,
    input [DATA_WIDTH-1:0] i_26,
    input [DATA_WIDTH-1:0] i_27,
    input [DATA_WIDTH-1:0] i_28,
    input [DATA_WIDTH-1:0] i_29,
    input [DATA_WIDTH-1:0] i_30,
    input [DATA_WIDTH-1:0] i_31,
    input [DATA_WIDTH-1:0] i_32,
    input [DATA_WIDTH-1:0] i_33,
    input [DATA_WIDTH-1:0] i_34,
    input [DATA_WIDTH-1:0] i_35,
    input [DATA_WIDTH-1:0] i_36,

    output [RESULT_WIDTH-1:0] sum
);
wire [DATA_WIDTH-1+0 :0] lay0_0;
wire [DATA_WIDTH-1+0 :0] lay0_1;
wire [DATA_WIDTH-1+0 :0] lay0_2;
wire [DATA_WIDTH-1+0 :0] lay0_3;
wire [DATA_WIDTH-1+0 :0] lay0_4;
wire [DATA_WIDTH-1+0 :0] lay0_5;
wire [DATA_WIDTH-1+0 :0] lay0_6;
wire [DATA_WIDTH-1+0 :0] lay0_7;
wire [DATA_WIDTH-1+0 :0] lay0_8;
wire [DATA_WIDTH-1+0 :0] lay0_9;
wire [DATA_WIDTH-1+0 :0] lay0_10;
wire [DATA_WIDTH-1+0 :0] lay0_11;
wire [DATA_WIDTH-1+0 :0] lay0_12;
wire [DATA_WIDTH-1+0 :0] lay0_13;
wire [DATA_WIDTH-1+0 :0] lay0_14;
wire [DATA_WIDTH-1+0 :0] lay0_15;
wire [DATA_WIDTH-1+0 :0] lay0_16;
wire [DATA_WIDTH-1+0 :0] lay0_17;
wire [DATA_WIDTH-1+0 :0] lay0_18;
wire [DATA_WIDTH-1+0 :0] lay0_19;
wire [DATA_WIDTH-1+0 :0] lay0_20;
wire [DATA_WIDTH-1+0 :0] lay0_21;
wire [DATA_WIDTH-1+0 :0] lay0_22;
wire [DATA_WIDTH-1+0 :0] lay0_23;
wire [DATA_WIDTH-1+0 :0] lay0_24;
wire [DATA_WIDTH-1+0 :0] lay0_25;
wire [DATA_WIDTH-1+0 :0] lay0_26;
wire [DATA_WIDTH-1+0 :0] lay0_27;
wire [DATA_WIDTH-1+0 :0] lay0_28;
wire [DATA_WIDTH-1+0 :0] lay0_29;
wire [DATA_WIDTH-1+0 :0] lay0_30;
wire [DATA_WIDTH-1+0 :0] lay0_31;
wire [DATA_WIDTH-1+0 :0] lay0_32;
wire [DATA_WIDTH-1+0 :0] lay0_33;
wire [DATA_WIDTH-1+0 :0] lay0_34;
wire [DATA_WIDTH-1+0 :0] lay0_35;
wire [DATA_WIDTH-1+0 :0] lay0_36;
wire [DATA_WIDTH-1+1 :0] lay1_0;
wire [DATA_WIDTH-1+1 :0] lay1_1;
wire [DATA_WIDTH-1+1 :0] lay1_2;
wire [DATA_WIDTH-1+1 :0] lay1_3;
wire [DATA_WIDTH-1+1 :0] lay1_4;
wire [DATA_WIDTH-1+1 :0] lay1_5;
wire [DATA_WIDTH-1+1 :0] lay1_6;
wire [DATA_WIDTH-1+1 :0] lay1_7;
wire [DATA_WIDTH-1+1 :0] lay1_8;
wire [DATA_WIDTH-1+1 :0] lay1_9;
wire [DATA_WIDTH-1+1 :0] lay1_10;
wire [DATA_WIDTH-1+1 :0] lay1_11;
wire [DATA_WIDTH-1+1 :0] lay1_12;
wire [DATA_WIDTH-1+1 :0] lay1_13;
wire [DATA_WIDTH-1+1 :0] lay1_14;
wire [DATA_WIDTH-1+1 :0] lay1_15;
wire [DATA_WIDTH-1+1 :0] lay1_16;
wire [DATA_WIDTH-1+1 :0] lay1_17;
wire [DATA_WIDTH-1+1 :0] lay1_18;
wire [DATA_WIDTH-1+2 :0] lay2_0;
wire [DATA_WIDTH-1+2 :0] lay2_1;
wire [DATA_WIDTH-1+2 :0] lay2_2;
wire [DATA_WIDTH-1+2 :0] lay2_3;
wire [DATA_WIDTH-1+2 :0] lay2_4;
wire [DATA_WIDTH-1+2 :0] lay2_5;
wire [DATA_WIDTH-1+2 :0] lay2_6;
wire [DATA_WIDTH-1+2 :0] lay2_7;
wire [DATA_WIDTH-1+2 :0] lay2_8;
wire [DATA_WIDTH-1+2 :0] lay2_9;
wire [DATA_WIDTH-1+3 :0] lay3_0;
wire [DATA_WIDTH-1+3 :0] lay3_1;
wire [DATA_WIDTH-1+3 :0] lay3_2;
wire [DATA_WIDTH-1+3 :0] lay3_3;
wire [DATA_WIDTH-1+3 :0] lay3_4;
wire [DATA_WIDTH-1+4 :0] lay4_0;
wire [DATA_WIDTH-1+4 :0] lay4_1;
wire [DATA_WIDTH-1+4 :0] lay4_2;
wire [DATA_WIDTH-1+5 :0] lay5_0;
wire [DATA_WIDTH-1+5 :0] lay5_1;
wire [DATA_WIDTH-1+6 :0] lay6_0;

assign lay0_0 = i_0;
assign lay0_1 = i_1;
assign lay0_2 = i_2;
assign lay0_3 = i_3;
assign lay0_4 = i_4;
assign lay0_5 = i_5;
assign lay0_6 = i_6;
assign lay0_7 = i_7;
assign lay0_8 = i_8;
assign lay0_9 = i_9;
assign lay0_10 = i_10;
assign lay0_11 = i_11;
assign lay0_12 = i_12;
assign lay0_13 = i_13;
assign lay0_14 = i_14;
assign lay0_15 = i_15;
assign lay0_16 = i_16;
assign lay0_17 = i_17;
assign lay0_18 = i_18;
assign lay0_19 = i_19;
assign lay0_20 = i_20;
assign lay0_21 = i_21;
assign lay0_22 = i_22;
assign lay0_23 = i_23;
assign lay0_24 = i_24;
assign lay0_25 = i_25;
assign lay0_26 = i_26;
assign lay0_27 = i_27;
assign lay0_28 = i_28;
assign lay0_29 = i_29;
assign lay0_30 = i_30;
assign lay0_31 = i_31;
assign lay0_32 = i_32;
assign lay0_33 = i_33;
assign lay0_34 = i_34;
assign lay0_35 = i_35;
assign lay0_36 = i_36;

assign sum = lay6_0;

localparam maxValidLatency = 6;
reg [maxValidLatency-1:0] valid_delay;
integer i;
always @(posedge clk) begin
    for(i=0; i<maxValidLatency-1; i=i+1)
        valid_delay[i+1] <= valid_delay[i];
    valid_delay[0] <= din_valid;
end
assign dout_valid = valid_delay[maxValidLatency-1];

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_0(.clk(clk), .dataa(lay0_0), .datab(lay0_1), .result(lay1_0));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_1(.clk(clk), .dataa(lay0_2), .datab(lay0_3), .result(lay1_1));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_2(.clk(clk), .dataa(lay0_4), .datab(lay0_5), .result(lay1_2));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_3(.clk(clk), .dataa(lay0_6), .datab(lay0_7), .result(lay1_3));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_4(.clk(clk), .dataa(lay0_8), .datab(lay0_9), .result(lay1_4));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_5(.clk(clk), .dataa(lay0_10), .datab(lay0_11), .result(lay1_5));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_6(.clk(clk), .dataa(lay0_12), .datab(lay0_13), .result(lay1_6));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_7(.clk(clk), .dataa(lay0_14), .datab(lay0_15), .result(lay1_7));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_8(.clk(clk), .dataa(lay0_16), .datab(lay0_17), .result(lay1_8));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_9(.clk(clk), .dataa(lay0_18), .datab(lay0_19), .result(lay1_9));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_10(.clk(clk), .dataa(lay0_20), .datab(lay0_21), .result(lay1_10));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_11(.clk(clk), .dataa(lay0_22), .datab(lay0_23), .result(lay1_11));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_12(.clk(clk), .dataa(lay0_24), .datab(lay0_25), .result(lay1_12));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_13(.clk(clk), .dataa(lay0_26), .datab(lay0_27), .result(lay1_13));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_14(.clk(clk), .dataa(lay0_28), .datab(lay0_29), .result(lay1_14));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_15(.clk(clk), .dataa(lay0_30), .datab(lay0_31), .result(lay1_15));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_16(.clk(clk), .dataa(lay0_32), .datab(lay0_33), .result(lay1_16));

add #(.DATAA_WIDTH(DATA_WIDTH+0), .DATAB_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    add_inst1_17(.clk(clk), .dataa(lay0_34), .datab(lay0_35), .result(lay1_17));

delay #(.DATAA_WIDTH(DATA_WIDTH+0), .RESULT_WIDTH(DATA_WIDTH+1+0))
    delay_inst1_18(.clk(clk), .dataa(lay0_36),  .result(lay1_18));

add #(.DATAA_WIDTH(DATA_WIDTH+1), .DATAB_WIDTH(DATA_WIDTH+1), .RESULT_WIDTH(DATA_WIDTH+1+1))
    add_inst2_0(.clk(clk), .dataa(lay1_0), .datab(lay1_1), .result(lay2_0));

add #(.DATAA_WIDTH(DATA_WIDTH+1), .DATAB_WIDTH(DATA_WIDTH+1), .RESULT_WIDTH(DATA_WIDTH+1+1))
    add_inst2_1(.clk(clk), .dataa(lay1_2), .datab(lay1_3), .result(lay2_1));

add #(.DATAA_WIDTH(DATA_WIDTH+1), .DATAB_WIDTH(DATA_WIDTH+1), .RESULT_WIDTH(DATA_WIDTH+1+1))
    add_inst2_2(.clk(clk), .dataa(lay1_4), .datab(lay1_5), .result(lay2_2));

add #(.DATAA_WIDTH(DATA_WIDTH+1), .DATAB_WIDTH(DATA_WIDTH+1), .RESULT_WIDTH(DATA_WIDTH+1+1))
    add_inst2_3(.clk(clk), .dataa(lay1_6), .datab(lay1_7), .result(lay2_3));

add #(.DATAA_WIDTH(DATA_WIDTH+1), .DATAB_WIDTH(DATA_WIDTH+1), .RESULT_WIDTH(DATA_WIDTH+1+1))
    add_inst2_4(.clk(clk), .dataa(lay1_8), .datab(lay1_9), .result(lay2_4));

add #(.DATAA_WIDTH(DATA_WIDTH+1), .DATAB_WIDTH(DATA_WIDTH+1), .RESULT_WIDTH(DATA_WIDTH+1+1))
    add_inst2_5(.clk(clk), .dataa(lay1_10), .datab(lay1_11), .result(lay2_5));

add #(.DATAA_WIDTH(DATA_WIDTH+1), .DATAB_WIDTH(DATA_WIDTH+1), .RESULT_WIDTH(DATA_WIDTH+1+1))
    add_inst2_6(.clk(clk), .dataa(lay1_12), .datab(lay1_13), .result(lay2_6));

add #(.DATAA_WIDTH(DATA_WIDTH+1), .DATAB_WIDTH(DATA_WIDTH+1), .RESULT_WIDTH(DATA_WIDTH+1+1))
    add_inst2_7(.clk(clk), .dataa(lay1_14), .datab(lay1_15), .result(lay2_7));

add #(.DATAA_WIDTH(DATA_WIDTH+1), .DATAB_WIDTH(DATA_WIDTH+1), .RESULT_WIDTH(DATA_WIDTH+1+1))
    add_inst2_8(.clk(clk), .dataa(lay1_16), .datab(lay1_17), .result(lay2_8));

delay #(.DATAA_WIDTH(DATA_WIDTH+1), .RESULT_WIDTH(DATA_WIDTH+1+1))
    delay_inst2_9(.clk(clk), .dataa(lay1_18),  .result(lay2_9));

add #(.DATAA_WIDTH(DATA_WIDTH+2), .DATAB_WIDTH(DATA_WIDTH+2), .RESULT_WIDTH(DATA_WIDTH+1+2))
    add_inst3_0(.clk(clk), .dataa(lay2_0), .datab(lay2_1), .result(lay3_0));

add #(.DATAA_WIDTH(DATA_WIDTH+2), .DATAB_WIDTH(DATA_WIDTH+2), .RESULT_WIDTH(DATA_WIDTH+1+2))
    add_inst3_1(.clk(clk), .dataa(lay2_2), .datab(lay2_3), .result(lay3_1));

add #(.DATAA_WIDTH(DATA_WIDTH+2), .DATAB_WIDTH(DATA_WIDTH+2), .RESULT_WIDTH(DATA_WIDTH+1+2))
    add_inst3_2(.clk(clk), .dataa(lay2_4), .datab(lay2_5), .result(lay3_2));

add #(.DATAA_WIDTH(DATA_WIDTH+2), .DATAB_WIDTH(DATA_WIDTH+2), .RESULT_WIDTH(DATA_WIDTH+1+2))
    add_inst3_3(.clk(clk), .dataa(lay2_6), .datab(lay2_7), .result(lay3_3));

add #(.DATAA_WIDTH(DATA_WIDTH+2), .DATAB_WIDTH(DATA_WIDTH+2), .RESULT_WIDTH(DATA_WIDTH+1+2))
    add_inst3_4(.clk(clk), .dataa(lay2_8), .datab(lay2_9), .result(lay3_4));

add #(.DATAA_WIDTH(DATA_WIDTH+3), .DATAB_WIDTH(DATA_WIDTH+3), .RESULT_WIDTH(DATA_WIDTH+1+3))
    add_inst4_0(.clk(clk), .dataa(lay3_0), .datab(lay3_1), .result(lay4_0));

add #(.DATAA_WIDTH(DATA_WIDTH+3), .DATAB_WIDTH(DATA_WIDTH+3), .RESULT_WIDTH(DATA_WIDTH+1+3))
    add_inst4_1(.clk(clk), .dataa(lay3_2), .datab(lay3_3), .result(lay4_1));

delay #(.DATAA_WIDTH(DATA_WIDTH+3), .RESULT_WIDTH(DATA_WIDTH+1+3))
    delay_inst4_2(.clk(clk), .dataa(lay3_4),  .result(lay4_2));

add #(.DATAA_WIDTH(DATA_WIDTH+4), .DATAB_WIDTH(DATA_WIDTH+4), .RESULT_WIDTH(DATA_WIDTH+1+4))
    add_inst5_0(.clk(clk), .dataa(lay4_0), .datab(lay4_1), .result(lay5_0));

delay #(.DATAA_WIDTH(DATA_WIDTH+4), .RESULT_WIDTH(DATA_WIDTH+1+4))
    delay_inst5_1(.clk(clk), .dataa(lay4_2),  .result(lay5_1));

add #(.DATAA_WIDTH(DATA_WIDTH+5), .DATAB_WIDTH(DATA_WIDTH+5), .RESULT_WIDTH(DATA_WIDTH+1+5))
    add_inst6_0(.clk(clk), .dataa(lay5_0), .datab(lay5_1), .result(lay6_0));

endmodule

/////////////////////////
module add #(parameter
    DATAA_WIDTH = 16, DATAB_WIDTH = 17, RESULT_WIDTH = (DATAA_WIDTH > DATAB_WIDTH) ? DATAA_WIDTH + 1 : DATAB_WIDTH + 1
)(
    input clk,
    input  [DATAA_WIDTH-1:0] dataa,
    input  [DATAB_WIDTH-1:0] datab,
    output reg  [RESULT_WIDTH-1:0] result
);
    always @(posedge clk)
            result <= dataa + datab;
endmodule

/////////////////////////
module delay #(parameter
    DATAA_WIDTH = 16,  RESULT_WIDTH =  DATAA_WIDTH + 1 
)(
    input clk,
    input  [DATAA_WIDTH-1:0] dataa,
    output reg  [RESULT_WIDTH-1:0] result
);
    always @(posedge clk)
            result <= dataa;
endmodule
