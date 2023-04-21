function [vec, sqrt_eig_vals] = ellipsoid_plot_linear(S,theta,endpt)

% get space-based jacobian 
J_s = J_space(S,theta);
% get the linear velocty values of the jacobian 
J= J_s(4:6,:);
% get eigenvector and eigenvalues 
A = J*transpose(J); 
[vec, vals] = eig(A);
eig_vals = [vals(1,1); vals(2,2); vals(3,3)];
sqrt_eig_vals= sqrt(eig_vals);

% get xyz and roation values for ellipse
[X,Y,Z] = ellipsoid(endpt(1), endpt(2), endpt(3),...
          sqrt_eig_vals(1), sqrt_eig_vals(2), sqrt_eig_vals(3));
rotation_anlges = rotm2eul(vec,'XYZ');

% plot 
figure(1)
s = surf(X,Y,Z);
alpha(0.5)
title('Manipulability Ellipsoid: Linear Velocity')
axis equal
hold on 
% rotate around x and about endpoint for the x euler angle
rotate(s,[1 0 0],rotation_anlges(1)*180/pi,endpt)
% rotate around y and about endpoint for the y euler angle
rotate(s,[0 1 0],rotation_anlges(2)*180/pi,endpt)
% rotate around z and about endpoint for the z euler angle
rotate(s,[0 0 1],rotation_anlges(3)*180/pi,endpt)
end