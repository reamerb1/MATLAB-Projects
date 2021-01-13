%Solves systems of Differential Equations
syms x(t) y(t)
ode1 = diff(x) == -5*x + 2*y + exp(2*t);
ode2 = diff(y) == -12*x + 5*y + exp(2*t);
odes = [ode1; ode2]
%cond1 = x(0) == -2;
%cond2 = y(0) == 5;
%conds = [cond1; cond2];
%[xSol(t), ySol(t)] = dsolve(odes, conds)
[xSol(t), ySol(t)] = dsolve(odes)