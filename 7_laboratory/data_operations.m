clearvars; close all; clc;

input = readtable('LINESCAN.txt');


X = input.lm;
Y = input.Fe;


plot(X,Y,'r-',X,Y,'rd','LineWidth',1);
xlabel('distance');
ylabel('% content');
title('Fe content');