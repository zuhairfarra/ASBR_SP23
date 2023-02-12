function R = elemRot(axis,angle)
% SZF 01/29
% elemRot generates an elementary 3x3 rotation matrix across a unit x,y, or
% z axis

% Error condition for invalid input

if isequal(axis,'x') | isequal(axis,'X') 
    R = [1 0 0;0 cosd(angle) -sind(angle);0 sind(angle) cosd(angle)];
elseif isequal(axis,'y') | isequal(axis,'Y') 
    R = [cosd(angle) 0 sind(angle);0 1 0;-sind(angle) 0 cosd(angle)];
elseif isequal(axis,'z') | isequal(axis,'Z') 
    R = [cosd(angle) -sind(angle) 0;sind(angle) cosd(angle) 0;0 0 1];
else
    error('Invalid axis entry. First argument must be X,Y, or Z.')
end

end