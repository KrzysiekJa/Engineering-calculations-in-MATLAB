%% surf
close all; clearvars; clc;

x = linspace(-1,1,100);
y = linspace(-1,1,100);
[X,Y] = meshgrid(x,y);
z = X.^4 - 3*X.^2.*Y.^2 + (2/3)*X.^3 + 3*Y.^2 - 2;


surf(x,y,z);
set(gcf,'Color',[1 1 1]);
set(gca,'FontSize',18);
xlabel('x');ylabel('y');zlabel('z');


%% interpolation
close all; clearvars; clc;

[x,y] = meshgrid(-1:0.1:1, -1:0.1:1); % 20x20 points
z = x.^4 - 3*x.^2.*y.^2 + (2/3)*x.^3 + 3*y.^2 - 2;

[X,Y] = meshgrid(-1:0.05:1, -1:0.05:1);
Z = interp2(x, y, z, X, Y);


surf(X,Y,Z);
set(gcf,'Color',[1 1 1]);
set(gca,'FontSize',18);
xlabel('x');ylabel('y');zlabel('z');


%% aproximation
close all; clearvars; clc;

N = 30; p = 1;
f = @(X)X(1,:).^4 - 3*X(1,:).^2.*X(2,:).^2 + (2/3)*X(1,:).^3 + 3*X(2,:).^2 - 2;
x = linspace(-1,1,N);
y = linspace(-1,1,N);

X  = [repmat(x,1,length(y)); reshape(repmat(y,length(x),1),1,[])];
Y  = f(X);
sp = tpaps(X, Y, p);


figure(1);
fnplt(sp);
set(gca, 'ZLim', [0,4], 'FontSize', 14);
title(['p = ', num2str(p)]);


%% ANN
close all; clearvars; clc;

N = 50;
f =  @(X)X(1,:).^4 - 3*X(1,:).^2.*X(2,:).^2 + (2/3)*X(1,:).^3 + 3*X(2,:).^2 - 2;
x = linspace(-1,1,N);
y = linspace(-1,1,N);


X = [repmat(x,1,length(y)); reshape(repmat(y,length(x),1),1,[])];
Y = f(X);

SSN = fitnet([10,5]);
SSN = train(SSN,X,Y);
Y_SSN = sim(SSN,X);
Y_SSN = reshape(Y_SSN,N,N);


surf(x,y,Y_SSN);
set(gcf,'Color',[1 1 1]);
set(gca,'FontSize',14);
xlabel('x');ylabel('y');zlabel('z');
title(['N = ' num2str(N)]);



