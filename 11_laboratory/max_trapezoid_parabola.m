close all; clearvars; clc;


f = @(x) -0.5 * (4 + 2*x) * (2 - 0.5*x.^2);
lb = 0;
ub = 2;


[x_opt,y_opt,exitflag,output] = fminbnd(f,lb,ub)

disp([x_opt, 2 - 0.5* x_opt.^2]);