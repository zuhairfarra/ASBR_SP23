function T_ee = FK_space(S,theta,M)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

n = length(S(1,:));

Exp_Prod = 1;

for idx = 1:n
    
    T = screwExp(S(:,idx),theta(idx));

    Exp_Prod = Exp_Prod * T;

end

T_ee = Exp_Prod * M;

end