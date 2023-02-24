function [S,theta] = screwMatLog(T)
% Function takes a 4x4 configuration matrix and returns a 6x1 screw axis and rotation angle theta

R = T(1:3,1:3);
p = T(1:3,4);
if isequal(R,eye(3))
    w_vector = zeros(3,1);
    v = p/norm(p);
    theta = norm(p);
else
    T_Mat_Log = rot2AA(R);
    w_vector = T_Mat_Log.Axis;
    theta = T_Mat_Log.Angle;
    w = [0 -w_vector(3) w_vector(2);w_vector(3) 0 -w_vector(1);-w_vector(2) w_vector(1) 0];
    G = (1/theta)*eye(3)-0.5*w+((1/theta)-0.5*cot(theta/2))*w^2;
    v = G*p;
end

S = [w_vector;v];




