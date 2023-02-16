function [S,theta] = screwMatLog(T)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
R = T(1:3,1:3);
p = T(1:3,4);
if isequal(R,eye(3))
    w = zeros(3,1);
    v = p/norm(p);
    theta = norm(p)
else
    T_Mat_Log = rot2AA(R);
    w = T_Mat_Log.Axis;
    theta = T_Mat_Log.Angle;
    G = (1/theta)*eye(3)-0.5*w+((1/theta)-0.5*cot(theta/2))*w^2;
    v = G*p;
end