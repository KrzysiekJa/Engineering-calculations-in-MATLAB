clearvars; close all; clc;

input = readtable('LINESCAN.txt');


x  = input.lm;
y0 = zeros(length(x));
y1 = ones(length(x));
y2 = ones(length(x))*2;

fe = input.Fe;
ni = input.Ni;
cr = input.Cr;
Fe = eye(length(fe)).*fe;
Ni = eye(length(ni)).*ni;
Cr = eye(length(cr)).*cr;


mesh(x, y0, Fe, 'FaceAlpha','0.5');
hold on;
mesh(x, y1, Ni, 'FaceAlpha','0.5');
hold on;
mesh(x, y2, Cr, 'FaceAlpha','0.5');
title('Fe, Ni and Cr content');
xlabel('distance'), ylabel('% content'), legend('Fe %', 'Ni %', 'Cr %');
