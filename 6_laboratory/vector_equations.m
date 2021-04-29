clearvars; close all; clc;


w1 = [4, 2, 0, -3];
u1 = [2, 0, -3, -5, 0, 2];
w2 = [-5, 0, 0, -4, -2, 0, 0];
u2 = [1, 0, 0, 0, 5, 2, 0, 4];
g  = [1, 0, -1, 3];

polynomials = {w1, u1, w2, u2, g};


for i = 1:length(polynomials)
    poly = cell2mat(polynomials(i));
    fun = poly2sym(poly);
    disp(fun);
    
    disp(roots(poly));
    disp(int(fun));
    disp(diff(fun));
    
    disp(' ');
end


pw1 = poly2sym(w1);
pu1 = poly2sym(u1);
disp(solve(pw1 - pu1 == 0));
disp('');


pw2 = poly2sym(w2);
pu2 = poly2sym(u2);
pg  = poly2sym(g);
disp(solve((pw2 + pu2)*g == 0));


for i = -100:2:100
    disp([subs(pw1,i), subs(pu1,i), subs(pw2,i), subs(pu2,i), subs(g,i)]);
end

