clear; clc;

number = input("Number: ");

if number == 0 || number == 1
    disp("0 or 1 are not prime.");
    return;
end


for i = 2:sqrt(number)
    if mod(number, i) == 0
        disp("Number is not prime.");
        return;
    end
end


disp("Is prime number.");
