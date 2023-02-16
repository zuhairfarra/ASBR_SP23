% function [T1_025,T1_050,T1_075,T1] = moveByScrew(T0,q,s,h,theta)
function T_Struct = moveByScrew(T0,Screw,theta)

T_Struct = struct;

q = Screw.q;
s = Screw.s;
h = Screw.h;

theta_dot = 1;
theta_list = [theta/4;theta/2;3*theta/4;theta];

% T1_s = zeros(4,4,4);

for idx = 1:length(theta_list)
    w_vector = s*theta_dot;
    
    v = cross(-s*theta_dot,q) + h*s*theta_dot
    
    w = [0 -w_vector(3) w_vector(2);w_vector(3) 0 -w_vector(1);-w_vector(2) w_vector(1) 0];
    
    R_TScrew = axisangle_to_rotation(w,theta_list(idx));
    
    p_TScrew = (eye(3,3)*theta_list(idx)+(1-cos(theta_list(idx)))*w+(theta_list(idx)-sin(theta_list(idx)))*w^2)*v;
    
    T_screw = [R_TScrew p_TScrew; 0 0 0 1];
    
%     T1_s(:,:,idx) = T_screw*T0;

    T_Struct(idx).T1 = T_screw*T0;

end

% T1_025 = T1_s(:,:,1);
% T1_050 = T1_s(:,:,2);
% T1_075 = T1_s(:,:,3);
% T1 = T1_s(:,:,4);

end