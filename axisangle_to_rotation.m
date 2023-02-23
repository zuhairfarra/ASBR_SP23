function R = axisangle_to_rotation(w, theta)
    
    % error if w input not 3x1 
    if isequal(size(w), [3,1]) ~=1
        error("Input w must be a 3x1 matrix")
    end 

    % get q values
    w_ssm = [0 -w(3) w(2); w(3) 0 -w(1); -w(2) w(1) 0];
    I = [1 0 0; 0 1 0; 0 0 1]; 

    % get R
    R = I + w_ssm*sin(theta)+ (w_ssm^2)*(1-cos(theta));
end 