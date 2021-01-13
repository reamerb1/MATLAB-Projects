%Fibonacci sequence
function fibout = fib(n)
fibout(1) = 1;
fibout(2) = 1;
for seaslug = 3:n
    fibout(seaslug) = fibout(seaslug-2) + fibout(seaslug-1);
end
end