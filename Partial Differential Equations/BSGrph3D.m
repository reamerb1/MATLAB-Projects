%function c = BSGrph3D(t_final, sigma, r, p)
% Graphs the value of a European call option in respect to time until expiration

%Inputs:
t_final = 21; %Time until expiry
sigma = .82; %Volatility of asset
r = .08; %Fixed Interest Rate
p = 25; %Exercise Price of asset

u = zeros(39);
%syms x t
[t,x] = meshgrid(1:.5:20);
for i = 1:39
    for j = 1:39
        u(i,j) =((1/2)*(x(i,j)*erfc(-((r+0.5*sigma^2)*(t_final-t(i,j))+log(x(i,j)/p))/(sqrt(2*sigma^2*(t_final-t(i,j)))))-p*exp(-r*(t_final-t(i,j)))*erfc(-((r-0.5*sigma^2)*(t_final-t(i,j))+log(x(i,j)/p))/(sqrt(2*sigma^2*(t_final-t(i,j)))))));
    end
end
surf(t, x, u)
xlabel('Asset Price')
ylabel('Time until expiry')
zlabel('Value of Option')