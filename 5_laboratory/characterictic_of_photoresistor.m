clearvars; close all; clc;

data = struct('R1', 51.3, 'E1', 50, 'R2', 7.66, 'E2', 200, 'E0', 10);


gamma = log(data.R1/data.R2) / log(data.E2/data.E1);
R0 = data.R1 * (data.E1/data.E0)^gamma;


disp(['gamma: ', num2str(gamma), '  R0: ', num2str(R0)]);