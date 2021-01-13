% Problem 3================================================================
function testavg(n) %n = number of test grades
sum = 0;
for i = 1:n
    x = input('Enter value: ');
    sum = sum + x;
    avg = sum/n;
end
fprintf('Test average is %4.1f\n', avg);
end