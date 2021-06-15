close all; clearvars; clc;


l = 8;
f = @(r) -(pi/3) * r.^2 * sqrt(l.^2 - r.^2);
lb = 0;
ub = l;

[r_opt,y_opt,exitflag,output] = fminbnd(f,lb,ub)
