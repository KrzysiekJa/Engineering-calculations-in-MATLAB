clearvars; close all; clc;


resistors = struct('R1', MyResistor(10),'R2', MyResistor(3.3));
diodes    = struct('DRZ', MyDiode(9.1),'DF', MyDiode(0.7));
E = 25;

I1 = E/ resistors.R1.value;
I2 = (E - diodes.DRZ.value - diodes.DF.value)/resistors.R2.value;

I = I1 + I2;
disp(I);