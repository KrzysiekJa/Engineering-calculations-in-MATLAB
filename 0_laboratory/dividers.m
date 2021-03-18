clear; clc;

number  = input("Number: ");
results = [];
i       = 2;


if number==0 || number==1
    disp("0 or 1 are not allowed.");
    return;
end


while 1
    if i == number
        results = [results, i];
        break;
    end
    while 1
        if mod(number, i) == 0
            number  = number/i;
            results = [results, i];
        else
            break;
        end
    end
    i = i + 1;
end


disp("Results:");
disp(results);