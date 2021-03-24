%% Euler
clear; close all; clc;

number = input('Input number: ');


result = (1:number);
result = sqrt(6*sum(result .^(-2)));


disp(result);


%% Laibniz
clear; close all; clc;

number = input('Input number: ');


if(mod(number, 2) == 0)
    even = [3:4:number*2].^(-1);
    odd  = [1:4:number*2].^(-1);
else
    even = [3:4:number*2-1].^(-1);
    odd  = [1:4:number*2].^(-1);
end

result = sum(odd) - sum(even);


disp(4 * result);


%% Wallis
clear; close all; clc;

number = input('Input number: ');


result = 2 * prod((4 * (1:number).^2) ./ (4 * (1:number).^2 - 1));


disp(result);


%% Viete
clear; close all; clc;

number = input('Input number: ');
tab    = [];


result = 2^(number + 1) * prod(vieteSeqFunction(tab, number, 0).^(-1));


disp(result);

