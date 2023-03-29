function Jb = J_body_Simple(S,theta,M)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
B = adjT(inv(M))*S;
Js = J_space(S,theta);
% T_bs = FK_body(B,theta,M);
T_sb = FK_space(S,theta,M);
T_bs = inverse_T(T_sb);
Jb = adjT(T_bs)*Js;

end