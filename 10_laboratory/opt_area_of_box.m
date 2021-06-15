close all; clearvars; clc;


f  = @(x) 50 * 2 * (4/(4*x.^2)) * (x + 4*x) + 2 * 70 * 4*x.^2;
lb = 0;
ub = 10;
[x_opt,y_opt,exitflag,output] = fminbnd(f,lb,ub);
x_opt
x2 = 4 * x_opt
h  = 4/(4*x_opt.^2)
