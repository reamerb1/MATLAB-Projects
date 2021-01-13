%Solves differential equations with initial condition
syms y(t)
ode1 = 0 == 4*diff(y,2)-20*diff(y)+25*y;
cond1 =  == 5;
cond2 = y(0) == 8;
conds = [cond1; cond2];
ySol(t) = dsolve(ode1, conds)