clearvars; close all; clc;

input = readtable('LINESCAN.txt');


X = input.lm;
Y = input.Fe;
Z = input.Ni;


plot(X,Y,'rd-','LineWidth',1);
hold on;
plot(X,Z,'yd-','LineWidth',1);

title('Fe and Ni content');
xlabel('distance'), ylabel('% content'), legend('Fe %', 'Ni %');