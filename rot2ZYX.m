function Angles_R_ZYX = rot2ZYX(R)
% SUMMARY: rot2AA converts a rotation matrix R (as part of SO(3)) into its
% roll-pitch-yaw euler angle representation

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

% R_ZYX = struct();

theta = atan2(-R(3,1),sqrt((R(3,2)^2)+(R(3,3))^2));

if isequal(sin(theta),1) || isequal(sin(theta),-1)
    sprintf('The calculated sine of theta is positive or negative one. In this case, the angles rho and phi cannot be calculated and only their sum or difference may be specified.')
    sprintf('The returned value is: [0;theta;diff of angles]')
    
    diff_of_angles = atan2(R(2,3),R(1,3));

    Angles_R_ZYX = [0;theta;diff_of_angles];

else
    rho = atan2(R(2,1),R(1,1));
    
    phi = atan2(R(3,2),R(3,3));

    Angles_R_ZYX = [rho;theta;phi];

end


% Rz_1 = elemRot('z',rho);
% 
% Ry_2 = elemRot('y',theta);
% 
% Rx_3 = elemRot('x',phi);
% 
% R_ZYX.Mat = Rz_1*Ry_2*Rx_3;


end