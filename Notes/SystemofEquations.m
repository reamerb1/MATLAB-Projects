%Solves Systems of Equations
syms x y
eqn1 = x+3*y==-1;
eqn2 = 4*x+5*y==-18;
eqns = [eqn1, eqn2]
[xSol,ySol] = solve(eqns)