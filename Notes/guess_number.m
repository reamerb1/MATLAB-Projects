function guess_number(x)
if x <= 0
    fprintf('Number must be positive\n')
    return
end
if x == 8
    fprintf('Correct!\n')
elseif x < 8
    fprintf('Too small\n')
else
    fprintf('Too big\n')
end
end
