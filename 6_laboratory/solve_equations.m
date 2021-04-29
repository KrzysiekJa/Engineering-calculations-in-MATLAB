clearvars; close all; clc;


disp(([3, 4, -1; 6, -5, 2; 9, -4, 1] \ [6; 8; 10]));

syms x y z;

[x, y, z] = solve([3*x + 4*y - z == 6; 6*x - 5*y + 2*z == 8; 9*x - 4*y + z == 10]);
disp([x, y, z]);

syms x y z;

[x, y, z] = solve([5*x + 2*y == -1; 3*x + 3*z == 9; 2*y - 2*z == -4]);
disp([x, y, z]);
