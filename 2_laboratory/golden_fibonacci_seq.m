clear; close all; clc;


format long g;
looked_num = input('Input number: ');

if(looked_num < 1)
    disp([0 1]);
    return;
end

fibonacci_sequence = [0];
i = 1;


while 1
    
    fi = 1/sqrt(5) * (((1 + sqrt(5))/2)^i - ((1 - sqrt(5))/2)^i);
    i = i + 1;
    fibonacci_sequence = [fibonacci_sequence, fi];
    
    if fibonacci_sequence(end-1) < looked_num && fibonacci_sequence(end) >= looked_num
        break;
    end 
end


disp(fibonacci_sequence);