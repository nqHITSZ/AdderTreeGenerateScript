import math
import datetime


#################################################################
N = 37
DATA_WIDTH = 8

N = int( input("The number of inputs:") )
DATA_WIDTH = int( input("The data width of inputs:") )
##################################################################




#layers: the number of pipline layers; Note that the inputs is regard as a layer, i.e. lyaer0
layers = math.ceil(math.log(N,2)) + 1
RESULT_WIDTH = DATA_WIDTH + layers - 1

data = "`timescale 1ns / 1ps\n"


now = datetime.datetime.now() #get current time
otherStyleTime = now.strftime("%Y-%m-%d %H:%M:%S") #time format
data +="//Create Date: " + otherStyleTime + "\n//Author: NQ\n//University: Harbin Institute of Tecnology,ShenZhen\n"

data +="""
//Note: This module is an unsigned processor
module AdderTree #(parameter
    DATA_WIDTH = %(DATA_WIDTH)d, RESULT_WIDTH = %(RESULT_WIDTH)d
)
(
    input clk, //rst,
    input din_valid, dout_valid,

"""%{'DATA_WIDTH':DATA_WIDTH,'RESULT_WIDTH':RESULT_WIDTH}

for num in range(N):
    data += "    input [DATA_WIDTH-1:0] i_%(num)d,\n" %{'num':num}
data +="""
    output [RESULT_WIDTH-1:0] sum
);
"""

#signal declaration
input_nums = N
for layer in range(layers):
    for input_num in range(input_nums):
        data += "wire [DATA_WIDTH-1+%(layer)d :0] lay%(layer)d_%(input_num)d;\n" %{'layer':layer, 'input_num':input_num}
    input_nums = input_nums//2 if(input_nums%2 == 0) else input_nums//2+1

# assign lay0
data += "\n"
input_nums = N
for input_num in range(input_nums):
        data += "assign lay0_%(input_num)d = i_%(input_num)d;\n" %{'input_num':input_num}


#output logic
data += "\nassign sum = lay%(temp)d_0;\n" %{'temp': layers-1}
data +="""
localparam maxValidLatency = %(temp)d;
reg [maxValidLatency-1:0] valid_delay;
integer i;
always @(posedge clk) begin
    for(i=0; i<maxValidLatency-1; i=i+1)
        valid_delay[i+1] <= valid_delay[i];
    valid_delay[0] <= din_valid;
end
assign dout_valid = valid_delay[maxValidLatency-1];
""" %{'temp': layers-1}

#adder instance
input_nums = N
for layer in range(layers-1):
    for input_num in range(input_nums//2):
        data +="""
add #(.DATAA_WIDTH(DATA_WIDTH+%(layer)d), .DATAB_WIDTH(DATA_WIDTH+%(layer)d), .RESULT_WIDTH(DATA_WIDTH+1+%(layer)d))
    add_inst%(layer_p1)d_%(input_num)d(.clk(clk), .dataa(lay%(layer)d_%(input_num_x2)d), .datab(lay%(layer)d_%(input_num_x2p1)d), .result(lay%(layer_p1)d_%(input_num)d));
"""%{'layer':layer, 'input_num_x2':input_num*2, 'input_num_x2p1':input_num*2+1, 'layer_p1':layer+1, 'input_num':input_num}
    if(input_nums%2 != 0):
        data +="""
delay #(.DATAA_WIDTH(DATA_WIDTH+%(layer)d), .RESULT_WIDTH(DATA_WIDTH+1+%(layer)d))
    delay_inst%(layer_p1)d_%(input_num_p1)d(.clk(clk), .dataa(lay%(layer)d_%(input_num_x2p2)d),  .result(lay%(layer_p1)d_%(input_num_p1)d));
"""%{'layer':layer, 'input_num_x2p2':input_num*2+2, 'layer_p1':layer+1, 'input_num_p1':input_num+1}
    
    input_nums = input_nums//2 if(input_nums%2 == 0) else input_nums//2+1
    #input_nums = input_nums // 2

    

    
data += "\nendmodule\n"
data += """
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
"""

data += """
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
"""

#data += "hello"


print(data)
with open("AdderTree.v","w") as f:
    f.write(data)

