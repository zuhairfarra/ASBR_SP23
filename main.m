clear all; close all; clc

test = struct()

A = eye(3);
myTest(:,:,1) = A;

B = elemRot('x',90);
myTest(:,:,2) = B;

C = elemRot('y',90);
myTest(:,:,3) = C;

D = elemRot('z',90);
myTest(:,:,4) = D;

E = B*C;
myTest(:,:,5) = E;

F = B*C*D;
myTest(:,:,6) = F;

for idx=1:length(myTest(1,1,:))
    test(idx).AA = rot2AA(myTest(:,:,idx))
    test(:,idx).Quat = rot2Quat(myTest(:,:,idx))
    test(idx).ZYZ = rot2ZYZ(myTest(:,:,idx))
    test(idx).ZYX = rot2ZYX(myTest(:,:,idx))
    idx
end
