`timescale 1ns / 1ps


module andGate(
    input logic a,
    input logic b,
    output logic f 
    );
    
    and andgate (f,a,b);
    
endmodule
