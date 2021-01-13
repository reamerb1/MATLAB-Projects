%example 3d plot
x = -2:0.05:2;
y = x;
%create matrices containing all x values, and all y values
[X, Y] = meshgrid(x, y);
F = X.*exp(-X.^2 - Y.^2);
surf(X, Y, F)
c = colorbar;
c.Label.String = 'Value of F Function';
shading interp