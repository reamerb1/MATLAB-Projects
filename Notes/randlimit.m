% generate random values until they exceed specified threshold
function randlimit(lim)
n = 1;
r = rand;
while r < lim
    r = rand;
    n = n + 1;
end
fprintf('Sequence of %d values less than %.3f\n', n, lim);
end