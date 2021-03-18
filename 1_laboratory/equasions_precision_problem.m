clear; close all; clc;

equasion1 = [2 6; 2 6.000001];
equasion2 = [2 6; 2 5.999999];


result1 = equasion1\ [8; 8.000001];
result2 = equasion2\ [8; 8.000002];

disp(result1); disp(result2);
