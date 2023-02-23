syms r11 r12 r13 r21 r22 r23 r31 r32 r33 v1 v2 v3 w1 w2 w3

R = [r11 r12 r13;r21 r22 r23;r31 r32 r33];
v = [v1;v2;v3];
w = [w1;w2;w3];

R = elemRot('x',90);

LHS = R*cross(v,w)
RHS = cross(R*v,R*w)

isequal(LHS,RHS)