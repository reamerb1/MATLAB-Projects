%Exercise Set 2%
%Problem 1------------------------------------
myvec1 = 2:0.5:5;%three ways of making same matrix
myvec2 = [2, 2.5, 3, 3.5, 4, 4.5, 5];
myvec3 = linspace(2,5,7);
%Problem 2------------------------------------
mycol1 = [1;2;3;4;5];%Make caloumn matrix
mycol2 = 1:1:5;
mycol2 = mycol2';
%Problem 3------------------------------------
mymat = [1.1:1:4.1;5.3:1:8.3;3.9:-0.1:3.6];
mymat = mymat * 2;%matrix multiplication * 2
mymat(3,2) = 0;% change second column, third row result to 0
mymat(:,4) = mymat(:,4)/1.5;%divide fourth column by 1.5
a = magic(3);%magix square
b = a;
mat_mult = a*b;%matrix multiplication
elem_mult = a.*b;%multiplication number by number