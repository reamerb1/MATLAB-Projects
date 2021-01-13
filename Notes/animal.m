function animal(type)
switch type
    case 'dog'
        fprintf('woof\n')
    case 'cat'
        fprintf('meow\n')
    case 'godzilla'
        fprintf('grrrrrr\n')
    otherwise 
        fprintf('Must be cat, dog, or godzilla\n')
end
end