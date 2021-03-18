clear; close all; clc;

iter_num = input("Number of iterations: ");
result   = 1.0;


for i = 2:iter_num-1
    if(mod(i, 2) == 0)
        result = result * i^2;
    else
        result = result / i^2;
    end
end


if(mod(iter_num, 2) == 0)
     result = result * iter_num;
else
     result = result / iter_num;
end


disp(result * 2);