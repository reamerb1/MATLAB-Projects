%Plot Examples
x = 0:0.1:1.0;
y = x.^2;
y2 = 1.2*x.^2;
% o means use circular symbols (markers)
%'-' means solid line
plot(x,y, '-o')
grid
xlabel('Velocity (cm/s)')
ylabel('Drag (N)')
title('Aerodynamic Drag')
%"hold on" prevents old line from erasing
hold on
%dashed line, asterisk, red
plot(x, y2, '--*r')
legend('low drag profile', 'high drag profile', 'Location', 'Northwest')
print -dpng drag