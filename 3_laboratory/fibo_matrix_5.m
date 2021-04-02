clear; close all; clc;


fibonacci_matrix = zeros(1, 36);


for i = 1:36
    if i == 1
        fibonacci_matrix(i) = 1;
    elseif i == 2
        fibonacci_matrix(i) = 2;
    else
        fibonacci_matrix(i) = fibonacci_matrix(i-1) + fibonacci_matrix(i-2);
    end
end

format short G;
A = reshape(fibonacci_matrix, 6, 6).';
B = A([2,4,5], [1,3,5]);
B(4,:) = A(4:6, 6)';
C = sum(B(2:4,2));
D = C * fliplr(B);

[n, m] = find(min(B, [], 'all'));
min_col = B(:, m);


disp(D);
disp(min_col);