`timescale 1ns / 1ps

module comparator_sim(

    );
    
    //inputs
    reg A3; reg A2; reg A1; reg A0;
    reg B3; reg B2; reg B1; reg B0;
    
    //outputs
    wire A_eq_B;
    wire A_gt_B;
    wire A_lt_B;
    
    // instantiation
    comparator UUT (
        .A3(A3),
        .A2(A2),
        .A1(A1),
        .A0(A0),
        .B3(B3),
        .B2(B2),
        .B1(B1),
        .B0(B0),
        .A_eq_B(A_eq_B),
        .A_gt_B(A_gt_B),
        .A_lt_B(A_lt_B)
    );
    
    //scenario
    initial begin
        A3=0;
        A2=0;
        A1=0;
        A0=0;
        B3=0;
        B2=0;
        B1=0;
        B0=0;
        #100;
        A3=1;
        #100;
        A3=0;
        B3=1;
        #100;
        A2=1;
        B3=0;
        #100;
    end
    
endmodule
