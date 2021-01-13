%Exercise set 4 -----------------------------------------------------------
%Problem 1
myangle = linspace(0, 6*pi, 101);
lambda = [0.05, 0.20];
response1 = exp(-lambda(1).*myangle).*sin(myangle);
plot(myangle, response1, 'r')
xlabel('Angle (radians)');
ylabel('Non-dimensional Amplitude');
title('Damped Response');
grid;
response2 = exp(-lambda(2).*myangle).*sin(myangle);
hold on
plot(myangle, response2, '--oblack')
legend('0.05 Damping Factor', '0.20 Damping Factor');
print -dpng problem1
%Problem 2 ----------------------------------------------------------------
figure
n = 10; %Resolution of 10
[x, y, z] = sphere(n);
surf(x, y, z)
shading('interp')
colormap(gray)
daspect([1, 1, 1])
xlabel('x')
ylabel('y')
zlabel('z')
figure% New figure
n = 100; %Resolution of 100
[x, y, z] = sphere(n);
surf(x, y, z)
shading('interp')
colormap(gray)
daspect([1, 1, 1])
xlabel('x')
ylabel('y')
zlabel('z')


