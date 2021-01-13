%Problem 4=================================================================
function eggsize(weight) %Input: weight
fprintf('Weight = %3.2f oz\n', weight)
if weight > 2.50 %Jumbo size min = 2.5
    fprintf('Size = Jumbo\n')
elseif weight > 2.25 %XL size min = 2.25
     fprintf('Size = Extra Large\n')
elseif weight > 2.00 %L size min = 2
     fprintf('Size = Large\n')
elseif weight > 1.75 %M size min = 1.75
     fprintf('Size = Medium\n')
elseif weight > 1.50 %S size min = 1.5
     fprintf('Size = Small\n')
elseif weight > 1.25 %Peewee size min = 1.25
     fprintf('Size = Peewee\n')
else %Smallest ones cant be classified
    fprintf('Egg is too small to classify\n')
end
end
