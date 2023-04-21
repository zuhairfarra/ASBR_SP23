function [J,Tsb] = change_robot_config(thetas)

LBR = importrobot('iiwa7.urdf');

M = homeConfiguration(LBR);
Config01 = M;
Config01(1).JointPosition = thetas(1);
Config01(2).JointPosition = thetas(2);
Config01(3).JointPosition = thetas(3);
Config01(4).JointPosition = thetas(4);
Config01(5).JointPosition = thetas(5);
Config01(6).JointPosition = thetas(6);
Config01(7).JointPosition = thetas(7);

figure(1)
show(LBR,Config01)
hold on

figure(2)
show(LBR,Config01)
hold on

J = geometricJacobian(LBR,Config01,LBR.BodyNames{end});

% FK SPACE COMPARISON
Tsb = getTransform(LBR,Config01,LBR.BodyNames{end},LBR.BodyNames{1}); 
end 