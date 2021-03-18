clear; close all; clc;

iter_num = input("Number of iterations: ");
result   = 1.0;
elem     = 0.0;


for i = 1:iter_num
    elem = sqrt(2 + elem);
    result = result / elem;
end

result = result * 2^iter_num;


disp(result * 2);
