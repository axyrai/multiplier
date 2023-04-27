`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:40 04/26/2023 
// Design Name: 
// Module Name:    source 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module source(a,b,y
    );
input [1:0] a,b;
output [3:0] y;

assign y[0]=a[0] & b[0];
assign y[1]= ((~a[1])&a[0]&b[1])|(a[0]&b[1]&(~b[0]))|(a[1]&(~a[0])&b[0])|(a[1]&(~b[1])&b[0]);
assign y[2]=(a[1]&(~a[0])&b[1])|(a[1]&b[1]&(~b[0]));
assign y[3]=a[1]&a[0]&b[1]&b[0];


endmodule
