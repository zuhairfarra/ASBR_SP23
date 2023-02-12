function R_ZYZ = rot2ZYZ(R)
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

R_ZYZ = struct();

rho = atan2(R(2,3),R(1,3));

theta = atan2(sqrt((R(1,3)^2)+(R(2,3))^2),R(3,3));

phi = atan2(R(3,2),-R(3,1));

R_ZYZ.Angles = [rho;theta;phi];

Rz_1 = [cos(rho) -sin(rho) 0;sin(rho) cos(rho) 0;0 0 1];

Ry_2 = [cos(theta) 0 sin(theta);0 1 0;-sin(theta) 0 cos(theta)];

Rz_3 = [cos(phi) -sin(phi) 0;sin(phi) cos(phi) 0;0 0 1];

R_ZYZ.Mat = Rz_1*Ry_2*Rz_3;


end