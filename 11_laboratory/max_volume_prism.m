close all; clearvars; clc;

S = 1;
f = @(x) -(sqrt(3)/4).* x.^2 * (S - 2*x);
lb = 0;
ub = S/2;


[x_opt, y_opt, exitflag, output] = fminbnd(f,lb,ub)
h = (S - 2*x_opt)
V = -f(x_opt)