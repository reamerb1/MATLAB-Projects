%randlimit using for loop rather than while loop
function randlim_for(lim)
n = 1;
for i = 1:1e6
    r = rand;
    if r > lim
        break %break out of for loop
    else
        n = n + 1;
    end
end
fprintf('Sequence of %d values greater than %.3f\n', n, lim)
end