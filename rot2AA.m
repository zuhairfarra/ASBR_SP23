function AxisAngle = rot2AA(R)
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

AxisAngle = struct();

if isequal(R,eye(3))
    theta = 0;
    w = NaN;
else if isequal(trace(R),-1)
    theta = pi;
    w_hat = (1/sqrt(2*(1+R(3,3))))*[R(1,3);R(2,3);1+R(3,3)];
    w = w_hat;
else
    theta = acos(0.5*(trace(R)-1));
    w_hat = (R-R')/(2*sin(theta));
    w = [w_hat(3,2);w_hat(1,3);w_hat(2,1)];
end

AxisAngle.Angle = theta;

AxisAngle.Axis = w;

end