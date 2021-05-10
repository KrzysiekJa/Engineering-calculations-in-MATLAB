clearvars; close all; clc;

input = readtable('LINESCAN.txt');


x = input.lm;
si = input.Si;
nb = input.Nb;
n  = input.N;


bar(1:length(si), [si nb n]);


title('Si, Nb and N content');
xlabel('% content'), legend('Si %', 'Nb %', 'N %');