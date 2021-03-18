clear; clc;

float = input("Number: ");
sum   = 0.0;
i     = 1;


while 1
    elem = 1.0/i;
    if(elem < float)
        break;
    end
    sum = sum + elem;
    i = i+1;
end


fprintf("Sum of sequence: %f\n", sum);