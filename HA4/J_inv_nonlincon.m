function [theta_d,err_w,err_v,V_ellip] = J_inv_nonlincon(T_sd,theta_0,S,M,e_w,e_v,p_goal)

% Algorithm:
% joint_lims = deg2rad([170 120 170 120 170 120 175]);
idx = 1;
n = length(S(1,:));
theta_i(1,:) = theta_0;

B = adjT(M^-1)*S;

T_sb = FK_space(S,theta_i(idx,:),M);
    
T_Vb = logm(T_sb\T_sd);
Vb = [T_Vb(3,2);T_Vb(1,3);T_Vb(2,1);T_Vb(1,4);T_Vb(2,4);T_Vb(3,4)];

Vs = adjT(T_sb)*Vb;

err_w(idx,1) = norm(Vs(1:3));
err_v(idx,1) = norm(Vs(4:6));

J = J_space(S,theta_i(idx,:));

V_ellip(idx,1) = sqrt(det(J*J'));

p_tip = [0;0;0.100];

lower_bound = -1*[170 120 170 120 170 120 175];
upper_bound = [170 120 170 120 170 120 175];

dq = [0 0 0 0 0 0 0];

while (norm(Vs(1:3)) > e_w || norm(Vs(4:6)) > e_v)
    
    F = T_sb;
    
    t = F(1:3,4)+F(1:3,1:3)*p_tip;
    
    J_a = J(1:3,1)
    J_e = J(4:6,1)
    ssm(t)
    
    fun = @(x) norm((ssm(t)*J_a + J_e)*x+(t-p_goal));
    
    A = [];
    b = [];
    Aeq = [];
    beq = [];
    x0 = dq;
    lb = lower_bound-theta_i(idx,:);
    ub = upper_bound-theta_i(idx,:);
    nonlcon = @D_nonlin_con;
    dq = fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon);
    
    theta_i(idx+1,:) = theta_i(idx,:) + dq;

    idx = idx + 1;
    
%   Saturate joint angles with joint limits  
%     for kdx=1:n
%         if abs(theta_i(idx,kdx)) > joint_lims(kdx)
%             theta_i(idx,kdx) = sign(theta_i(idx,kdx))*joint_lims(kdx);
%         end
%     end

    T_sb = FK_space(S,theta_i(idx,:),M);
   
    T_Vb = logm(T_sb\T_sd);
    Vb = [T_Vb(3,2);T_Vb(1,3);T_Vb(2,1);T_Vb(1,4);T_Vb(2,4);T_Vb(3,4)];
    
    Vs = adjT(T_sb)*Vb;

    err_w(idx,1) = norm(Vs(1:3));
    err_v(idx,1) = norm(Vs(4:6));

    J = J_space(S,theta_i(idx,:));

    V_ellip(idx,1) = sqrt(det(J*J'));

end

theta_d = theta_i;

end