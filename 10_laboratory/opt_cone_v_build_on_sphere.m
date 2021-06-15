close all; clearvars; clc;


R  = 1;
f  = @(h) (pi * h * (R.^2 * h.^2/(h.^2 - R.^2))) / 3;
lb = 0;
ub = 100;

[h_opt,y_opt,exitflag,output] = fminbnd(f,lb,ub)
f(h_opt)