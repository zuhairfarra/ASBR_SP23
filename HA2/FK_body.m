function T_eeb = FK_body(B,theta,M)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

n = length(B(1,:));

Exp_Prod = 1;

for idx = 1:n
    
     T = screwExp(B(:,idx),theta(idx))

    %T = [expm(ssm(B(:,idx))*theta(idx)) (eye(3)*theta(idx)+(1-cos(theta))*ssm(B(1:3,idx)) + (theta-sin(theta))*ssm)

    Exp_Prod = Exp_Prod * T

end

T_eeb = M * Exp_Prod

end