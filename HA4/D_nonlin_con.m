function [c,ceq] = D_nonlin_con(x,t,J_a,J_e,p_goal)
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here
c = norm((ssm(t)*J_a + J_e)*x+(t-p_goal)) - 0.003;
ceq = [];
end