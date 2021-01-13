%Problem 3=================================================================
function windpower(blades)
switch blades
    case 2
        fprintf('Low Power\n')
    case 3
        fprintf('Medium Power\n')
    case 4
        fprintf('High Power\n')
    otherwise
        fprintf('Invalid Number of Blades\n')
end
end