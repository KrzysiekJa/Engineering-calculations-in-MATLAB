close all; clearvars; clc;

R = 1;
f = @(x) -(1/3)* pi * (R.^2 - x.^2) .*x;
lb = 0;
ub = R;

[x_opt, y_opt, exitflag, output] = fminbnd(f,lb,ub)
