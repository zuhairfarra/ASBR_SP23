function R_ZYX = rot2ZYX(R)
% SUMMARY: rot2AA converts a rotation matrix R (as part of SO(3)) into its
% equivalent axis-angle representation

% Check if R is part of SO(3)
if isequal(size(R),[3,3]) ~= 1
    error('Input rotation matrix must be a 3x3 matrix.');
end

if det(R) ~= 1
    error('Determinant of rotation matrix R does not equal to +1 so R is not an element of SO(3).')
elseif isequal(R*R',eye(3)) ~= 1
    error('Rotation matrix R is not orthogonal because its transpose is not equivalent to its inverse.')
end

%

R_ZYX = struct();

rho = atan2(R(2,1),R(1,1));

theta = atan2(-R(3,1),sqrt((R(3,2)^2)+(R(3,3))^2));

phi = atan2(R(3,2),R(3,3));

R_ZYX.Angles = [rho;theta;phi];

Rz_1 = elemRot('z',rho);

Ry_2 = elemRot('y',theta);

Rx_3 = elemRot('x',phi);

R_ZYX.Mat = Rz_1*Ry_2*Rx_3;


end