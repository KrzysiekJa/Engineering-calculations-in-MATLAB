clearvars; close all; clc;


syms x h;

f1 = sin(x)/x;
f2 = 1/x;
f3 = (sin(x+h) - sin(x))/h;
f4 = (x^2+2*x+1)/(x^3+1);
f5 = sqrt(x^2+5*x+5) + x;


disp(limit(f1,x,0));
disp(limit(f2,x,0,'left'));
disp(limit(f2,x,0,'right'));
disp(limit(f3,h,0));
disp(limit(f4,x,1));
disp(limit(f5,x,Inf));