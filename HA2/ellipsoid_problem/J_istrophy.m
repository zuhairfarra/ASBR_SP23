function [istrophy] = J_istrophy(eig_vals)

sqrt_eig_vals = sqrt(eig_vals);
max_eig = max(sqrt_eig_vals); 
min_eig= min(sqrt_eig_vals); 
istrophy= max_eig/min_eig;

end