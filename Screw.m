classdef Screw
    %UNTITLED5 Summary of this class goes here
    %   Detailed explanation goes here

    properties
        q
        s
        h
        theta_dot
    end

    methods
        function obj = Screw(inArg1,inArg2,inArg3)
            %UNTITLED5 Construct an instance of this class
            %   Detailed explanation goes here
            obj.q = inArg1;
            obj.s = inArg2;
            obj.h = inArg3;
            obj.theta_dot = 1;
        end

        function T_Screw = getScrewExp(obj,theta)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            w_vector = obj.s*obj.theta_dot;
    
            v = cross(-obj.s*obj.theta_dot,obj.q) + obj.h*obj.s*obj.theta_dot
            w = [0 -w_vector(3) w_vector(2);w_vector(3) 0 -w_vector(1);-w_vector(2) w_vector(1) 0];
            
            R_TScrew = axisangle_to_rotation(w_vector',theta);
            p_TScrew = (eye(3,3)*theta+(1-cos(theta))*w+(theta-sin(theta)).*w*2)*v';
            
            T_Screw = [R_TScrew p_TScrew; 0 0 0 1];
        end
    end
end