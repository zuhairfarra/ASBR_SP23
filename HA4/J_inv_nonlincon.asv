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

upper_bound = deg2rad([170 120 170 120 170 120 175]);
lower_bound = -1*upper_bound;

dq = [0.01 0.01 0.01 0.01 0.01 0.01 0.01];

while (norm(Vs(1:3)) > e_w || norm(Vs(4:6)) > e_v)
    
    F = T_sb;
    
    t = F(1:3,4)+F(1:3,1:3)*p_tip;
    
    J_a = J(1:3,:);
    J_e = J(4:6,:);

    C = ssm(-t)*J_a + J_e;
    d = p_goal-t;
    Aeq = [];
    beq = [];
    lb = (lower_bound-theta_i(idx,:))';
    ub = (upper_bound-theta_i(idx,:))';
    % n = m = 50
    z = 50;
    for idx = 1:z
        alpha = idx*2*pi/z;
        beta = idx*2*pi/z;
        A_lin(idx,:) = [cos(alpha)*cos(beta) cos(alpha)*sin(beta) sin(alpha)]*(ssm(-t)*J_a+J_e);
        b_lin(idx,:) = 0.003 - [cos(alpha)*cos(beta) cos(alpha)*sin(beta) sin(alpha)]*(t - p_goal);
    end

    dq = lsqlin(C,d,A_lin,b_lin,Aeq,beq,lb,ub)
    
    fun = @(x) norm((ssm(-t)*J_a + J_e)*x'+(t-p_goal));
    
    A = [];
    b = [];
    Aeq = [];
    beq = [];
    x0 = dq;
    lb = lower_bound-theta_i(idx,:);
    ub = upper_bound-theta_i(idx,:);
    nonlcon = @D_nonlin;
    dq = fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon);
    
    theta_i(idx+1,:) = theta_i(idx,:) + dq;

    idx = idx + 1;

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

    function [c,ceq] = D_nonlin(x)
        c = norm((ssm(-t)*J_a + J_e)*x'+(t-p_goal)) - 0.003;
        ceq = [];
    end

end