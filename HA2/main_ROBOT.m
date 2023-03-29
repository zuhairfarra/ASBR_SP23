LBR = importrobot('iiwa7.urdf');

M = homeConfiguration(LBR);

Config01 = M;
Config01(5).JointPosition = pi/2;
Config01(6).JointPosition = pi/2;
Config01(7).JointPosition = pi/2;

show(LBR,Config01)

J = geometricJacobian(LBR,Config01,LBR.BodyNames{end});

FK_BODY_COMPARISON = getTransform(LBR,Config01,LBR.BodyNames{1},LBR.BodyNames{end});