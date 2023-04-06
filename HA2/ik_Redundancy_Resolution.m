function [theta_d,err_w,err_v,w] = ik_Redundancy_Resolution(T_sd,theta_0,S,M,e_w,e_v)

% Algorithm:
joint_lims = deg2rad([170 120 170 120 170 120 175]);
idx = 1;
n = length(S(1,:));

k0 = 0.75;

theta_i(1,:) = theta_0;

B = adjT(M^-1)*S;

T_sb = FK_space(S,theta_i(idx,:),M);
    
T_Vb = logm(T_sb\T_sd);
Vb = [T_Vb(3,2);T_Vb(1,3);T_Vb(2,1);T_Vb(1,4);T_Vb(2,4);T_Vb(3,4)];

Vs = adjT(T_sb)*Vb;

n = length(S(1,:));
grad_w = zeros(n,1);

err_w(idx,1) = norm(Vs(1:3));
err_v(idx,1) = norm(Vs(4:6));

J = J_space(S,theta_i(idx,:));    
w(idx,1) = sqrt(det(J*J'));

while (norm(Vs(1:3)) > e_w || norm(Vs(4:6)) > e_v) && idx < 25
    
%   Calculating gradient of secondary objective function w  
    for jdx = 1:n
        theta_d = theta_i(idx,:);
        theta_d(jdx) = theta_i(idx,jdx)+0.01;
        J_d = J_space(S,theta_d);
        d_w = sqrt(det(J_d*J_d'));
        grad_w(jdx,1) = (d_w - w(idx))/(0.01);
    end

    qdot_0 = k0*grad_w;

    theta_i(idx+1,:) = theta_i(idx,:) + transpose(pinv(J)*Vs+(eye(7)-pinv(J)*J)*qdot_0);

    idx = idx + 1;

%   Saturate joint angles with joint limits
    for kdx=1:n
        if abs(theta_i(idx,kdx)) > joint_lims(kdx)
            theta_i(idx,kdx) = sign(theta_i(idx,kdx))*joint_lims(kdx);
        end
    end

    T_sb = FK_space(S,theta_i(idx,:),M);
   
    T_Vb = logm(T_sb\T_sd);
    Vb = [T_Vb(3,2);T_Vb(1,3);T_Vb(2,1);T_Vb(1,4);T_Vb(2,4);T_Vb(3,4)];
    
    Vs = adjT(T_sb)*Vb;
    err_w(idx,1) = norm(Vs(1:3));
    err_v(idx,1) = norm(Vs(4:6));

    J = J_space(S,theta_i(idx,:));    
    w(idx,1) = sqrt(det(J*J'));

end

theta_d = theta_i;

end