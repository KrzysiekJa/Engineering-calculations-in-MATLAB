clear; close all; clc;


format long g;
stop_num = input('Give the Fibonacci sequence number: ');
fibonacci_sequence = zeros(1, stop_num);


for i = 1:stop_num
    if i == 1
        fibonacci_sequence(i) = 0;
    elseif i == 2
        fibonacci_sequence(i) = 1;
    else
        fibonacci_sequence(i) = fibonacci_sequence(i-1) + fibonacci_sequence(i-2);
    end
end


disp(fibonacci_sequence);