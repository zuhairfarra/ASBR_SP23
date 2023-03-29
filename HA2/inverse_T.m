function T_inv = inverse_T(Tsb)
Rsb = Tsb(1:3,1:3);
Psb = Tsb(1:3,4);
Rsb_Transpose = transpose(Rsb);
p_new = -1 * Rsb_Transpose*Psb; 
T_inv = [Rsb_Transpose(1,:), p_new(1); ...
        Rsb_Transpose(2,:), p_new(2); ...
        Rsb_Transpose(3,:), p_new(3);0,0,0,1]; 
end