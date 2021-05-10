clearvars; close all; clc;

input = readtable('LINESCAN.txt');


x = input.lm;
y0 = zeros(length(x));
y1 = ones(length(x));
y2 = ones(length(x))*2;
fe = input.Fe;
ni = input.Ni;
cr = input.Cr;


plot3(x, y0, fe, 'rd-','LineWidth',1);
hold on;
plot3(x, y1, ni, 'b^-','LineWidth',1);
hold on;
plot3(x, y2, cr, 'g--','LineWidth',1);

title('Fe, Ni and Cr content');
xlabel('distance'), zlabel('% content'), legend('Fe %', 'Ni %', 'Cr %');