close all; clearvars; clc;

x = -2:0.1:2;
y = 2*x.^2 + 5;

SSN = fitnet(5);
view(SSN);
SSN = train(SSN,x,y);
view(SSN);
xx = -2:0.01:2;
yy = 2*xx.^2 + 5;
yy_SSN = sim(SSN,xx);


plot(x,y,'rs',xx,yy,xx,yy_SSN);
legend({'Points','fun','SSN'});