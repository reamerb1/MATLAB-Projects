% vector notation
m = 3; %number of rows
n = 4; %number of columns
a = rand(m,n);
b = rand(m,n);
c = a + b;

%nested loops
for j = 1:n
    for i = 1:m
        cloop(i,j) = a(i,j) + b(i,j);
    end
end