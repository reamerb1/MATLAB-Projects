%=================================================%
% 1. Convert temperature from celsius to fahrenheit
%=================================================%
temp_c = 20;
temp_f = (temp_c*1.8) + 32

%=================================================%
% 2. Calculate the Resistance and Current
%=================================================%
r1 = 2;
r2 = 3;
total_r = 1/((1/r1)+(1/r2))
voltage = 12;
current = voltage/total_r
%=================================================%
% 3. Calculate the power of a turbine
%=================================================%
density = 1.23; % density of air
velocity = 12; % air velocity
power_coeff = 0.4;
diameter = 50; % diameter of turbine
area = (pi/4)*(diameter^2); % frontal area of turbine
power = (1/2)*density*area*(velocity^3)*power_coeff