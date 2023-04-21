% ellie andreyka 
% ASBR: THA 2
clear 
clc
close all 

%% used for both 
M = [1 0 0 0
     0 1 0 0
     0 0 1 1.266
     0 0 0 1];
n = 7;

w1 = [0;0;1];
w2 = [0;1;0];
w3 = [0;0;1];
w4 = [0;-1;0];
w5 = [0;0;1];
w6 = [0;1;0];
w7 = [0;0;1];
w = [w1 w2 w3 w4 w5 w6 w7];

q1 = [0;0;0];
q2 = [0;0;0.15+0.19];
q3 = [0;0;0];
q4 = [0;0;0.15+0.19+0.21+0.19];
q5 = [0;0;0];
q6 = [0;0;0.15+0.19+0.21+0.19+0.21+0.19];
q7 = [0;0;0];
q = [q1 q2 q3 q4 q5 q6 q7];

v = zeros(3,n);
S = zeros(6,n);
for idx = 1:n 
    v(:,idx) = cross(-w(:,idx),q(:,idx));
    S(:,idx) = [w(:,idx);v(:,idx)];
end

%% linear velocity ellipsoids 

% test cases
theta_case1 = [0,0,0,0,pi/2,pi/2,pi/2]; 
theta_case2 = [pi/2;pi/2;pi/2;pi/2;pi/2;pi/2;pi/2]; 
theta_case3 = [-41;22;-147;-71;76;18;-105]*pi/180;
% plot the robot arm, and get the end effector location 
[J,Tsb] = change_robot_config(theta_case1);
end_pts = Tsb(1:3,4);

% linear 
[vec_lin,vals_lin] = ellipsoid_plot_linear(S,theta_case1,end_pts);
istrophy_linear = J_istrophy(vals_lin)
condition_number_linear = J_condition(istrophy_linear)
ellipsoid_volume_linear = J_ellipsoid_volume(vals_lin)

% angular 
[vec_ang,vals_ang] = ellipsoid_plot_angular(S,theta_case1,end_pts);
istrophy_angular = J_istrophy(vals_ang)
condition_number_angular = J_condition(istrophy_angular)
ellipsoid_volume_angular = J_ellipsoid_volume(vals_ang)
