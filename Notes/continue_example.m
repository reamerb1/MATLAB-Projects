for i = 1:10
    r = rand;
    if r <= 0.5
        continue
    else
        fprintf('value is %.3f\n', r);
    end
end