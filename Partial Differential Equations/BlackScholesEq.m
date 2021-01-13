function u = BlackScholesEq(t_final, sigma, r, p, t, x)
% Computes the value of a European call option at expiration

%Inputs:
%t_final = Time until expiry
%sigma = Volatility of asset
%r = Fixed Interest Rate
%p = Exercise Price of asset
%t = initial time (usually 0)
%x = asset price at initial time

u = (1/2)*(x*erfc(-((r+0.5*sigma^2)*(t_final-t)+log(x/p))/(sqrt(2*sigma^2*(t_final-t))))-p*exp(-r*(t_final-t))*erfc(-((r-0.5*sigma^2)*(t_final-t)+log(x/p))/(sqrt(2*sigma^2*(t_final-t)))));