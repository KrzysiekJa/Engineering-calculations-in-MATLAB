clearvars; close all; clc;


syms x a c;
p = [2, 0, 1, 0, -5];
f1 = poly2sym(p);
f2 = a*x^6 + 3*x^3 - c;
f3 = 1/(x^2);
f4 = 1/(x+1);
f5 = 1/sqrt(x);


disp(diff(f1));
disp(diff(f2, x));
disp(diff(f3));
disp(diff(f4));
disp(diff(f5));
