function D = mydrag(Cd, A, p, V) % Inputs: Cd, A, p, V
D = Cd*A*(1/2)*p*(V^2); % Plug inputs into equation
fprintf('Drag = %.3f lb\n', D); % Print Result with units lb/n
end