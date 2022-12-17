`timescale 1ns / 1ps

module comparator( input A3,
                   input A2,
                   input A1,
                   input A0,
                   input B3,
                   input B2,
                   input B1,
                   input B0,
                   output A_eq_B,
                   output A_gt_B,
                   output A_lt_B
            
    );
    
    // A = B CASE
    wire w_e1, w_e2, w_e3, w_e4;
    
    assign w_e1 = (A3^~B3); // A3 XNOR B3 = 1 if A3 == B3
    assign w_e2 = (A2^~B2);
    assign w_e3 = (A1^~B1);
    assign w_e4 = (A0^~B0);
    
    assign A_eq_B = (w_e1 & w_e2 & w_e3 & w_e4);
    
    // A > B CASE
    wire w_g1, w_g2, w_g3, w_g4;
    
    assign  w_g1 = (~A3&B3); // A3 and B3 are sign bits so if A3<B3 then A>B
    assign w_g2 = ((A3^~B3)&(A2&~B2));
    assign w_g3 = ((A3^~B3)&(A2^~B2)&(A1&~B1));
    assign w_g4 = ((A3^~B3)&(A2^~B2)&(A1^~B1)&(A0&~B0));
    
    assign A_gt_B = (w_g1 | w_g2 | w_g3 | w_g4);
    
    // A < B CASE
    wire w_l1, w_l2, w_l3, w_l4;
    
    assign  w_l1 = (A3&~B3); // A3 and B3 are sign bits so if A3>B3 then A<B
    assign w_l2 = ((A3^~B3)&(~A2&B2));
    assign w_l3 = ((A3^~B3)&(A2^~B2)&(~A1&B1));
    assign w_l4 = ((A3^~B3)&(A2^~B2)&(A1^~B1)&(~A0&B0));
    
    assign A_lt_B = (w_l1 | w_l2 | w_l3 | w_l4);
    
endmodule
