function sing = singularity_theoretical(S)

syms t1 t2 t3 t4 t5 t6 

J_s = J_space_syms(S);
M  = J_s*transpose(J_s)
det_js = det(M)
det_jsn =  prod(diag(GaussElimination(M, '')))
% det_js = det(M,'Algorithm','minor-expansion')

sing = vpasolve(det_js == 0, [t1, t2, t3, t4, t5, t6])
 
end
