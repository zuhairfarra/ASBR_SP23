function Js = J_space(S,theta)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

n = length(S(1,:));

Exp_Prod = 1;
Js = S(:,1);

for idx = 2:n

    Exp_Prod = Exp_Prod*screwExp(S(:,idx-1),theta(idx-1));
    
    Js_n = adjT(Exp_Prod)*S(:,idx);

    Js(:,idx) = Js_n;

end

end