close all; clearvars; clc;


f = @(x) -x(1) .* x(2) .* (100 - x(1) - x(2));

lb = [0,0];
ub = [100,100];
A  = [1,1];
b  = 100;
x0 = [0;0];

[x_opt,y_opt] = fmincon(f,x0,A,b,[],[],lb,ub)
x3 = (100 - x_opt(1) - x_opt(2))