function [ksi_opt, M_opt, fi_opt] = algorithmWF(v, n, sigma, ksi, epsilon, Nmax)

k = 1;

while true
    m = length(ksi.p);
    M = zeros(n,n); 
    
    for i = 1:m
        M = M + sigma(ksi.x(i))^-2 *ksi.p(i) *v(ksi.x(i)) *v(ksi.x(i)).';
    end
    fi = @(x)-sigma(x)^-2 *v(x).' / M*v(x);
    
    while true
        [fix_max, fiy_max] = ga(fi,1,[],[],[],[],-1,1);
        
        if fiy_max < -n
            break;
        end
    end
    
    fiy_max = -fiy_max;
    
    if fiy_max/n <= 1+epsilon
        break; 
    end
    
    alpha = 1 / (k+1);
    ksi.p = (1-alpha) *ksi.p;
    [di,xi] = min(abs(fix_max - ksi.x));
    
    if (di < 0.1)
        ksi.p(xi) = ksi.p(xi) + alpha;
        ksi.x(xi) = (ksi.x(xi) + fix_max)/2;
    else
        ksi.x(end+1) = fix_max;
        ksi.p(end+1) = alpha;
    end
    
    indx = find(ksi.p < 0.05);
    suma = sum(ksi.p(indx));
    ksi.x(indx) = [];
    ksi.p(indx) = [];
    ksi.p = ksi.p + suma/length(ksi.p);
    k = k + 1;
    
    if k > Nmax
        break;
    end
end

ksi_opt = ksi;
M_opt  = M;
fi_opt = @(x)sigma(x)^-2 *v(x).' / M_opt*v(x);

