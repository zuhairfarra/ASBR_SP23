syms L theta

n = 6;

w = [0 0 -1 -1 -1 0
     0 1 0 0 0 1
     1 0 0 0 0 0];

v = [0 0 0 0 0 0
     0 0 0 0 0 0
     0 0 0 L 2*L 0];

S = [w;v];

Exp_Prod = 1;
Js = S(:,1);

for idx = 2:n

    Exp_Prod = Exp_Prod*screwExp(S(:,idx-1),theta);
    
    Js_n = adjT(Exp_Prod)*S(:,idx);

    Js(:,idx) = Js_n;

end