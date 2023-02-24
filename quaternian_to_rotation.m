function R = quaternian_to_rotation(q)
    
    % error if q input not 1x4 
    if isequal(size(q), [4,1]) ~=1
        error("Input q must be a 4x1 matrix")
    end 

    if isequal(norm(q),1)  % Check if input quaternion is a unit quaternion
        q0 = q(1); 
        q1 = q(2); 
        q2 = q(3); 
        q3 = q(4);
    else % If it is not a unit quaternion, normalize it
        q0 = q(1)/norm(q); 
        q1 = q(2)/norm(q); 
        q2 = q(3)/norm(q); 
        q3 = q(4)/norm(q);
    end
   
    % get R
    R = [q0^2+q1^2-q2^2-q3^2, 2*(q1*q2-q0*q3), 2*(q0*q2+q1*q3);...
         2*(q0*q3+q1*q2), q0^2-q1^2+q2^2-q3^2, 2*(q2*q3-q0*q1);...
         2*(q1*q3-q0*q2), 2*(q0*q1+q2*q3), q0^2-q1^2-q2^2+q3^2];
end 
