%Exercise Set 3
%Problem 1-------------------------------
disp('I think, therefore I am.');
%Problem 2-------------------------------
fprintf('I think, therefore I am.\n');
%Problem 3-------------------------------
hr = input('Enter Heart Rate: ');
disp(['Heart rate: ', num2str(hr), ' BPM']);
%Problem 4-------------------------------
hr = input('Enter Heart Rate: ');
fprintf('Heart rate: %d%s\n', hr, ' BPM');
%Problem 5-------------------------------
thename = input('Enter name: ','s');
disp(['Hello, I am ', thename]);
%Problem 6-------------------------------
thename = input('Enter name: ','s');
fprintf('Hello, I am %s\n', thename);
%Problem 7-------------------------------
length = input('Enter length: ');
width = input('Enter width: ');
fprintf('The box is %3.1f by %3.1f.\n', length, width);
%Extra Credit----------------------------
r = input('Enter radius of cylinder: ');
h = input('Enter height of cylinder: ');
area_end = pi*(r^2); % Calculations - - - - - - - - - - - 
perimeter_end =2*pi*r;
area_side = perimeter_end*h;
surface_area = 2*area_end + area_side;
volume = area_end * h;
fprintf('end area %11.2f\n', area_end) % Print the answers - - - - - - - - 
fprintf('perimeter %10.2f\n', perimeter_end)
fprintf('side area %10.2f\n', area_side)
fprintf('total area %10.2f\n', surface_area)
fprintf('volume %14.2f\n', volume)