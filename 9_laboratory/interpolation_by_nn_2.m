close all; clearvars; clc;

x = -4:0.1:4;
y = x.^3 + 2*x.^2 - 4;

SSN = fitnet(10);
view(SSN);
SSN = train(SSN,x,y);
view(SSN);
xx = -4:0.01:4;
yy = xx.^3 + 2*xx.^2 - 4;
yy_SSN = sim(SSN,xx);


plot(x,y,'rs',xx,yy,xx,yy_SSN);
legend({'Points','fun','SSN'});