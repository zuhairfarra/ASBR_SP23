function Jb = J_body(B,theta)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

n = length(B(1,:));

Exp_Prod = 1;
Jb = zeros(6,n);

Jb(:,n) = B(:,n);

for idx = n-1:-1:1

    Exp_Prod = Exp_Prod*screwExp((-1)*B(:,idx+1),theta(idx+1));
    
    Jb_n = adjT(Exp_Prod)*B(:,idx);

    Jb(:,idx) = Jb_n;

end

end