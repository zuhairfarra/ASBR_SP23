function sing = singularity_theoretical(S)
syms t1 t2 t3 t4 t5 t6 
J_s = J_space_syms(S);
M  = J_s*transpose(J_s);
detM = M(1,1)*M(2,2)*M(3,3)*M(4,4)*M(5,5)*M(6,6) - M(1,1)*M(2,2)*M(3,3)*M(4,4)*M(5,6)*M(6,5) - M(1,1)*M(2,2)*M(3,3)*M(4,5)*M(5,4)*M(6,6) + M(1,1)*M(2,2)*M(3,3)*M(4,5)*M(5,6)*M(6,4) + M(1,1)*M(2,2)*M(3,3)*M(4,6)*M(5,4)*M(6,5) - M(1,1)*M(2,2)*M(3,3)*M(4,6)*M(5,5)*M(6,4) - M(1,1)*M(2,2)*M(3,4)*M(4,3)*M(5,5)*M(6,6) + M(1,1)*M(2,2)*M(3,4)*M(4,3)*M(5,6)*M(6,5) + M(1,1)*M(2,2)*M(3,4)*M(4,5)*M(5,3)*M(6,6) - M(1,1)*M(2,2)*M(3,4)*M(4,5)*M(5,6)*M(6,3) - M(1,1)*M(2,2)*M(3,4)*M(4,6)*M(5,3)*M(6,5) + M(1,1)*M(2,2)*M(3,4)*M(4,6)*M(5,5)*M(6,3) + M(1,1)*M(2,2)*M(3,5)*M(4,3)*M(5,4)*M(6,6) - M(1,1)*M(2,2)*M(3,5)*M(4,3)*M(5,6)*M(6,4) - M(1,1)*M(2,2)*M(3,5)*M(4,4)*M(5,3)*M(6,6) + M(1,1)*M(2,2)*M(3,5)*M(4,4)*M(5,6)*M(6,3) + M(1,1)*M(2,2)*M(3,5)*M(4,6)*M(5,3)*M(6,4) - M(1,1)*M(2,2)*M(3,5)*M(4,6)*M(5,4)*M(6,3) - M(1,1)*M(2,2)*M(3,6)*M(4,3)*M(5,4)*M(6,5) + M(1,1)*M(2,2)*M(3,6)*M(4,3)*M(5,5)*M(6,4) + M(1,1)*M(2,2)*M(3,6)*M(4,4)*M(5,3)*M(6,5) - M(1,1)*M(2,2)*M(3,6)*M(4,4)*M(5,5)*M(6,3) - M(1,1)*M(2,2)*M(3,6)*M(4,5)*M(5,3)*M(6,4) + M(1,1)*M(2,2)*M(3,6)*M(4,5)*M(5,4)*M(6,3) - M(1,1)*M(2,3)*M(3,2)*M(4,4)*M(5,5)*M(6,6) + M(1,1)*M(2,3)*M(3,2)*M(4,4)*M(5,6)*M(6,5) + M(1,1)*M(2,3)*M(3,2)*M(4,5)*M(5,4)*M(6,6) - M(1,1)*M(2,3)*M(3,2)*M(4,5)*M(5,6)*M(6,4) - M(1,1)*M(2,3)*M(3,2)*M(4,6)*M(5,4)*M(6,5) + M(1,1)*M(2,3)*M(3,2)*M(4,6)*M(5,5)*M(6,4) + M(1,1)*M(2,3)*M(3,4)*M(4,2)*M(5,5)*M(6,6) - M(1,1)*M(2,3)*M(3,4)*M(4,2)*M(5,6)*M(6,5) - M(1,1)*M(2,3)*M(3,4)*M(4,5)*M(5,2)*M(6,6) + M(1,1)*M(2,3)*M(3,4)*M(4,5)*M(5,6)*M(6,2) + M(1,1)*M(2,3)*M(3,4)*M(4,6)*M(5,2)*M(6,5) - M(1,1)*M(2,3)*M(3,4)*M(4,6)*M(5,5)*M(6,2) - M(1,1)*M(2,3)*M(3,5)*M(4,2)*M(5,4)*M(6,6) + M(1,1)*M(2,3)*M(3,5)*M(4,2)*M(5,6)*M(6,4) + M(1,1)*M(2,3)*M(3,5)*M(4,4)*M(5,2)*M(6,6) - M(1,1)*M(2,3)*M(3,5)*M(4,4)*M(5,6)*M(6,2) - M(1,1)*M(2,3)*M(3,5)*M(4,6)*M(5,2)*M(6,4) + M(1,1)*M(2,3)*M(3,5)*M(4,6)*M(5,4)*M(6,2) + M(1,1)*M(2,3)*M(3,6)*M(4,2)*M(5,4)*M(6,5) - M(1,1)*M(2,3)*M(3,6)*M(4,2)*M(5,5)*M(6,4) - M(1,1)*M(2,3)*M(3,6)*M(4,4)*M(5,2)*M(6,5) + M(1,1)*M(2,3)*M(3,6)*M(4,4)*M(5,5)*M(6,2) + M(1,1)*M(2,3)*M(3,6)*M(4,5)*M(5,2)*M(6,4) - M(1,1)*M(2,3)*M(3,6)*M(4,5)*M(5,4)*M(6,2) + M(1,1)*M(2,4)*M(3,2)*M(4,3)*M(5,5)*M(6,6) - M(1,1)*M(2,4)*M(3,2)*M(4,3)*M(5,6)*M(6,5) - M(1,1)*M(2,4)*M(3,2)*M(4,5)*M(5,3)*M(6,6) + M(1,1)*M(2,4)*M(3,2)*M(4,5)*M(5,6)*M(6,3) + M(1,1)*M(2,4)*M(3,2)*M(4,6)*M(5,3)*M(6,5) - M(1,1)*M(2,4)*M(3,2)*M(4,6)*M(5,5)*M(6,3) - M(1,1)*M(2,4)*M(3,3)*M(4,2)*M(5,5)*M(6,6) + M(1,1)*M(2,4)*M(3,3)*M(4,2)*M(5,6)*M(6,5) + M(1,1)*M(2,4)*M(3,3)*M(4,5)*M(5,2)*M(6,6) - M(1,1)*M(2,4)*M(3,3)*M(4,5)*M(5,6)*M(6,2) - M(1,1)*M(2,4)*M(3,3)*M(4,6)*M(5,2)*M(6,5) + M(1,1)*M(2,4)*M(3,3)*M(4,6)*M(5,5)*M(6,2) + M(1,1)*M(2,4)*M(3,5)*M(4,2)*M(5,3)*M(6,6) - M(1,1)*M(2,4)*M(3,5)*M(4,2)*M(5,6)*M(6,3) - M(1,1)*M(2,4)*M(3,5)*M(4,3)*M(5,2)*M(6,6) + M(1,1)*M(2,4)*M(3,5)*M(4,3)*M(5,6)*M(6,2) + M(1,1)*M(2,4)*M(3,5)*M(4,6)*M(5,2)*M(6,3) - M(1,1)*M(2,4)*M(3,5)*M(4,6)*M(5,3)*M(6,2) - M(1,1)*M(2,4)*M(3,6)*M(4,2)*M(5,3)*M(6,5) + M(1,1)*M(2,4)*M(3,6)*M(4,2)*M(5,5)*M(6,3) + M(1,1)*M(2,4)*M(3,6)*M(4,3)*M(5,2)*M(6,5) - M(1,1)*M(2,4)*M(3,6)*M(4,3)*M(5,5)*M(6,2) - M(1,1)*M(2,4)*M(3,6)*M(4,5)*M(5,2)*M(6,3) + M(1,1)*M(2,4)*M(3,6)*M(4,5)*M(5,3)*M(6,2) - M(1,1)*M(2,5)*M(3,2)*M(4,3)*M(5,4)*M(6,6) + M(1,1)*M(2,5)*M(3,2)*M(4,3)*M(5,6)*M(6,4) + M(1,1)*M(2,5)*M(3,2)*M(4,4)*M(5,3)*M(6,6) - M(1,1)*M(2,5)*M(3,2)*M(4,4)*M(5,6)*M(6,3) - M(1,1)*M(2,5)*M(3,2)*M(4,6)*M(5,3)*M(6,4) + M(1,1)*M(2,5)*M(3,2)*M(4,6)*M(5,4)*M(6,3) + M(1,1)*M(2,5)*M(3,3)*M(4,2)*M(5,4)*M(6,6) - M(1,1)*M(2,5)*M(3,3)*M(4,2)*M(5,6)*M(6,4) - M(1,1)*M(2,5)*M(3,3)*M(4,4)*M(5,2)*M(6,6) + M(1,1)*M(2,5)*M(3,3)*M(4,4)*M(5,6)*M(6,2) + M(1,1)*M(2,5)*M(3,3)*M(4,6)*M(5,2)*M(6,4) - M(1,1)*M(2,5)*M(3,3)*M(4,6)*M(5,4)*M(6,2) - M(1,1)*M(2,5)*M(3,4)*M(4,2)*M(5,3)*M(6,6) + M(1,1)*M(2,5)*M(3,4)*M(4,2)*M(5,6)*M(6,3) + M(1,1)*M(2,5)*M(3,4)*M(4,3)*M(5,2)*M(6,6) - M(1,1)*M(2,5)*M(3,4)*M(4,3)*M(5,6)*M(6,2) - M(1,1)*M(2,5)*M(3,4)*M(4,6)*M(5,2)*M(6,3) + M(1,1)*M(2,5)*M(3,4)*M(4,6)*M(5,3)*M(6,2) + M(1,1)*M(2,5)*M(3,6)*M(4,2)*M(5,3)*M(6,4) - M(1,1)*M(2,5)*M(3,6)*M(4,2)*M(5,4)*M(6,3) - M(1,1)*M(2,5)*M(3,6)*M(4,3)*M(5,2)*M(6,4) + M(1,1)*M(2,5)*M(3,6)*M(4,3)*M(5,4)*M(6,2) + M(1,1)*M(2,5)*M(3,6)*M(4,4)*M(5,2)*M(6,3) - M(1,1)*M(2,5)*M(3,6)*M(4,4)*M(5,3)*M(6,2) + M(1,1)*M(2,6)*M(3,2)*M(4,3)*M(5,4)*M(6,5) - M(1,1)*M(2,6)*M(3,2)*M(4,3)*M(5,5)*M(6,4) - M(1,1)*M(2,6)*M(3,2)*M(4,4)*M(5,3)*M(6,5) + M(1,1)*M(2,6)*M(3,2)*M(4,4)*M(5,5)*M(6,3) + M(1,1)*M(2,6)*M(3,2)*M(4,5)*M(5,3)*M(6,4) - M(1,1)*M(2,6)*M(3,2)*M(4,5)*M(5,4)*M(6,3) - M(1,1)*M(2,6)*M(3,3)*M(4,2)*M(5,4)*M(6,5) + M(1,1)*M(2,6)*M(3,3)*M(4,2)*M(5,5)*M(6,4) + M(1,1)*M(2,6)*M(3,3)*M(4,4)*M(5,2)*M(6,5) - M(1,1)*M(2,6)*M(3,3)*M(4,4)*M(5,5)*M(6,2) - M(1,1)*M(2,6)*M(3,3)*M(4,5)*M(5,2)*M(6,4) + M(1,1)*M(2,6)*M(3,3)*M(4,5)*M(5,4)*M(6,2) + M(1,1)*M(2,6)*M(3,4)*M(4,2)*M(5,3)*M(6,5) - M(1,1)*M(2,6)*M(3,4)*M(4,2)*M(5,5)*M(6,3) - M(1,1)*M(2,6)*M(3,4)*M(4,3)*M(5,2)*M(6,5) + M(1,1)*M(2,6)*M(3,4)*M(4,3)*M(5,5)*M(6,2) + M(1,1)*M(2,6)*M(3,4)*M(4,5)*M(5,2)*M(6,3) - M(1,1)*M(2,6)*M(3,4)*M(4,5)*M(5,3)*M(6,2) - M(1,1)*M(2,6)*M(3,5)*M(4,2)*M(5,3)*M(6,4) + M(1,1)*M(2,6)*M(3,5)*M(4,2)*M(5,4)*M(6,3) + M(1,1)*M(2,6)*M(3,5)*M(4,3)*M(5,2)*M(6,4) - M(1,1)*M(2,6)*M(3,5)*M(4,3)*M(5,4)*M(6,2) - M(1,1)*M(2,6)*M(3,5)*M(4,4)*M(5,2)*M(6,3) + M(1,1)*M(2,6)*M(3,5)*M(4,4)*M(5,3)*M(6,2) - M(1,2)*M(2,1)*M(3,3)*M(4,4)*M(5,5)*M(6,6) + M(1,2)*M(2,1)*M(3,3)*M(4,4)*M(5,6)*M(6,5) + M(1,2)*M(2,1)*M(3,3)*M(4,5)*M(5,4)*M(6,6) - M(1,2)*M(2,1)*M(3,3)*M(4,5)*M(5,6)*M(6,4) - M(1,2)*M(2,1)*M(3,3)*M(4,6)*M(5,4)*M(6,5) + M(1,2)*M(2,1)*M(3,3)*M(4,6)*M(5,5)*M(6,4) + M(1,2)*M(2,1)*M(3,4)*M(4,3)*M(5,5)*M(6,6) - M(1,2)*M(2,1)*M(3,4)*M(4,3)*M(5,6)*M(6,5) - M(1,2)*M(2,1)*M(3,4)*M(4,5)*M(5,3)*M(6,6) + M(1,2)*M(2,1)*M(3,4)*M(4,5)*M(5,6)*M(6,3) + M(1,2)*M(2,1)*M(3,4)*M(4,6)*M(5,3)*M(6,5) - M(1,2)*M(2,1)*M(3,4)*M(4,6)*M(5,5)*M(6,3) - M(1,2)*M(2,1)*M(3,5)*M(4,3)*M(5,4)*M(6,6) + M(1,2)*M(2,1)*M(3,5)*M(4,3)*M(5,6)*M(6,4) + M(1,2)*M(2,1)*M(3,5)*M(4,4)*M(5,3)*M(6,6) - M(1,2)*M(2,1)*M(3,5)*M(4,4)*M(5,6)*M(6,3) - M(1,2)*M(2,1)*M(3,5)*M(4,6)*M(5,3)*M(6,4) + M(1,2)*M(2,1)*M(3,5)*M(4,6)*M(5,4)*M(6,3) + M(1,2)*M(2,1)*M(3,6)*M(4,3)*M(5,4)*M(6,5) - M(1,2)*M(2,1)*M(3,6)*M(4,3)*M(5,5)*M(6,4) - M(1,2)*M(2,1)*M(3,6)*M(4,4)*M(5,3)*M(6,5) + M(1,2)*M(2,1)*M(3,6)*M(4,4)*M(5,5)*M(6,3) + M(1,2)*M(2,1)*M(3,6)*M(4,5)*M(5,3)*M(6,4) - M(1,2)*M(2,1)*M(3,6)*M(4,5)*M(5,4)*M(6,3) + M(1,2)*M(2,3)*M(3,1)*M(4,4)*M(5,5)*M(6,6) - M(1,2)*M(2,3)*M(3,1)*M(4,4)*M(5,6)*M(6,5) - M(1,2)*M(2,3)*M(3,1)*M(4,5)*M(5,4)*M(6,6) + M(1,2)*M(2,3)*M(3,1)*M(4,5)*M(5,6)*M(6,4) + M(1,2)*M(2,3)*M(3,1)*M(4,6)*M(5,4)*M(6,5) - M(1,2)*M(2,3)*M(3,1)*M(4,6)*M(5,5)*M(6,4) - M(1,2)*M(2,3)*M(3,4)*M(4,1)*M(5,5)*M(6,6) + M(1,2)*M(2,3)*M(3,4)*M(4,1)*M(5,6)*M(6,5) + M(1,2)*M(2,3)*M(3,4)*M(4,5)*M(5,1)*M(6,6) - M(1,2)*M(2,3)*M(3,4)*M(4,5)*M(5,6)*M(6,1) - M(1,2)*M(2,3)*M(3,4)*M(4,6)*M(5,1)*M(6,5) + M(1,2)*M(2,3)*M(3,4)*M(4,6)*M(5,5)*M(6,1) + M(1,2)*M(2,3)*M(3,5)*M(4,1)*M(5,4)*M(6,6) - M(1,2)*M(2,3)*M(3,5)*M(4,1)*M(5,6)*M(6,4) - M(1,2)*M(2,3)*M(3,5)*M(4,4)*M(5,1)*M(6,6) + M(1,2)*M(2,3)*M(3,5)*M(4,4)*M(5,6)*M(6,1) + M(1,2)*M(2,3)*M(3,5)*M(4,6)*M(5,1)*M(6,4) - M(1,2)*M(2,3)*M(3,5)*M(4,6)*M(5,4)*M(6,1) - M(1,2)*M(2,3)*M(3,6)*M(4,1)*M(5,4)*M(6,5) + M(1,2)*M(2,3)*M(3,6)*M(4,1)*M(5,5)*M(6,4) + M(1,2)*M(2,3)*M(3,6)*M(4,4)*M(5,1)*M(6,5) - M(1,2)*M(2,3)*M(3,6)*M(4,4)*M(5,5)*M(6,1) - M(1,2)*M(2,3)*M(3,6)*M(4,5)*M(5,1)*M(6,4) + M(1,2)*M(2,3)*M(3,6)*M(4,5)*M(5,4)*M(6,1) - M(1,2)*M(2,4)*M(3,1)*M(4,3)*M(5,5)*M(6,6) + M(1,2)*M(2,4)*M(3,1)*M(4,3)*M(5,6)*M(6,5) + M(1,2)*M(2,4)*M(3,1)*M(4,5)*M(5,3)*M(6,6) - M(1,2)*M(2,4)*M(3,1)*M(4,5)*M(5,6)*M(6,3) - M(1,2)*M(2,4)*M(3,1)*M(4,6)*M(5,3)*M(6,5) + M(1,2)*M(2,4)*M(3,1)*M(4,6)*M(5,5)*M(6,3) + M(1,2)*M(2,4)*M(3,3)*M(4,1)*M(5,5)*M(6,6) - M(1,2)*M(2,4)*M(3,3)*M(4,1)*M(5,6)*M(6,5) - M(1,2)*M(2,4)*M(3,3)*M(4,5)*M(5,1)*M(6,6) + M(1,2)*M(2,4)*M(3,3)*M(4,5)*M(5,6)*M(6,1) + M(1,2)*M(2,4)*M(3,3)*M(4,6)*M(5,1)*M(6,5) - M(1,2)*M(2,4)*M(3,3)*M(4,6)*M(5,5)*M(6,1) - M(1,2)*M(2,4)*M(3,5)*M(4,1)*M(5,3)*M(6,6) + M(1,2)*M(2,4)*M(3,5)*M(4,1)*M(5,6)*M(6,3) + M(1,2)*M(2,4)*M(3,5)*M(4,3)*M(5,1)*M(6,6) - M(1,2)*M(2,4)*M(3,5)*M(4,3)*M(5,6)*M(6,1) - M(1,2)*M(2,4)*M(3,5)*M(4,6)*M(5,1)*M(6,3) + M(1,2)*M(2,4)*M(3,5)*M(4,6)*M(5,3)*M(6,1) + M(1,2)*M(2,4)*M(3,6)*M(4,1)*M(5,3)*M(6,5) - M(1,2)*M(2,4)*M(3,6)*M(4,1)*M(5,5)*M(6,3) - M(1,2)*M(2,4)*M(3,6)*M(4,3)*M(5,1)*M(6,5) + M(1,2)*M(2,4)*M(3,6)*M(4,3)*M(5,5)*M(6,1) + M(1,2)*M(2,4)*M(3,6)*M(4,5)*M(5,1)*M(6,3) - M(1,2)*M(2,4)*M(3,6)*M(4,5)*M(5,3)*M(6,1) + M(1,2)*M(2,5)*M(3,1)*M(4,3)*M(5,4)*M(6,6) - M(1,2)*M(2,5)*M(3,1)*M(4,3)*M(5,6)*M(6,4) - M(1,2)*M(2,5)*M(3,1)*M(4,4)*M(5,3)*M(6,6) + M(1,2)*M(2,5)*M(3,1)*M(4,4)*M(5,6)*M(6,3) + M(1,2)*M(2,5)*M(3,1)*M(4,6)*M(5,3)*M(6,4) - M(1,2)*M(2,5)*M(3,1)*M(4,6)*M(5,4)*M(6,3) - M(1,2)*M(2,5)*M(3,3)*M(4,1)*M(5,4)*M(6,6) + M(1,2)*M(2,5)*M(3,3)*M(4,1)*M(5,6)*M(6,4) + M(1,2)*M(2,5)*M(3,3)*M(4,4)*M(5,1)*M(6,6) - M(1,2)*M(2,5)*M(3,3)*M(4,4)*M(5,6)*M(6,1) - M(1,2)*M(2,5)*M(3,3)*M(4,6)*M(5,1)*M(6,4) + M(1,2)*M(2,5)*M(3,3)*M(4,6)*M(5,4)*M(6,1) + M(1,2)*M(2,5)*M(3,4)*M(4,1)*M(5,3)*M(6,6) - M(1,2)*M(2,5)*M(3,4)*M(4,1)*M(5,6)*M(6,3) - M(1,2)*M(2,5)*M(3,4)*M(4,3)*M(5,1)*M(6,6) + M(1,2)*M(2,5)*M(3,4)*M(4,3)*M(5,6)*M(6,1) + M(1,2)*M(2,5)*M(3,4)*M(4,6)*M(5,1)*M(6,3) - M(1,2)*M(2,5)*M(3,4)*M(4,6)*M(5,3)*M(6,1) - M(1,2)*M(2,5)*M(3,6)*M(4,1)*M(5,3)*M(6,4) + M(1,2)*M(2,5)*M(3,6)*M(4,1)*M(5,4)*M(6,3) + M(1,2)*M(2,5)*M(3,6)*M(4,3)*M(5,1)*M(6,4) - M(1,2)*M(2,5)*M(3,6)*M(4,3)*M(5,4)*M(6,1) - M(1,2)*M(2,5)*M(3,6)*M(4,4)*M(5,1)*M(6,3) + M(1,2)*M(2,5)*M(3,6)*M(4,4)*M(5,3)*M(6,1) - M(1,2)*M(2,6)*M(3,1)*M(4,3)*M(5,4)*M(6,5) + M(1,2)*M(2,6)*M(3,1)*M(4,3)*M(5,5)*M(6,4) + M(1,2)*M(2,6)*M(3,1)*M(4,4)*M(5,3)*M(6,5) - M(1,2)*M(2,6)*M(3,1)*M(4,4)*M(5,5)*M(6,3) - M(1,2)*M(2,6)*M(3,1)*M(4,5)*M(5,3)*M(6,4) + M(1,2)*M(2,6)*M(3,1)*M(4,5)*M(5,4)*M(6,3) + M(1,2)*M(2,6)*M(3,3)*M(4,1)*M(5,4)*M(6,5) - M(1,2)*M(2,6)*M(3,3)*M(4,1)*M(5,5)*M(6,4) - M(1,2)*M(2,6)*M(3,3)*M(4,4)*M(5,1)*M(6,5) + M(1,2)*M(2,6)*M(3,3)*M(4,4)*M(5,5)*M(6,1) + M(1,2)*M(2,6)*M(3,3)*M(4,5)*M(5,1)*M(6,4) - M(1,2)*M(2,6)*M(3,3)*M(4,5)*M(5,4)*M(6,1) - M(1,2)*M(2,6)*M(3,4)*M(4,1)*M(5,3)*M(6,5) + M(1,2)*M(2,6)*M(3,4)*M(4,1)*M(5,5)*M(6,3) + M(1,2)*M(2,6)*M(3,4)*M(4,3)*M(5,1)*M(6,5) - M(1,2)*M(2,6)*M(3,4)*M(4,3)*M(5,5)*M(6,1) - M(1,2)*M(2,6)*M(3,4)*M(4,5)*M(5,1)*M(6,3) + M(1,2)*M(2,6)*M(3,4)*M(4,5)*M(5,3)*M(6,1) + M(1,2)*M(2,6)*M(3,5)*M(4,1)*M(5,3)*M(6,4) - M(1,2)*M(2,6)*M(3,5)*M(4,1)*M(5,4)*M(6,3) - M(1,2)*M(2,6)*M(3,5)*M(4,3)*M(5,1)*M(6,4) + M(1,2)*M(2,6)*M(3,5)*M(4,3)*M(5,4)*M(6,1) + M(1,2)*M(2,6)*M(3,5)*M(4,4)*M(5,1)*M(6,3) - M(1,2)*M(2,6)*M(3,5)*M(4,4)*M(5,3)*M(6,1) + M(1,3)*M(2,1)*M(3,2)*M(4,4)*M(5,5)*M(6,6) - M(1,3)*M(2,1)*M(3,2)*M(4,4)*M(5,6)*M(6,5) - M(1,3)*M(2,1)*M(3,2)*M(4,5)*M(5,4)*M(6,6) + M(1,3)*M(2,1)*M(3,2)*M(4,5)*M(5,6)*M(6,4) + M(1,3)*M(2,1)*M(3,2)*M(4,6)*M(5,4)*M(6,5) - M(1,3)*M(2,1)*M(3,2)*M(4,6)*M(5,5)*M(6,4) - M(1,3)*M(2,1)*M(3,4)*M(4,2)*M(5,5)*M(6,6) + M(1,3)*M(2,1)*M(3,4)*M(4,2)*M(5,6)*M(6,5) + M(1,3)*M(2,1)*M(3,4)*M(4,5)*M(5,2)*M(6,6) - M(1,3)*M(2,1)*M(3,4)*M(4,5)*M(5,6)*M(6,2) - M(1,3)*M(2,1)*M(3,4)*M(4,6)*M(5,2)*M(6,5) + M(1,3)*M(2,1)*M(3,4)*M(4,6)*M(5,5)*M(6,2) + M(1,3)*M(2,1)*M(3,5)*M(4,2)*M(5,4)*M(6,6) - M(1,3)*M(2,1)*M(3,5)*M(4,2)*M(5,6)*M(6,4) - M(1,3)*M(2,1)*M(3,5)*M(4,4)*M(5,2)*M(6,6) + M(1,3)*M(2,1)*M(3,5)*M(4,4)*M(5,6)*M(6,2) + M(1,3)*M(2,1)*M(3,5)*M(4,6)*M(5,2)*M(6,4) - M(1,3)*M(2,1)*M(3,5)*M(4,6)*M(5,4)*M(6,2) - M(1,3)*M(2,1)*M(3,6)*M(4,2)*M(5,4)*M(6,5) + M(1,3)*M(2,1)*M(3,6)*M(4,2)*M(5,5)*M(6,4) + M(1,3)*M(2,1)*M(3,6)*M(4,4)*M(5,2)*M(6,5) - M(1,3)*M(2,1)*M(3,6)*M(4,4)*M(5,5)*M(6,2) - M(1,3)*M(2,1)*M(3,6)*M(4,5)*M(5,2)*M(6,4) + M(1,3)*M(2,1)*M(3,6)*M(4,5)*M(5,4)*M(6,2) - M(1,3)*M(2,2)*M(3,1)*M(4,4)*M(5,5)*M(6,6) + M(1,3)*M(2,2)*M(3,1)*M(4,4)*M(5,6)*M(6,5) + M(1,3)*M(2,2)*M(3,1)*M(4,5)*M(5,4)*M(6,6) - M(1,3)*M(2,2)*M(3,1)*M(4,5)*M(5,6)*M(6,4) - M(1,3)*M(2,2)*M(3,1)*M(4,6)*M(5,4)*M(6,5) + M(1,3)*M(2,2)*M(3,1)*M(4,6)*M(5,5)*M(6,4) + M(1,3)*M(2,2)*M(3,4)*M(4,1)*M(5,5)*M(6,6) - M(1,3)*M(2,2)*M(3,4)*M(4,1)*M(5,6)*M(6,5) - M(1,3)*M(2,2)*M(3,4)*M(4,5)*M(5,1)*M(6,6) + M(1,3)*M(2,2)*M(3,4)*M(4,5)*M(5,6)*M(6,1) + M(1,3)*M(2,2)*M(3,4)*M(4,6)*M(5,1)*M(6,5) - M(1,3)*M(2,2)*M(3,4)*M(4,6)*M(5,5)*M(6,1) - M(1,3)*M(2,2)*M(3,5)*M(4,1)*M(5,4)*M(6,6) + M(1,3)*M(2,2)*M(3,5)*M(4,1)*M(5,6)*M(6,4) + M(1,3)*M(2,2)*M(3,5)*M(4,4)*M(5,1)*M(6,6) - M(1,3)*M(2,2)*M(3,5)*M(4,4)*M(5,6)*M(6,1) - M(1,3)*M(2,2)*M(3,5)*M(4,6)*M(5,1)*M(6,4) + M(1,3)*M(2,2)*M(3,5)*M(4,6)*M(5,4)*M(6,1) + M(1,3)*M(2,2)*M(3,6)*M(4,1)*M(5,4)*M(6,5) - M(1,3)*M(2,2)*M(3,6)*M(4,1)*M(5,5)*M(6,4) - M(1,3)*M(2,2)*M(3,6)*M(4,4)*M(5,1)*M(6,5) + M(1,3)*M(2,2)*M(3,6)*M(4,4)*M(5,5)*M(6,1) + M(1,3)*M(2,2)*M(3,6)*M(4,5)*M(5,1)*M(6,4) - M(1,3)*M(2,2)*M(3,6)*M(4,5)*M(5,4)*M(6,1) + M(1,3)*M(2,4)*M(3,1)*M(4,2)*M(5,5)*M(6,6) - M(1,3)*M(2,4)*M(3,1)*M(4,2)*M(5,6)*M(6,5) - M(1,3)*M(2,4)*M(3,1)*M(4,5)*M(5,2)*M(6,6) + M(1,3)*M(2,4)*M(3,1)*M(4,5)*M(5,6)*M(6,2) + M(1,3)*M(2,4)*M(3,1)*M(4,6)*M(5,2)*M(6,5) - M(1,3)*M(2,4)*M(3,1)*M(4,6)*M(5,5)*M(6,2) - M(1,3)*M(2,4)*M(3,2)*M(4,1)*M(5,5)*M(6,6) + M(1,3)*M(2,4)*M(3,2)*M(4,1)*M(5,6)*M(6,5) + M(1,3)*M(2,4)*M(3,2)*M(4,5)*M(5,1)*M(6,6) - M(1,3)*M(2,4)*M(3,2)*M(4,5)*M(5,6)*M(6,1) - M(1,3)*M(2,4)*M(3,2)*M(4,6)*M(5,1)*M(6,5) + M(1,3)*M(2,4)*M(3,2)*M(4,6)*M(5,5)*M(6,1) + M(1,3)*M(2,4)*M(3,5)*M(4,1)*M(5,2)*M(6,6) - M(1,3)*M(2,4)*M(3,5)*M(4,1)*M(5,6)*M(6,2) - M(1,3)*M(2,4)*M(3,5)*M(4,2)*M(5,1)*M(6,6) + M(1,3)*M(2,4)*M(3,5)*M(4,2)*M(5,6)*M(6,1) + M(1,3)*M(2,4)*M(3,5)*M(4,6)*M(5,1)*M(6,2) - M(1,3)*M(2,4)*M(3,5)*M(4,6)*M(5,2)*M(6,1) - M(1,3)*M(2,4)*M(3,6)*M(4,1)*M(5,2)*M(6,5) + M(1,3)*M(2,4)*M(3,6)*M(4,1)*M(5,5)*M(6,2) + M(1,3)*M(2,4)*M(3,6)*M(4,2)*M(5,1)*M(6,5) - M(1,3)*M(2,4)*M(3,6)*M(4,2)*M(5,5)*M(6,1) - M(1,3)*M(2,4)*M(3,6)*M(4,5)*M(5,1)*M(6,2) + M(1,3)*M(2,4)*M(3,6)*M(4,5)*M(5,2)*M(6,1) - M(1,3)*M(2,5)*M(3,1)*M(4,2)*M(5,4)*M(6,6) + M(1,3)*M(2,5)*M(3,1)*M(4,2)*M(5,6)*M(6,4) + M(1,3)*M(2,5)*M(3,1)*M(4,4)*M(5,2)*M(6,6) - M(1,3)*M(2,5)*M(3,1)*M(4,4)*M(5,6)*M(6,2) - M(1,3)*M(2,5)*M(3,1)*M(4,6)*M(5,2)*M(6,4) + M(1,3)*M(2,5)*M(3,1)*M(4,6)*M(5,4)*M(6,2) + M(1,3)*M(2,5)*M(3,2)*M(4,1)*M(5,4)*M(6,6) - M(1,3)*M(2,5)*M(3,2)*M(4,1)*M(5,6)*M(6,4) - M(1,3)*M(2,5)*M(3,2)*M(4,4)*M(5,1)*M(6,6) + M(1,3)*M(2,5)*M(3,2)*M(4,4)*M(5,6)*M(6,1) + M(1,3)*M(2,5)*M(3,2)*M(4,6)*M(5,1)*M(6,4) - M(1,3)*M(2,5)*M(3,2)*M(4,6)*M(5,4)*M(6,1) - M(1,3)*M(2,5)*M(3,4)*M(4,1)*M(5,2)*M(6,6) + M(1,3)*M(2,5)*M(3,4)*M(4,1)*M(5,6)*M(6,2) + M(1,3)*M(2,5)*M(3,4)*M(4,2)*M(5,1)*M(6,6) - M(1,3)*M(2,5)*M(3,4)*M(4,2)*M(5,6)*M(6,1) - M(1,3)*M(2,5)*M(3,4)*M(4,6)*M(5,1)*M(6,2) + M(1,3)*M(2,5)*M(3,4)*M(4,6)*M(5,2)*M(6,1) + M(1,3)*M(2,5)*M(3,6)*M(4,1)*M(5,2)*M(6,4) - M(1,3)*M(2,5)*M(3,6)*M(4,1)*M(5,4)*M(6,2) - M(1,3)*M(2,5)*M(3,6)*M(4,2)*M(5,1)*M(6,4) + M(1,3)*M(2,5)*M(3,6)*M(4,2)*M(5,4)*M(6,1) + M(1,3)*M(2,5)*M(3,6)*M(4,4)*M(5,1)*M(6,2) - M(1,3)*M(2,5)*M(3,6)*M(4,4)*M(5,2)*M(6,1) + M(1,3)*M(2,6)*M(3,1)*M(4,2)*M(5,4)*M(6,5) - M(1,3)*M(2,6)*M(3,1)*M(4,2)*M(5,5)*M(6,4) - M(1,3)*M(2,6)*M(3,1)*M(4,4)*M(5,2)*M(6,5) + M(1,3)*M(2,6)*M(3,1)*M(4,4)*M(5,5)*M(6,2) + M(1,3)*M(2,6)*M(3,1)*M(4,5)*M(5,2)*M(6,4) - M(1,3)*M(2,6)*M(3,1)*M(4,5)*M(5,4)*M(6,2) - M(1,3)*M(2,6)*M(3,2)*M(4,1)*M(5,4)*M(6,5) + M(1,3)*M(2,6)*M(3,2)*M(4,1)*M(5,5)*M(6,4) + M(1,3)*M(2,6)*M(3,2)*M(4,4)*M(5,1)*M(6,5) - M(1,3)*M(2,6)*M(3,2)*M(4,4)*M(5,5)*M(6,1) - M(1,3)*M(2,6)*M(3,2)*M(4,5)*M(5,1)*M(6,4) + M(1,3)*M(2,6)*M(3,2)*M(4,5)*M(5,4)*M(6,1) + M(1,3)*M(2,6)*M(3,4)*M(4,1)*M(5,2)*M(6,5) - M(1,3)*M(2,6)*M(3,4)*M(4,1)*M(5,5)*M(6,2) - M(1,3)*M(2,6)*M(3,4)*M(4,2)*M(5,1)*M(6,5) + M(1,3)*M(2,6)*M(3,4)*M(4,2)*M(5,5)*M(6,1) + M(1,3)*M(2,6)*M(3,4)*M(4,5)*M(5,1)*M(6,2) - M(1,3)*M(2,6)*M(3,4)*M(4,5)*M(5,2)*M(6,1) - M(1,3)*M(2,6)*M(3,5)*M(4,1)*M(5,2)*M(6,4) + M(1,3)*M(2,6)*M(3,5)*M(4,1)*M(5,4)*M(6,2) + M(1,3)*M(2,6)*M(3,5)*M(4,2)*M(5,1)*M(6,4) - M(1,3)*M(2,6)*M(3,5)*M(4,2)*M(5,4)*M(6,1) - M(1,3)*M(2,6)*M(3,5)*M(4,4)*M(5,1)*M(6,2) + M(1,3)*M(2,6)*M(3,5)*M(4,4)*M(5,2)*M(6,1) - M(1,4)*M(2,1)*M(3,2)*M(4,3)*M(5,5)*M(6,6) + M(1,4)*M(2,1)*M(3,2)*M(4,3)*M(5,6)*M(6,5) + M(1,4)*M(2,1)*M(3,2)*M(4,5)*M(5,3)*M(6,6) - M(1,4)*M(2,1)*M(3,2)*M(4,5)*M(5,6)*M(6,3) - M(1,4)*M(2,1)*M(3,2)*M(4,6)*M(5,3)*M(6,5) + M(1,4)*M(2,1)*M(3,2)*M(4,6)*M(5,5)*M(6,3) + M(1,4)*M(2,1)*M(3,3)*M(4,2)*M(5,5)*M(6,6) - M(1,4)*M(2,1)*M(3,3)*M(4,2)*M(5,6)*M(6,5) - M(1,4)*M(2,1)*M(3,3)*M(4,5)*M(5,2)*M(6,6) + M(1,4)*M(2,1)*M(3,3)*M(4,5)*M(5,6)*M(6,2) + M(1,4)*M(2,1)*M(3,3)*M(4,6)*M(5,2)*M(6,5) - M(1,4)*M(2,1)*M(3,3)*M(4,6)*M(5,5)*M(6,2) - M(1,4)*M(2,1)*M(3,5)*M(4,2)*M(5,3)*M(6,6) + M(1,4)*M(2,1)*M(3,5)*M(4,2)*M(5,6)*M(6,3) + M(1,4)*M(2,1)*M(3,5)*M(4,3)*M(5,2)*M(6,6) - M(1,4)*M(2,1)*M(3,5)*M(4,3)*M(5,6)*M(6,2) - M(1,4)*M(2,1)*M(3,5)*M(4,6)*M(5,2)*M(6,3) + M(1,4)*M(2,1)*M(3,5)*M(4,6)*M(5,3)*M(6,2) + M(1,4)*M(2,1)*M(3,6)*M(4,2)*M(5,3)*M(6,5) - M(1,4)*M(2,1)*M(3,6)*M(4,2)*M(5,5)*M(6,3) - M(1,4)*M(2,1)*M(3,6)*M(4,3)*M(5,2)*M(6,5) + M(1,4)*M(2,1)*M(3,6)*M(4,3)*M(5,5)*M(6,2) + M(1,4)*M(2,1)*M(3,6)*M(4,5)*M(5,2)*M(6,3) - M(1,4)*M(2,1)*M(3,6)*M(4,5)*M(5,3)*M(6,2) + M(1,4)*M(2,2)*M(3,1)*M(4,3)*M(5,5)*M(6,6) - M(1,4)*M(2,2)*M(3,1)*M(4,3)*M(5,6)*M(6,5) - M(1,4)*M(2,2)*M(3,1)*M(4,5)*M(5,3)*M(6,6) + M(1,4)*M(2,2)*M(3,1)*M(4,5)*M(5,6)*M(6,3) + M(1,4)*M(2,2)*M(3,1)*M(4,6)*M(5,3)*M(6,5) - M(1,4)*M(2,2)*M(3,1)*M(4,6)*M(5,5)*M(6,3) - M(1,4)*M(2,2)*M(3,3)*M(4,1)*M(5,5)*M(6,6) + M(1,4)*M(2,2)*M(3,3)*M(4,1)*M(5,6)*M(6,5) + M(1,4)*M(2,2)*M(3,3)*M(4,5)*M(5,1)*M(6,6) - M(1,4)*M(2,2)*M(3,3)*M(4,5)*M(5,6)*M(6,1) - M(1,4)*M(2,2)*M(3,3)*M(4,6)*M(5,1)*M(6,5) + M(1,4)*M(2,2)*M(3,3)*M(4,6)*M(5,5)*M(6,1) + M(1,4)*M(2,2)*M(3,5)*M(4,1)*M(5,3)*M(6,6) - M(1,4)*M(2,2)*M(3,5)*M(4,1)*M(5,6)*M(6,3) - M(1,4)*M(2,2)*M(3,5)*M(4,3)*M(5,1)*M(6,6) + M(1,4)*M(2,2)*M(3,5)*M(4,3)*M(5,6)*M(6,1) + M(1,4)*M(2,2)*M(3,5)*M(4,6)*M(5,1)*M(6,3) - M(1,4)*M(2,2)*M(3,5)*M(4,6)*M(5,3)*M(6,1) - M(1,4)*M(2,2)*M(3,6)*M(4,1)*M(5,3)*M(6,5) + M(1,4)*M(2,2)*M(3,6)*M(4,1)*M(5,5)*M(6,3) + M(1,4)*M(2,2)*M(3,6)*M(4,3)*M(5,1)*M(6,5) - M(1,4)*M(2,2)*M(3,6)*M(4,3)*M(5,5)*M(6,1) - M(1,4)*M(2,2)*M(3,6)*M(4,5)*M(5,1)*M(6,3) + M(1,4)*M(2,2)*M(3,6)*M(4,5)*M(5,3)*M(6,1) - M(1,4)*M(2,3)*M(3,1)*M(4,2)*M(5,5)*M(6,6) + M(1,4)*M(2,3)*M(3,1)*M(4,2)*M(5,6)*M(6,5) + M(1,4)*M(2,3)*M(3,1)*M(4,5)*M(5,2)*M(6,6) - M(1,4)*M(2,3)*M(3,1)*M(4,5)*M(5,6)*M(6,2) - M(1,4)*M(2,3)*M(3,1)*M(4,6)*M(5,2)*M(6,5) + M(1,4)*M(2,3)*M(3,1)*M(4,6)*M(5,5)*M(6,2) + M(1,4)*M(2,3)*M(3,2)*M(4,1)*M(5,5)*M(6,6) - M(1,4)*M(2,3)*M(3,2)*M(4,1)*M(5,6)*M(6,5) - M(1,4)*M(2,3)*M(3,2)*M(4,5)*M(5,1)*M(6,6) + M(1,4)*M(2,3)*M(3,2)*M(4,5)*M(5,6)*M(6,1) + M(1,4)*M(2,3)*M(3,2)*M(4,6)*M(5,1)*M(6,5) - M(1,4)*M(2,3)*M(3,2)*M(4,6)*M(5,5)*M(6,1) - M(1,4)*M(2,3)*M(3,5)*M(4,1)*M(5,2)*M(6,6) + M(1,4)*M(2,3)*M(3,5)*M(4,1)*M(5,6)*M(6,2) + M(1,4)*M(2,3)*M(3,5)*M(4,2)*M(5,1)*M(6,6) - M(1,4)*M(2,3)*M(3,5)*M(4,2)*M(5,6)*M(6,1) - M(1,4)*M(2,3)*M(3,5)*M(4,6)*M(5,1)*M(6,2) + M(1,4)*M(2,3)*M(3,5)*M(4,6)*M(5,2)*M(6,1) + M(1,4)*M(2,3)*M(3,6)*M(4,1)*M(5,2)*M(6,5) - M(1,4)*M(2,3)*M(3,6)*M(4,1)*M(5,5)*M(6,2) - M(1,4)*M(2,3)*M(3,6)*M(4,2)*M(5,1)*M(6,5) + M(1,4)*M(2,3)*M(3,6)*M(4,2)*M(5,5)*M(6,1) + M(1,4)*M(2,3)*M(3,6)*M(4,5)*M(5,1)*M(6,2) - M(1,4)*M(2,3)*M(3,6)*M(4,5)*M(5,2)*M(6,1) + M(1,4)*M(2,5)*M(3,1)*M(4,2)*M(5,3)*M(6,6) - M(1,4)*M(2,5)*M(3,1)*M(4,2)*M(5,6)*M(6,3) - M(1,4)*M(2,5)*M(3,1)*M(4,3)*M(5,2)*M(6,6) + M(1,4)*M(2,5)*M(3,1)*M(4,3)*M(5,6)*M(6,2) + M(1,4)*M(2,5)*M(3,1)*M(4,6)*M(5,2)*M(6,3) - M(1,4)*M(2,5)*M(3,1)*M(4,6)*M(5,3)*M(6,2) - M(1,4)*M(2,5)*M(3,2)*M(4,1)*M(5,3)*M(6,6) + M(1,4)*M(2,5)*M(3,2)*M(4,1)*M(5,6)*M(6,3) + M(1,4)*M(2,5)*M(3,2)*M(4,3)*M(5,1)*M(6,6) - M(1,4)*M(2,5)*M(3,2)*M(4,3)*M(5,6)*M(6,1) - M(1,4)*M(2,5)*M(3,2)*M(4,6)*M(5,1)*M(6,3) + M(1,4)*M(2,5)*M(3,2)*M(4,6)*M(5,3)*M(6,1) + M(1,4)*M(2,5)*M(3,3)*M(4,1)*M(5,2)*M(6,6) - M(1,4)*M(2,5)*M(3,3)*M(4,1)*M(5,6)*M(6,2) - M(1,4)*M(2,5)*M(3,3)*M(4,2)*M(5,1)*M(6,6) + M(1,4)*M(2,5)*M(3,3)*M(4,2)*M(5,6)*M(6,1) + M(1,4)*M(2,5)*M(3,3)*M(4,6)*M(5,1)*M(6,2) - M(1,4)*M(2,5)*M(3,3)*M(4,6)*M(5,2)*M(6,1) - M(1,4)*M(2,5)*M(3,6)*M(4,1)*M(5,2)*M(6,3) + M(1,4)*M(2,5)*M(3,6)*M(4,1)*M(5,3)*M(6,2) + M(1,4)*M(2,5)*M(3,6)*M(4,2)*M(5,1)*M(6,3) - M(1,4)*M(2,5)*M(3,6)*M(4,2)*M(5,3)*M(6,1) - M(1,4)*M(2,5)*M(3,6)*M(4,3)*M(5,1)*M(6,2) + M(1,4)*M(2,5)*M(3,6)*M(4,3)*M(5,2)*M(6,1) - M(1,4)*M(2,6)*M(3,1)*M(4,2)*M(5,3)*M(6,5) + M(1,4)*M(2,6)*M(3,1)*M(4,2)*M(5,5)*M(6,3) + M(1,4)*M(2,6)*M(3,1)*M(4,3)*M(5,2)*M(6,5) - M(1,4)*M(2,6)*M(3,1)*M(4,3)*M(5,5)*M(6,2) - M(1,4)*M(2,6)*M(3,1)*M(4,5)*M(5,2)*M(6,3) + M(1,4)*M(2,6)*M(3,1)*M(4,5)*M(5,3)*M(6,2) + M(1,4)*M(2,6)*M(3,2)*M(4,1)*M(5,3)*M(6,5) - M(1,4)*M(2,6)*M(3,2)*M(4,1)*M(5,5)*M(6,3) - M(1,4)*M(2,6)*M(3,2)*M(4,3)*M(5,1)*M(6,5) + M(1,4)*M(2,6)*M(3,2)*M(4,3)*M(5,5)*M(6,1) + M(1,4)*M(2,6)*M(3,2)*M(4,5)*M(5,1)*M(6,3) - M(1,4)*M(2,6)*M(3,2)*M(4,5)*M(5,3)*M(6,1) - M(1,4)*M(2,6)*M(3,3)*M(4,1)*M(5,2)*M(6,5) + M(1,4)*M(2,6)*M(3,3)*M(4,1)*M(5,5)*M(6,2) + M(1,4)*M(2,6)*M(3,3)*M(4,2)*M(5,1)*M(6,5) - M(1,4)*M(2,6)*M(3,3)*M(4,2)*M(5,5)*M(6,1) - M(1,4)*M(2,6)*M(3,3)*M(4,5)*M(5,1)*M(6,2) + M(1,4)*M(2,6)*M(3,3)*M(4,5)*M(5,2)*M(6,1) + M(1,4)*M(2,6)*M(3,5)*M(4,1)*M(5,2)*M(6,3) - M(1,4)*M(2,6)*M(3,5)*M(4,1)*M(5,3)*M(6,2) - M(1,4)*M(2,6)*M(3,5)*M(4,2)*M(5,1)*M(6,3) + M(1,4)*M(2,6)*M(3,5)*M(4,2)*M(5,3)*M(6,1) + M(1,4)*M(2,6)*M(3,5)*M(4,3)*M(5,1)*M(6,2) - M(1,4)*M(2,6)*M(3,5)*M(4,3)*M(5,2)*M(6,1) + M(1,5)*M(2,1)*M(3,2)*M(4,3)*M(5,4)*M(6,6) - M(1,5)*M(2,1)*M(3,2)*M(4,3)*M(5,6)*M(6,4) - M(1,5)*M(2,1)*M(3,2)*M(4,4)*M(5,3)*M(6,6) + M(1,5)*M(2,1)*M(3,2)*M(4,4)*M(5,6)*M(6,3) + M(1,5)*M(2,1)*M(3,2)*M(4,6)*M(5,3)*M(6,4) - M(1,5)*M(2,1)*M(3,2)*M(4,6)*M(5,4)*M(6,3) - M(1,5)*M(2,1)*M(3,3)*M(4,2)*M(5,4)*M(6,6) + M(1,5)*M(2,1)*M(3,3)*M(4,2)*M(5,6)*M(6,4) + M(1,5)*M(2,1)*M(3,3)*M(4,4)*M(5,2)*M(6,6) - M(1,5)*M(2,1)*M(3,3)*M(4,4)*M(5,6)*M(6,2) - M(1,5)*M(2,1)*M(3,3)*M(4,6)*M(5,2)*M(6,4) + M(1,5)*M(2,1)*M(3,3)*M(4,6)*M(5,4)*M(6,2) + M(1,5)*M(2,1)*M(3,4)*M(4,2)*M(5,3)*M(6,6) - M(1,5)*M(2,1)*M(3,4)*M(4,2)*M(5,6)*M(6,3) - M(1,5)*M(2,1)*M(3,4)*M(4,3)*M(5,2)*M(6,6) + M(1,5)*M(2,1)*M(3,4)*M(4,3)*M(5,6)*M(6,2) + M(1,5)*M(2,1)*M(3,4)*M(4,6)*M(5,2)*M(6,3) - M(1,5)*M(2,1)*M(3,4)*M(4,6)*M(5,3)*M(6,2) - M(1,5)*M(2,1)*M(3,6)*M(4,2)*M(5,3)*M(6,4) + M(1,5)*M(2,1)*M(3,6)*M(4,2)*M(5,4)*M(6,3) + M(1,5)*M(2,1)*M(3,6)*M(4,3)*M(5,2)*M(6,4) - M(1,5)*M(2,1)*M(3,6)*M(4,3)*M(5,4)*M(6,2) - M(1,5)*M(2,1)*M(3,6)*M(4,4)*M(5,2)*M(6,3) + M(1,5)*M(2,1)*M(3,6)*M(4,4)*M(5,3)*M(6,2) - M(1,5)*M(2,2)*M(3,1)*M(4,3)*M(5,4)*M(6,6) + M(1,5)*M(2,2)*M(3,1)*M(4,3)*M(5,6)*M(6,4) + M(1,5)*M(2,2)*M(3,1)*M(4,4)*M(5,3)*M(6,6) - M(1,5)*M(2,2)*M(3,1)*M(4,4)*M(5,6)*M(6,3) - M(1,5)*M(2,2)*M(3,1)*M(4,6)*M(5,3)*M(6,4) + M(1,5)*M(2,2)*M(3,1)*M(4,6)*M(5,4)*M(6,3) + M(1,5)*M(2,2)*M(3,3)*M(4,1)*M(5,4)*M(6,6) - M(1,5)*M(2,2)*M(3,3)*M(4,1)*M(5,6)*M(6,4) - M(1,5)*M(2,2)*M(3,3)*M(4,4)*M(5,1)*M(6,6) + M(1,5)*M(2,2)*M(3,3)*M(4,4)*M(5,6)*M(6,1) + M(1,5)*M(2,2)*M(3,3)*M(4,6)*M(5,1)*M(6,4) - M(1,5)*M(2,2)*M(3,3)*M(4,6)*M(5,4)*M(6,1) - M(1,5)*M(2,2)*M(3,4)*M(4,1)*M(5,3)*M(6,6) + M(1,5)*M(2,2)*M(3,4)*M(4,1)*M(5,6)*M(6,3) + M(1,5)*M(2,2)*M(3,4)*M(4,3)*M(5,1)*M(6,6) - M(1,5)*M(2,2)*M(3,4)*M(4,3)*M(5,6)*M(6,1) - M(1,5)*M(2,2)*M(3,4)*M(4,6)*M(5,1)*M(6,3) + M(1,5)*M(2,2)*M(3,4)*M(4,6)*M(5,3)*M(6,1) + M(1,5)*M(2,2)*M(3,6)*M(4,1)*M(5,3)*M(6,4) - M(1,5)*M(2,2)*M(3,6)*M(4,1)*M(5,4)*M(6,3) - M(1,5)*M(2,2)*M(3,6)*M(4,3)*M(5,1)*M(6,4) + M(1,5)*M(2,2)*M(3,6)*M(4,3)*M(5,4)*M(6,1) + M(1,5)*M(2,2)*M(3,6)*M(4,4)*M(5,1)*M(6,3) - M(1,5)*M(2,2)*M(3,6)*M(4,4)*M(5,3)*M(6,1) + M(1,5)*M(2,3)*M(3,1)*M(4,2)*M(5,4)*M(6,6) - M(1,5)*M(2,3)*M(3,1)*M(4,2)*M(5,6)*M(6,4) - M(1,5)*M(2,3)*M(3,1)*M(4,4)*M(5,2)*M(6,6) + M(1,5)*M(2,3)*M(3,1)*M(4,4)*M(5,6)*M(6,2) + M(1,5)*M(2,3)*M(3,1)*M(4,6)*M(5,2)*M(6,4) - M(1,5)*M(2,3)*M(3,1)*M(4,6)*M(5,4)*M(6,2) - M(1,5)*M(2,3)*M(3,2)*M(4,1)*M(5,4)*M(6,6) + M(1,5)*M(2,3)*M(3,2)*M(4,1)*M(5,6)*M(6,4) + M(1,5)*M(2,3)*M(3,2)*M(4,4)*M(5,1)*M(6,6) - M(1,5)*M(2,3)*M(3,2)*M(4,4)*M(5,6)*M(6,1) - M(1,5)*M(2,3)*M(3,2)*M(4,6)*M(5,1)*M(6,4) + M(1,5)*M(2,3)*M(3,2)*M(4,6)*M(5,4)*M(6,1) + M(1,5)*M(2,3)*M(3,4)*M(4,1)*M(5,2)*M(6,6) - M(1,5)*M(2,3)*M(3,4)*M(4,1)*M(5,6)*M(6,2) - M(1,5)*M(2,3)*M(3,4)*M(4,2)*M(5,1)*M(6,6) + M(1,5)*M(2,3)*M(3,4)*M(4,2)*M(5,6)*M(6,1) + M(1,5)*M(2,3)*M(3,4)*M(4,6)*M(5,1)*M(6,2) - M(1,5)*M(2,3)*M(3,4)*M(4,6)*M(5,2)*M(6,1) - M(1,5)*M(2,3)*M(3,6)*M(4,1)*M(5,2)*M(6,4) + M(1,5)*M(2,3)*M(3,6)*M(4,1)*M(5,4)*M(6,2) + M(1,5)*M(2,3)*M(3,6)*M(4,2)*M(5,1)*M(6,4) - M(1,5)*M(2,3)*M(3,6)*M(4,2)*M(5,4)*M(6,1) - M(1,5)*M(2,3)*M(3,6)*M(4,4)*M(5,1)*M(6,2) + M(1,5)*M(2,3)*M(3,6)*M(4,4)*M(5,2)*M(6,1) - M(1,5)*M(2,4)*M(3,1)*M(4,2)*M(5,3)*M(6,6) + M(1,5)*M(2,4)*M(3,1)*M(4,2)*M(5,6)*M(6,3) + M(1,5)*M(2,4)*M(3,1)*M(4,3)*M(5,2)*M(6,6) - M(1,5)*M(2,4)*M(3,1)*M(4,3)*M(5,6)*M(6,2) - M(1,5)*M(2,4)*M(3,1)*M(4,6)*M(5,2)*M(6,3) + M(1,5)*M(2,4)*M(3,1)*M(4,6)*M(5,3)*M(6,2) + M(1,5)*M(2,4)*M(3,2)*M(4,1)*M(5,3)*M(6,6) - M(1,5)*M(2,4)*M(3,2)*M(4,1)*M(5,6)*M(6,3) - M(1,5)*M(2,4)*M(3,2)*M(4,3)*M(5,1)*M(6,6) + M(1,5)*M(2,4)*M(3,2)*M(4,3)*M(5,6)*M(6,1) + M(1,5)*M(2,4)*M(3,2)*M(4,6)*M(5,1)*M(6,3) - M(1,5)*M(2,4)*M(3,2)*M(4,6)*M(5,3)*M(6,1) - M(1,5)*M(2,4)*M(3,3)*M(4,1)*M(5,2)*M(6,6) + M(1,5)*M(2,4)*M(3,3)*M(4,1)*M(5,6)*M(6,2) + M(1,5)*M(2,4)*M(3,3)*M(4,2)*M(5,1)*M(6,6) - M(1,5)*M(2,4)*M(3,3)*M(4,2)*M(5,6)*M(6,1) - M(1,5)*M(2,4)*M(3,3)*M(4,6)*M(5,1)*M(6,2) + M(1,5)*M(2,4)*M(3,3)*M(4,6)*M(5,2)*M(6,1) + M(1,5)*M(2,4)*M(3,6)*M(4,1)*M(5,2)*M(6,3) - M(1,5)*M(2,4)*M(3,6)*M(4,1)*M(5,3)*M(6,2) - M(1,5)*M(2,4)*M(3,6)*M(4,2)*M(5,1)*M(6,3) + M(1,5)*M(2,4)*M(3,6)*M(4,2)*M(5,3)*M(6,1) + M(1,5)*M(2,4)*M(3,6)*M(4,3)*M(5,1)*M(6,2) - M(1,5)*M(2,4)*M(3,6)*M(4,3)*M(5,2)*M(6,1) + M(1,5)*M(2,6)*M(3,1)*M(4,2)*M(5,3)*M(6,4) - M(1,5)*M(2,6)*M(3,1)*M(4,2)*M(5,4)*M(6,3) - M(1,5)*M(2,6)*M(3,1)*M(4,3)*M(5,2)*M(6,4) + M(1,5)*M(2,6)*M(3,1)*M(4,3)*M(5,4)*M(6,2) + M(1,5)*M(2,6)*M(3,1)*M(4,4)*M(5,2)*M(6,3) - M(1,5)*M(2,6)*M(3,1)*M(4,4)*M(5,3)*M(6,2) - M(1,5)*M(2,6)*M(3,2)*M(4,1)*M(5,3)*M(6,4) + M(1,5)*M(2,6)*M(3,2)*M(4,1)*M(5,4)*M(6,3) + M(1,5)*M(2,6)*M(3,2)*M(4,3)*M(5,1)*M(6,4) - M(1,5)*M(2,6)*M(3,2)*M(4,3)*M(5,4)*M(6,1) - M(1,5)*M(2,6)*M(3,2)*M(4,4)*M(5,1)*M(6,3) + M(1,5)*M(2,6)*M(3,2)*M(4,4)*M(5,3)*M(6,1) + M(1,5)*M(2,6)*M(3,3)*M(4,1)*M(5,2)*M(6,4) - M(1,5)*M(2,6)*M(3,3)*M(4,1)*M(5,4)*M(6,2) - M(1,5)*M(2,6)*M(3,3)*M(4,2)*M(5,1)*M(6,4) + M(1,5)*M(2,6)*M(3,3)*M(4,2)*M(5,4)*M(6,1) + M(1,5)*M(2,6)*M(3,3)*M(4,4)*M(5,1)*M(6,2) - M(1,5)*M(2,6)*M(3,3)*M(4,4)*M(5,2)*M(6,1) - M(1,5)*M(2,6)*M(3,4)*M(4,1)*M(5,2)*M(6,3) + M(1,5)*M(2,6)*M(3,4)*M(4,1)*M(5,3)*M(6,2) + M(1,5)*M(2,6)*M(3,4)*M(4,2)*M(5,1)*M(6,3) - M(1,5)*M(2,6)*M(3,4)*M(4,2)*M(5,3)*M(6,1) - M(1,5)*M(2,6)*M(3,4)*M(4,3)*M(5,1)*M(6,2) + M(1,5)*M(2,6)*M(3,4)*M(4,3)*M(5,2)*M(6,1) - M(1,6)*M(2,1)*M(3,2)*M(4,3)*M(5,4)*M(6,5) + M(1,6)*M(2,1)*M(3,2)*M(4,3)*M(5,5)*M(6,4) + M(1,6)*M(2,1)*M(3,2)*M(4,4)*M(5,3)*M(6,5) - M(1,6)*M(2,1)*M(3,2)*M(4,4)*M(5,5)*M(6,3) - M(1,6)*M(2,1)*M(3,2)*M(4,5)*M(5,3)*M(6,4) + M(1,6)*M(2,1)*M(3,2)*M(4,5)*M(5,4)*M(6,3) + M(1,6)*M(2,1)*M(3,3)*M(4,2)*M(5,4)*M(6,5) - M(1,6)*M(2,1)*M(3,3)*M(4,2)*M(5,5)*M(6,4) - M(1,6)*M(2,1)*M(3,3)*M(4,4)*M(5,2)*M(6,5) + M(1,6)*M(2,1)*M(3,3)*M(4,4)*M(5,5)*M(6,2) + M(1,6)*M(2,1)*M(3,3)*M(4,5)*M(5,2)*M(6,4) - M(1,6)*M(2,1)*M(3,3)*M(4,5)*M(5,4)*M(6,2) - M(1,6)*M(2,1)*M(3,4)*M(4,2)*M(5,3)*M(6,5) + M(1,6)*M(2,1)*M(3,4)*M(4,2)*M(5,5)*M(6,3) + M(1,6)*M(2,1)*M(3,4)*M(4,3)*M(5,2)*M(6,5) - M(1,6)*M(2,1)*M(3,4)*M(4,3)*M(5,5)*M(6,2) - M(1,6)*M(2,1)*M(3,4)*M(4,5)*M(5,2)*M(6,3) + M(1,6)*M(2,1)*M(3,4)*M(4,5)*M(5,3)*M(6,2) + M(1,6)*M(2,1)*M(3,5)*M(4,2)*M(5,3)*M(6,4) - M(1,6)*M(2,1)*M(3,5)*M(4,2)*M(5,4)*M(6,3) - M(1,6)*M(2,1)*M(3,5)*M(4,3)*M(5,2)*M(6,4) + M(1,6)*M(2,1)*M(3,5)*M(4,3)*M(5,4)*M(6,2) + M(1,6)*M(2,1)*M(3,5)*M(4,4)*M(5,2)*M(6,3) - M(1,6)*M(2,1)*M(3,5)*M(4,4)*M(5,3)*M(6,2) + M(1,6)*M(2,2)*M(3,1)*M(4,3)*M(5,4)*M(6,5) - M(1,6)*M(2,2)*M(3,1)*M(4,3)*M(5,5)*M(6,4) - M(1,6)*M(2,2)*M(3,1)*M(4,4)*M(5,3)*M(6,5) + M(1,6)*M(2,2)*M(3,1)*M(4,4)*M(5,5)*M(6,3) + M(1,6)*M(2,2)*M(3,1)*M(4,5)*M(5,3)*M(6,4) - M(1,6)*M(2,2)*M(3,1)*M(4,5)*M(5,4)*M(6,3) - M(1,6)*M(2,2)*M(3,3)*M(4,1)*M(5,4)*M(6,5) + M(1,6)*M(2,2)*M(3,3)*M(4,1)*M(5,5)*M(6,4) + M(1,6)*M(2,2)*M(3,3)*M(4,4)*M(5,1)*M(6,5) - M(1,6)*M(2,2)*M(3,3)*M(4,4)*M(5,5)*M(6,1) - M(1,6)*M(2,2)*M(3,3)*M(4,5)*M(5,1)*M(6,4) + M(1,6)*M(2,2)*M(3,3)*M(4,5)*M(5,4)*M(6,1) + M(1,6)*M(2,2)*M(3,4)*M(4,1)*M(5,3)*M(6,5) - M(1,6)*M(2,2)*M(3,4)*M(4,1)*M(5,5)*M(6,3) - M(1,6)*M(2,2)*M(3,4)*M(4,3)*M(5,1)*M(6,5) + M(1,6)*M(2,2)*M(3,4)*M(4,3)*M(5,5)*M(6,1) + M(1,6)*M(2,2)*M(3,4)*M(4,5)*M(5,1)*M(6,3) - M(1,6)*M(2,2)*M(3,4)*M(4,5)*M(5,3)*M(6,1) - M(1,6)*M(2,2)*M(3,5)*M(4,1)*M(5,3)*M(6,4) + M(1,6)*M(2,2)*M(3,5)*M(4,1)*M(5,4)*M(6,3) + M(1,6)*M(2,2)*M(3,5)*M(4,3)*M(5,1)*M(6,4) - M(1,6)*M(2,2)*M(3,5)*M(4,3)*M(5,4)*M(6,1) - M(1,6)*M(2,2)*M(3,5)*M(4,4)*M(5,1)*M(6,3) + M(1,6)*M(2,2)*M(3,5)*M(4,4)*M(5,3)*M(6,1) - M(1,6)*M(2,3)*M(3,1)*M(4,2)*M(5,4)*M(6,5) + M(1,6)*M(2,3)*M(3,1)*M(4,2)*M(5,5)*M(6,4) + M(1,6)*M(2,3)*M(3,1)*M(4,4)*M(5,2)*M(6,5) - M(1,6)*M(2,3)*M(3,1)*M(4,4)*M(5,5)*M(6,2) - M(1,6)*M(2,3)*M(3,1)*M(4,5)*M(5,2)*M(6,4) + M(1,6)*M(2,3)*M(3,1)*M(4,5)*M(5,4)*M(6,2) + M(1,6)*M(2,3)*M(3,2)*M(4,1)*M(5,4)*M(6,5) - M(1,6)*M(2,3)*M(3,2)*M(4,1)*M(5,5)*M(6,4) - M(1,6)*M(2,3)*M(3,2)*M(4,4)*M(5,1)*M(6,5) + M(1,6)*M(2,3)*M(3,2)*M(4,4)*M(5,5)*M(6,1) + M(1,6)*M(2,3)*M(3,2)*M(4,5)*M(5,1)*M(6,4) - M(1,6)*M(2,3)*M(3,2)*M(4,5)*M(5,4)*M(6,1) - M(1,6)*M(2,3)*M(3,4)*M(4,1)*M(5,2)*M(6,5) + M(1,6)*M(2,3)*M(3,4)*M(4,1)*M(5,5)*M(6,2) + M(1,6)*M(2,3)*M(3,4)*M(4,2)*M(5,1)*M(6,5) - M(1,6)*M(2,3)*M(3,4)*M(4,2)*M(5,5)*M(6,1) - M(1,6)*M(2,3)*M(3,4)*M(4,5)*M(5,1)*M(6,2) + M(1,6)*M(2,3)*M(3,4)*M(4,5)*M(5,2)*M(6,1) + M(1,6)*M(2,3)*M(3,5)*M(4,1)*M(5,2)*M(6,4) - M(1,6)*M(2,3)*M(3,5)*M(4,1)*M(5,4)*M(6,2) - M(1,6)*M(2,3)*M(3,5)*M(4,2)*M(5,1)*M(6,4) + M(1,6)*M(2,3)*M(3,5)*M(4,2)*M(5,4)*M(6,1) + M(1,6)*M(2,3)*M(3,5)*M(4,4)*M(5,1)*M(6,2) - M(1,6)*M(2,3)*M(3,5)*M(4,4)*M(5,2)*M(6,1) + M(1,6)*M(2,4)*M(3,1)*M(4,2)*M(5,3)*M(6,5) - M(1,6)*M(2,4)*M(3,1)*M(4,2)*M(5,5)*M(6,3) - M(1,6)*M(2,4)*M(3,1)*M(4,3)*M(5,2)*M(6,5) + M(1,6)*M(2,4)*M(3,1)*M(4,3)*M(5,5)*M(6,2) + M(1,6)*M(2,4)*M(3,1)*M(4,5)*M(5,2)*M(6,3) - M(1,6)*M(2,4)*M(3,1)*M(4,5)*M(5,3)*M(6,2) - M(1,6)*M(2,4)*M(3,2)*M(4,1)*M(5,3)*M(6,5) + M(1,6)*M(2,4)*M(3,2)*M(4,1)*M(5,5)*M(6,3) + M(1,6)*M(2,4)*M(3,2)*M(4,3)*M(5,1)*M(6,5) - M(1,6)*M(2,4)*M(3,2)*M(4,3)*M(5,5)*M(6,1) - M(1,6)*M(2,4)*M(3,2)*M(4,5)*M(5,1)*M(6,3) + M(1,6)*M(2,4)*M(3,2)*M(4,5)*M(5,3)*M(6,1) + M(1,6)*M(2,4)*M(3,3)*M(4,1)*M(5,2)*M(6,5) - M(1,6)*M(2,4)*M(3,3)*M(4,1)*M(5,5)*M(6,2) - M(1,6)*M(2,4)*M(3,3)*M(4,2)*M(5,1)*M(6,5) + M(1,6)*M(2,4)*M(3,3)*M(4,2)*M(5,5)*M(6,1) + M(1,6)*M(2,4)*M(3,3)*M(4,5)*M(5,1)*M(6,2) - M(1,6)*M(2,4)*M(3,3)*M(4,5)*M(5,2)*M(6,1) - M(1,6)*M(2,4)*M(3,5)*M(4,1)*M(5,2)*M(6,3) + M(1,6)*M(2,4)*M(3,5)*M(4,1)*M(5,3)*M(6,2) + M(1,6)*M(2,4)*M(3,5)*M(4,2)*M(5,1)*M(6,3) - M(1,6)*M(2,4)*M(3,5)*M(4,2)*M(5,3)*M(6,1) - M(1,6)*M(2,4)*M(3,5)*M(4,3)*M(5,1)*M(6,2) + M(1,6)*M(2,4)*M(3,5)*M(4,3)*M(5,2)*M(6,1) - M(1,6)*M(2,5)*M(3,1)*M(4,2)*M(5,3)*M(6,4) + M(1,6)*M(2,5)*M(3,1)*M(4,2)*M(5,4)*M(6,3) + M(1,6)*M(2,5)*M(3,1)*M(4,3)*M(5,2)*M(6,4) - M(1,6)*M(2,5)*M(3,1)*M(4,3)*M(5,4)*M(6,2) - M(1,6)*M(2,5)*M(3,1)*M(4,4)*M(5,2)*M(6,3) + M(1,6)*M(2,5)*M(3,1)*M(4,4)*M(5,3)*M(6,2) + M(1,6)*M(2,5)*M(3,2)*M(4,1)*M(5,3)*M(6,4) - M(1,6)*M(2,5)*M(3,2)*M(4,1)*M(5,4)*M(6,3) - M(1,6)*M(2,5)*M(3,2)*M(4,3)*M(5,1)*M(6,4) + M(1,6)*M(2,5)*M(3,2)*M(4,3)*M(5,4)*M(6,1) + M(1,6)*M(2,5)*M(3,2)*M(4,4)*M(5,1)*M(6,3) - M(1,6)*M(2,5)*M(3,2)*M(4,4)*M(5,3)*M(6,1) - M(1,6)*M(2,5)*M(3,3)*M(4,1)*M(5,2)*M(6,4) + M(1,6)*M(2,5)*M(3,3)*M(4,1)*M(5,4)*M(6,2) + M(1,6)*M(2,5)*M(3,3)*M(4,2)*M(5,1)*M(6,4) - M(1,6)*M(2,5)*M(3,3)*M(4,2)*M(5,4)*M(6,1) - M(1,6)*M(2,5)*M(3,3)*M(4,4)*M(5,1)*M(6,2) + M(1,6)*M(2,5)*M(3,3)*M(4,4)*M(5,2)*M(6,1) + M(1,6)*M(2,5)*M(3,4)*M(4,1)*M(5,2)*M(6,3) - M(1,6)*M(2,5)*M(3,4)*M(4,1)*M(5,3)*M(6,2) - M(1,6)*M(2,5)*M(3,4)*M(4,2)*M(5,1)*M(6,3) + M(1,6)*M(2,5)*M(3,4)*M(4,2)*M(5,3)*M(6,1) + M(1,6)*M(2,5)*M(3,4)*M(4,3)*M(5,1)*M(6,2) - M(1,6)*M(2,5)*M(3,4)*M(4,3)*M(5,2)*M(6,1)
thetas = [t1, t2, t3, t4, t5, t6]
sing = vpasolve(detM==0,thetas)
% rank and parallel 
end
