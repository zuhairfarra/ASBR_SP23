function Js = J_space(S)

syms t1 t2 t3 t4 t5 t6 
syms Js(t1,t2,t3,t4,t5,t6)
theta = [t1, t2, t3, t4, t5, t6];

n = length(S(1,:));
Exp_Prod = 1;
% Js(t1,t2,t3,t4,t5,t6) = S(:,1);
Js = sym(zeros(6,7));
Js(:,1)= S(:,1);

for idx = 2:n
    Exp_Prod = Exp_Prod*screwExp(S(:,idx-1),theta(idx-1));
    Js_n = adjT(Exp_Prod)*S(:,idx);
    Js(:,idx) = Js_n;
end

end