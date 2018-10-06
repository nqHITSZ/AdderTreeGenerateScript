`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/06 11:42:56
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module AdderTree_tb();
localparam PERIOD=10;//100MHz
localparam Tc2o=1;//clock to output delay
reg clk,rst;

reg [7:0] i_[36:0] ;   


reg din_valid;
wire [13:0] sum;
wire dout_valid;

initial begin
  clk = 1'b0;
  #(PERIOD/2);
  forever
    #(PERIOD/2) clk = ~clk;
end

AdderTree ut(
    .clk(clk),
    .din_valid(din_valid),
    .dout_valid(dout_valid),

    .i_0(i_[0]),
    .i_1(i_[1]),
    .i_2(i_[2]),
    .i_3(i_[3]),
    .i_4(i_[4]),
    .i_5(i_[5]),
    .i_6(i_[6]),
    .i_7(i_[7]),
    .i_8(i_[8]),
    .i_9(i_[9]),
    .i_10(i_[10]),
    .i_11(i_[11]),
    .i_12(i_[12]),
    .i_13(i_[13]),
    .i_14(i_[14]),
    .i_15(i_[15]),
    .i_16(i_[16]),
    .i_17(i_[17]),
    .i_18(i_[18]),
    .i_19(i_[19]),
    .i_20(i_[20]),
    .i_21(i_[21]),
    .i_22(i_[22]),
    .i_23(i_[23]),
    .i_24(i_[24]),
    .i_25(i_[25]),
    .i_26(i_[26]),
    .i_27(i_[27]),
    .i_28(i_[28]),
    .i_29(i_[29]),
    .i_30(i_[30]),
    .i_31(i_[31]),
    .i_32(i_[32]),
    .i_33(i_[33]),
    .i_34(i_[34]),
    .i_35(i_[35]),
    .i_36(i_[36]),
    .sum(sum)
);

integer i;
initial begin
    din_valid <= #(Tc2o) 0;
    for(i=0;i<=36;i=i+1)
        i_[i] <= 'dx;
		
    #(PERIOD*10)

    @(posedge clk)
        din_valid <= #(Tc2o) 1;
        for(i=0;i<=36;i=i+1)
            i_[i] <= #(Tc2o) i;
    @(posedge clk)
        din_valid <= #(Tc2o) 1;
        for(i=0;i<=36;i=i+1)
            i_[i] <= #(Tc2o) 255;
    @(posedge clk)
        din_valid <= #(Tc2o) 1;
        for(i=0;i<=36;i=i+1)
            i_[i] <= #(Tc2o) 100+i;
    @(posedge clk)
        din_valid <= #(Tc2o) 1;
        for(i=0;i<=36;i=i+1)
            i_[i] <= #(Tc2o) 0;
    @(posedge clk)
        din_valid <= #(Tc2o) 0;
        for(i=0;i<=36;i=i+1)
            i_[i] <= #(Tc2o) 'dx;
end

endmodule
