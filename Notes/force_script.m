%script to call forcecalc function
m = input('Enter mass (kg): ');
a = input('Enter acceleration (m/s^2): ');
f = forcecalc(m,a);
fprintf('force = %.3f N\n', f)