close all; clearvars; clc;

V  = input("Volume: ");
ub = input("Limit: ");

f  = @(x) 2*pi*x * (x + V/(pi*x.^2));
lb = 0;


[x_opt,y_opt,exitflag,output] = fminbnd(f,lb,abs(ub));
h_opt =  V/(pi*x_opt.^2)
f(x_opt)