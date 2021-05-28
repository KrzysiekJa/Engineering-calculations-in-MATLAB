close all; clearvars; clc;

x = [25 50 75 100 150 200 250 500];
y = [1.265 1.325 1.33 1.34 1.32 1.325 1.327 1.365];
xx = 0:1:500;


yy_interp = interp1(x, y, xx);

rank = 5;
p2 = polyfit(x, y, rank);
yy_poly = polyval(p2, xx);

s = spline(x, y);
yy_sp = ppval(s, xx);

ft = fittype('a + b*log(x)','dependent',{'y'},'independent',{'x'},'coefficients',{'a','b'});
yy_ft   = fit(x',y',ft);



figure(1);
plot(x, y, 'bs', 'MarkerSize', 5);
hold on;
plot(yy_ft,'b-');
plot(xx, yy_interp, 'r-', 'DisplayName', 'interpolation');
plot(xx, yy_poly, 'g--', 'DisplayName', ['polynomial aprox. st.', num2str(rank)]);
plot(xx, yy_sp, 'm-', 'DisplayName', 'spline aprox.');
xlabel('time (h)'), ylabel('mass gain (mg/cm2)'), legend('Location', 'best');
hold off;

