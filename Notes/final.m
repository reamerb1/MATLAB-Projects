
%Plot shapes together on a graph with specified coordinates and side
%lengths

response = 'y'; 
while strcmp(response, 'y') % 'y' for another shape, 'n' for stopping
    sh = input('Enter shape (s,r,t): ', 's'); % input square, rectangle, or triangle as shape to plot
    x = input('Enter x coordinate of bottom left corner: ');
    y = input('Enter y coordinate of bottom left corner: ');
    if strcmp(sh, 's') % if shape is a square
        side = input('Enter length of side: ');
        square(x,y,side);
    elseif strcmp(sh, 'r') % if shape is a rectangle
        width = input('Enter width: ');
        height = input('Enter height: ');
        rectangle(x,y,width,height);
    elseif strcmp(sh, 't') % if shape is a triangle
        side = input('Enter length of side: ');
        triangle(x,y,side);
    else % if letter does not equal any of the options then the code stops
        break
    end
    response = input('Do you want to input another shape (y,n)?: ', 's'); % determines if loop runs again
end
hold off
function square(xcoord,ycoord,length) % Plots square
    xcoords = [xcoord xcoord xcoord+length xcoord+length xcoord];
    ycoords = [ycoord ycoord+length ycoord+length ycoord ycoord];
    plot(xcoords, ycoords);
    hold on
end
function rectangle(xcoord,ycoord,w,h) % Plots rectangle
    xcoords = [xcoord xcoord xcoord+w xcoord+w xcoord];
    ycoords = [ycoord ycoord+h ycoord+h ycoord ycoord];
    plot(xcoords, ycoords);
    hold on
end
function triangle(xcoord,ycoord,length) % Plots triangle
    xcoords = [xcoord xcoord+0.5*length xcoord+length xcoord];
    ycoords = [ycoord ycoord+0.5*length ycoord ycoord];
    plot(xcoords, ycoords);
    hold on
end