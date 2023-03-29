function T_Screw = screwExp(S,theta)
    % Uses the specified screw object along with the passed angle theta to calculate the matrix exponential
    % Output is a 4x4 matrix
    w_vector = S(1:3);
    v_vector = S(4:6);
    w = [0 -w_vector(3) w_vector(2);w_vector(3) 0 -w_vector(1);-w_vector(2) w_vector(1) 0];
    
    R_TScrew = axisangle_to_rotation(w_vector,theta);
    p_TScrew = (eye(3,3)*theta+(1-cos(theta))*w+(theta-sin(theta))*w*w)*v_vector;
    
    T_Screw = [R_TScrew p_TScrew; 0 0 0 1];
end