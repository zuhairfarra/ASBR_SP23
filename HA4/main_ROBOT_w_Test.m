%% SZF 04-05-2023 testing for ASBR PA2 
load('J_test_data.mat')
%% Robot Setup
% Robotics System Toolbox is required for the following code

LBR = importrobot('iiwa7.urdf');

% Demonstration of how robot class may be used to set desired joint angles;
M0 = homeConfiguration(LBR);

Config01 = M0;
Config01(5).JointPosition = pi/2;
Config01(6).JointPosition = pi/2;
Config01(7).JointPosition = pi/2;

show(LBR,Config01)

%% Screw axis generation

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

q1 = [0;0;0.15];
q2 = [0;0;0.15+0.19];
q3 = [0;0;0.15+0.19+0.21];
q4 = [0;0;0.15+0.19+0.21+0.19];
q5 = [0;0;0.15+0.19+0.21+0.19+0.21];
q6 = [0;-0.0607;0.15+0.19+0.21+0.19+0.21+0.19];
q7 = [0;0;0.15+0.19+0.21+0.19+0.21+0.19+0.081];

q = [q1 q2 q3 q4 q5 q6 q7];

v = zeros(3,n);
S = zeros(6,n);

for idx = 1:n 
    v(:,idx) = cross(-w(:,idx),q(:,idx));

    S(:,idx) = [w(:,idx);v(:,idx)];

end

B = adjT(inv(M))*S;

%% Generating random configs

% Uncomment below and run to generate configs for later testing

% Config_R1 = randomConfiguration(LBR);
% Config_R2 = randomConfiguration(LBR);
% Config_R3 = randomConfiguration(LBR);

%% J_space and J_body testing

for idx = 1:7
    theta_R1(idx) = Config_R1(idx).JointPosition;
    theta_R2(idx) = Config_R2(idx).JointPosition;
    theta_R3(idx) = Config_R3(idx).JointPosition;
end

Js_R1 = J_space(S,theta_R1);
Js_R2 = J_space(S,theta_R2);
Js_R3 = J_space(S,theta_R3);

Jb_R1 = J_body(B,theta_R1);
Jb_R2 = J_body(B,theta_R2);
Jb_R3 = J_body(B,theta_R3);

Tsb1 = getTransform(LBR,Config_R1,LBR.BodyNames{end},LBR.BodyNames{1});
Tsb2 = getTransform(LBR,Config_R2,LBR.BodyNames{end},LBR.BodyNames{1});
Tsb3 = getTransform(LBR,Config_R3,LBR.BodyNames{end},LBR.BodyNames{1});

Js_Test1 = adjT(Tsb1)*Jb_R1;
Js_Test2 = adjT(Tsb2)*Jb_R2;
Js_Test3 = adjT(Tsb3)*Jb_R3;


%% Inverse Kinematics Testing
clc

% Desired configuration for each test case
T_sd1 = Tsb1;
T_sd2 = Tsb2;
T_sd3 = Tsb3;

% Change desired configuration and corresponding joint angles based on test case
T_sd = T_sd3;
theta_d = theta_R3;

% theta_0 = theta_d + 5*[-0.1 0.05 0.2 -0.1 -0.15 0.075 0.1]; %Introduce error into initial guess
theta_0 = [0 0 0 0 0 0 0]; %Introduce error into initial guess

e_w = 0.001;
e_v = 0.0001;

% Test for J_inverse_kinematics
% [MyAngles,Ji_err_w,Ji_err_v,Ji_W] = J_inverse_kinematics(T_sd1,theta_0,S,M,e_w,e_v);
% num_iter_Ji = 1:length(MyAngles(:,1));

% % Test for J_transpose_kinematics
% K = eye(6)*0.5;
% [MyAnglesJT,Jt_err_w,Jt_err_v,Jt_W] = J_transpose_kinematics(T_sd1,theta_0,S,M,e_w,e_v,K);
% num_iter_Jt = 1:length(MyAnglesJT(:,1));
% 
% % Test for redundancy_resolution
% [MyAnglesRR,RR_err_w,RR_err_v,RR_W] = ik_Redundancy_Resolution(T_sd1,theta_0,S,M,e_w,e_v);
% num_iter_RR = 1:length(MyAnglesRR(:,1));

% Test for J_inv_nonlincon
p_tip = [0;0;0.100];
p_goal = T_sd(1:3,4)+T_sd(1:3,1:3)*p_tip;

[MyAnglesNL,Ji_err_w,Ji_err_v,Ji_W] = J_inv_nonlincon(T_sd,theta_0,S,M,e_w,e_v,p_goal);
num_iter_Ji = 1:length(MyAnglesNL(:,1));

% Resulting configuration from angles obtained by testing ik functions
% Ji: J_inverse,    Jt: J_transpose,    RR: redundancy_resolution
Ji_T_final = FK_space(S,MyAngles(end,:),M)
Jt_T_final = FK_space(S,MyAnglesJT(end,:),M)
RR_T_final = FK_space(S,MyAnglesRR(end,:),M)

close all
%%
% Show robot in one of the configurations obtained from testing by using angles (initial vs. final)
figure(1);
TestingAngles_0 = MyAngles(1,:);
TestingAngles_final = MyAngles(end,:);
TestConfig_0 = homeConfiguration(LBR);
TestConfig_final = TestConfig_0;
for idx =1:length(TestConfig_0)
    TestConfig_0(idx).JointPosition = TestingAngles_0(1,idx);
    TestConfig_final(idx).JointPosition = TestingAngles_final(1,idx);
end
show(LBR,TestConfig_0); hold on; show(LBR,TestConfig_final)

% Plotting results from testing
figure(2); plot(num_iter_Ji,Ji_err_w); hold on; plot(num_iter_Ji,Ji_err_v); 
xlabel('Iteration #')
ylabel('Velocity error')
title('J inverse kinematics convergence')
legend('Rotational velocity error','Translational velocity error')

figure(3); plot(num_iter_Jt,Jt_err_w); hold on; plot(num_iter_Jt,Jt_err_v);
xlabel('Iteration #')
ylabel('Velocity error')
title('J transpose kinematics convergence')
legend('Rotational velocity error','Translational velocity error')

figure(4); plot(num_iter_RR,RR_err_w); hold on; plot(num_iter_RR,RR_err_v);
xlabel('Iteration #')
ylabel('Velocity error')
title('ik redundancy resolution convergence')
legend('Rotational velocity error','Translational velocity error')

figure(5); plot(num_iter_Ji,Ji_W); hold on;
plot(num_iter_Jt,Jt_W);
plot(num_iter_RR,RR_W);
xlabel('Iteration #')
ylabel('Manipulability Measure')
title('Manipulability comparison of algorithms')
legend('J Inverse','J Transpose','Redundancy Resolution')
