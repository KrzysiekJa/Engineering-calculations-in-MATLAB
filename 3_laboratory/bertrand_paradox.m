clear; close all; clc;


R = input("Length of radius: ");
number = input("Number of chords: ");


a = sqrt(3) * R;
array = randi([0, 2*R], 1, number);

A = array > a;


disp(A);
disp(nnz(A));

