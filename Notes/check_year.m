function check_year(year)
switch year
    case 2018
        fprintf('Last year\n')
    case 2019
        fprintf('This year\n')
    case 2020
        fprintf('Next year\n')
    otherwise
        fprintf('Must be 2018, 2019, or 2020\n')
end
end