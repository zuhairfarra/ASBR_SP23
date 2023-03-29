function A = adjT(T)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
R = T(1:3,1:3);
p = ssm(T(1:3,4));

A = [R zeros(3,3);p*R R];

end