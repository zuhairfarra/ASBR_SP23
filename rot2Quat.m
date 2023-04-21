function q = rot2Quat(R)
% SZF 01/28
% rot2Quat converts a Rotation matrix belonging to SO(3) into its
% equivalent quaternion

%   Detailed explanation goes here
if ~isequal(size(R),[3,3])
    error('Input rotation matrix must be a 3x3 matrix.');
end

% Add checks for R as part of SO(3)

tol = 0.0001;

if abs(det(R)-1) > tol
    error('Determinant of rotation matrix R does not equal to +1 so R is not an element of SO(3).')
elseif abs(trace(R*R'-eye(3))) > tol
    error('Rotation matrix R is not orthogonal because its transpose is not equivalent to its inverse.')
end

q0 = 0.5*sqrt(R(1,1)+R(2,2)+R(3,3)+1);
q1 = 0.5*sgn(R(3,2)-R(2,3))*sqrt(R(1,1)-R(2,2)-R(3,3)+1);
q2 = 0.5*sgn(R(1,3)-R(3,1))*sqrt(R(2,2)-R(3,3)-R(1,1)+1);
q3 = 0.5*sgn(R(2,1)-R(1,2))*sqrt(R(3,3)-R(1,1)-R(2,2)+1);

q = [q0;q1;q2;q3];

end