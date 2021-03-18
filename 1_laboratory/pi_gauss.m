clear; close all; clc;

iter_num = input("Number of iterations: ");
result   = 0.0;


for i = 1:iter_num
    result = result + 1./ i^2;
end


disp(sqrt(result * 6));