clear; close all; clc;

number = input('Number of elements: ');


if(mod(number, 2) == 0)
    even = (2:2:number).^(-1);
    odd  = (1:2:number).^(-1);
else
    even = (2:2:number-1).^(-1);
    odd  = (1:2:number).^(-1);
end

result = sum(odd) - sum(even);


disp(result);
