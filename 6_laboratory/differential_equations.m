%%
clearvars; close all; clc;


syms x(t);
Dx = diff(x);


x_result(t) = dsolve(diff(x,2) + 3*diff(x) + 2*x == 0, x(0) == 0,Dx(0) == 2);
disp(x_result(t));

fplot(x_result(t));


%%
clearvars; close all; clc;


syms x(t);
Dx = diff(x);


x_result(t) = dsolve(2*diff(x,2) + 3*diff(x) + x == 6, x(0) == 1,Dx(0) == -2);
disp(x_result(t));

fplot(x_result(t));


%%
clearvars; close all; clc;


syms x(t);
Dx = diff(x);


x_result(t) = dsolve(diff(x,2) + 4*diff(x) + 13*x == 0, x(0) == 1,Dx(0) == 0);
disp(x_result(t));

fplot(x_result(t));


