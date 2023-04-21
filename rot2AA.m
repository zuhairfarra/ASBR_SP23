function AxisAngle = rot2AA(R)
% SUMMARY: rot2AA converts a rotation matrix R (as part of SO(3)) into its
% equivalent axis-angle representation

% Check if R is part of SO(3)
if isequal(size(R),[3,3]) ~= 1
    error('Input rotation matrix must be a 3x3 matrix.');
end

% These errors are thrown if R is not a valid entry
tol = 0.0001;

if abs(det(R)-1) > tol
    error('Determinant of rotation matrix R does not equal to +1 so R is not an element of SO(3).')
elseif abs(trace(R*R'-eye(3))) > tol
    error('Rotation matrix R is not orthogonal because its transpose is not equivalent to its inverse.')
end

% AxisAngle is a struct used to store both angle and axis

AxisAngle = struct();

if isequal(R,eye(3)) % Special case 1: R is an identity matrix
    theta = 0;
    w = [0;0;1];
else if isequal(trace(R),-1) % Special case 2: R has a trace = -1
    theta = pi;
    w_hat = (1/sqrt(2*(1+R(3,3))))*[R(1,3);R(2,3);1+R(3,3)];
    w = w_hat;
else % All other cases of R
    theta = acos(0.5*(trace(R)-1));
    w_hat = (R-R')/(2*sin(theta));
    w = [w_hat(3,2);w_hat(1,3);w_hat(2,1)];
end

AxisAngle.Angle = theta;

AxisAngle.Axis = w;

end