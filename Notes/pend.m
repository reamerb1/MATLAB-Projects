%==========================================================================
function pend(length, theta0, ncyc)

% animate motion of pendulum

% inputs:
%   length - length of pendulum
%   theta0 - initial angle (degrees)
%   ncyc - number of cycles to animate

% example inputs: 1, 30, 5
%==========================================================================

%-----------
%constants
%-----------
g = 9.81; %gravitational acceleration, m/s^2
nper = 201; %no. steps per cycle

%--------------------------------------------
% Create vector of times.  Total time for 
% animation is number of cycles multiplied
% by time per cycle.
%--------------------------------------------
time_per_cycle = 2*pi/(sqrt(g/length));
total_time = time_per_cycle * ncyc;
ntot = nper * ncyc;
t = linspace(0, total_time, ntot);

%--------------------
% plot initial state
%--------------------
x =  length * sind(theta0);
y = -length * cosd(theta0);
hshaft = plot([0, x], [0, y]); % plot handle for shaft
hold on
hbob = plot(x, y, 'o');
hbob.MarkerSize = 28;
hbob.MarkerFaceColor = 'Blue';
hbob.Color = 'Blue';
axis equal
axis([-1.5*length, 1.5*length], [-1.5*length, 0.5*length]);

%--------------------------
% animate remaining steps
%--------------------------
for i = 2:ntot
    theta = theta0 * cos(sqrt(g/length)*t(i));
    x =  length * sind(theta);
    y = -length * cosd(theta);
    hshaft.XData = [0, x];
    hshaft.YData = [0, y];
    hbob.XData = x;
    hbob.YData = y;
    drawnow % don't buffer data, draw immediately
    pause(0.005)
end
end