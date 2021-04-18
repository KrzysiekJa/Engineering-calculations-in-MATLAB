function output_str = prime_checker(input_number)
%Summary of this function goes here

if input_number <= 1
    output_str = 'Not 1 and smaller.';
    return;
end

if input_number == 2 || input_number == 3
    output_str = 'Prime';
    return;
end

for i = 2:ceil(sqrt(input_number))
    if mod(input_number, i) == 0
        output_str = 'Complex';
        return;
    end
end

output_str = 'Prime';
end
