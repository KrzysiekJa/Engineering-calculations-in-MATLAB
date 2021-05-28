close all; clearvars; clc;

v = @(x)[sin(pi*x); x; x.^2];
N = 3;
sigma  = @(x)0.25;
ksi0.x = 2*rand(1,N) - 1;
ksi0.p = ones(1,N) /N;
epsilon = 1e-3;
Nmax = 50;

[ksi_opt, M_opt, fi_opt] = algorithmWF(v,N,sigma,ksi0,epsilon,Nmax);
fplot(fi_opt,[-1,1]);
display(ksi_opt);