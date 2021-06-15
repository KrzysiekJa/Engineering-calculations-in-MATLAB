close all; clearvars; clc;

R = 1;
f = @(x) -4*x .* sqrt(R^2 - x.^2);

lb = 0;
ub = R;


[x_opt,y_opt,exitflag,output] = fminbnd(f,lb,ub)
y = sqrt(R^2 - x_opt.^2)