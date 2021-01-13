function theta = pendulum_angle(length, time)
theta = 0.1*cos((sqrt(9.81/length))*time);
end