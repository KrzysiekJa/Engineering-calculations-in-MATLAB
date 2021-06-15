close all; clearvars; clc;


V  = 300*pi;
f  = @(r) 2*pi*r * (r + V/(pi*r.^2));
lb = 0;
ub = 100000;

[r_opt,y_opt,exitflag,output] = fminbnd(f,lb,ub)
h_opt = V / (pi * r_opt.^2)