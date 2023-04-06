function Angles_R_ZYZ = rot2ZYZ(R)
% SUMMARY: rot2AA converts a rotation matrix R (as part of SO(3)) into its
% ZYZ euler angle representation

% Check if R is part of SO(3)
if ~isequal(size(R),[3,3])
    error('Input rotation matrix must be a 3x3 matrix.');
end

tol = 0.0001;

if abs(det(R)-1) > tol
    error('Determinant of rotation matrix R does not equal to +1 so R is not an element of SO(3).')
elseif abs(trace(R*R'-eye(3))) > tol
    error('Rotation matrix R is not orthogonal because its transpose is not equivalent to its inverse.')
end

%

% R_ZYZ = struct();

theta = atan2(sqrt((R(1,3)^2)+(R(2,3))^2),R(3,3));

if isequal(sin(theta),0)
    sprintf('The calculated sine of theta is zero. In this case, the angles rho and phi cannot be calculated and only their sum or difference may be specified.')
    sprintf('The returned value is: [0;theta;sum of angles]')
    
    sum_of_angles = atan2(R(1,2),R(1,1));

    Angles_R_ZYZ = [0;theta;sum_of_angles];

else
    rho = atan2(R(2,3),R(1,3));

    phi = atan2(R(3,2),-R(3,1));

    Angles_R_ZYZ = [rho;theta;phi];

end

end