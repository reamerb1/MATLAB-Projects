syms y(t) x(t) z(t) g k m v1 v2 height
x(t) = diff(y); %First derivative of y
z(t) = diff(x); %Second derivative of y

%Variables
%To graph, comment out the variable wanted on the x-axis from below
%and comment out line 20: double(h)
%To calculate a numerical answer, input all variables and uncomment line 20: double(h)
g = 9.8; %acceleration due to gravity
m = 75; %mass of person
v = 56; %terminal velocity before parachute is pulled
vtwo = 0.1*v; %v2 = 10% of v, terminal velocity using parachute
k = 110; % Air resistance proportionality constant

ode1 = g == z(t)+(k/m)*x(t);
cond1 = x(0) == v; %dy/dt(0) = v
cond2 = y(0) == 0; %y(0) = 0
conds = [cond1; cond2];
ySol(t) = dsolve(ode1, conds);
h = subs(ySol, t, -(m/k)*log(abs((vtwo-g)/(v-g))))
height = double(h) %Turns the height into a numerical answer

%Graphing
ezplot(h, 0, 100) %Plot 0<m<100
grid
xlabel('Mass(kg)')
ylabel('Height (m)')
title('Height Where Parachute is Pulled vs. Mass')