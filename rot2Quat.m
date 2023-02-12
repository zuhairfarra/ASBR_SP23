function q = rot2Quat(R)
% SZF 01/28
% rot2Quat converts a Rotation matrix belonging to SO(3) into its
% equivalent quaternion

%   Detailed explanation goes here
if isequal(size(R),[3,3]) ~= 1
    error('Input rotation matrix must be a 3x3 matrix.');
end

% Add checks for R as part of SO(3)

if det(R) ~= 1
    error('Determinant of rotation matrix R does not equal to +1 so R is not an element of SO(3).')
elseif isequal(R*R',eye(3)) ~= 1
    error('Rotation matrix R is not orthogonal because its transpose is not equivalent to its inverse.')
end

q0 = 0.5*sqrt(R(1,1)+R(2,2)+R(3,3)+1);
q1 = sign(R(3,2)-R(2,3))*sqrt(R(1,1)-R(2,2)-R(3,3)+1);
q2 = sign(R(1,3)-R(3,1))*sqrt(R(2,2)-R(3,3)-R(1,1)+1);
q3 = sign(R(2,1)-R(1,2))*sqrt(R(3,3)-R(1,1)-R(2,2)+1);

q = [q0;q1;q2;q3];

end