mylength = input('Input Length of pendulum: ');
mytime = 0:0.05:5;
angles = pendulum_angle(mylength, mytime);
plot(mytime, angles);
xlabel('Time (s)');
ylabel('Angle (degrees)');
grid on