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

%% singularity 

% analytical test:
% singularity_analytical = singularity_analytical(S)

% numerical test: 
theta_case1 = [0,0,0,0,pi/2,pi/2,pi/2]; 
theta_case2 = [pi/2;pi/2;pi/2;pi/2;pi/2;pi/2;pi/2]; 
theta_case3 = [-41;22;-147;-71;76;18;-105]*pi/180;
Js = J_space(S,theta_case3);
singularity_numerical = singularity_numerical(Js)
