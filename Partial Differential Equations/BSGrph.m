function u = BSGrph(t_final, sigma, r, p, T)
% Graphs the value of a European call option in respect to time until expiration

%Inputs:
%t_final = Time until expiry
%sigma = Volatility of asset
%r = Fixed Interest Rate
%p = Exercise Price of asset
%T = Initial Time (Requirement: T < t_final)

syms x t
u(t,x) = (1/2)*(x*erfc(-((r+0.5*sigma^2)*(t_final-t)+log(x/p))/(sqrt(2*sigma^2*(t_final-t))))-p*exp(-r*(t_final-t))*erfc(-((r-0.5*sigma^2)*(t_final-t)+log(x/p))/(sqrt(2*sigma^2*(t_final-t)))));
fplot(u(T,x))
grid
xlim([0 20])
ylim([0 20])
title(['Initial Time = ', num2str(T)])
xlabel('Time')
ylabel('Value')