%Inputs
L = 1;
gamma = 1; %diff(u,t) = 5*diff(u,x,2);
delta_x = .1;
delta_t = delta_x^2/(2*gamma); % needs to be <= delta_x^2/2*gamma
t_end = 0.04;
mu = (gamma*delta_t)/(delta_x^2);
n = L/delta_x; % number of space steps
T = round(t_end/delta_t); % number of time steps
% Creates Matrix A
A = full(gallery('tridiag', n-1, mu, 1-2*mu, mu)); % dimensions, diag: bottom, middle, upper
B = zeros(n-1,1); % Creates Matrix B
u = zeros(n+1, T); % Creates u-matrix
for z = 1:n-1
    x = z*delta_x;
    u(z+1, 1) = ((0<=x<=(1/3)).*2*abs(x-(1/6)) + ((1/3)<=x<=(2/3)).*0 + ((2/3)<=x<=1).*(1/2)-3*abs(x-(5/6)));
end
for j = 1:T
    B(1) = mu*alpha(j*delta_t);
    B(end) = mu*beta(j*delta_t);
    u(2:n,j+1) = (A*u(2:n,j))+B;
    u(1,j) = alpha(j*delta_t); % Adds in alpha to u-matrix; mu*alpha(j*delta_t)
    u(end,j) = beta(j*delta_t); % Adds in beta to u-matrix; mu*beta(j*delta_t)
end
u(:,T+1) = []; % Removes the T+1'th column
figure
plot(linspace(0,L,n+1),u)
grid
function [a] = alpha(t) 
    a = cos(t); % u(t,0)
end
function [b] = beta(t)
    b = sin(t); % u(t,1)
end