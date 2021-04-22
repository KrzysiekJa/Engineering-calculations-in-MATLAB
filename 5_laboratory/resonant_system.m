clearvars; close all; clc;


LC = SystemLC(3.65 * 10^6, 365 * 10^3, 5000, 200);


Q = LC.f0 / LC.B3;
disp(Q);

w0 = 2 * 3.14 * LC.f0;
disp(w0);

L = LC.R / (w0 * Q);
disp(L);

C = 1 / (w0^2 * L);
disp(C);

A0 = 1 / (1 - Q/LC.Q0);
disp(A0);

f = 7 * 10^6;
A = A0 * Q * (f/LC.f0 - LC.f0/f);
disp(A);