clear; close all; clc;

iter_num = input("Number of iterations: ");
result   = 0.0;
table    = [];
j = 0;


for i = 1:2:iter_num*2
    if(mod(j, 2) == 0)
        result = result + 1./i;
    else
        result = result - 1./i;
    end
    table = [table, result];
    j = j + 1;
end


disp(4 * table);