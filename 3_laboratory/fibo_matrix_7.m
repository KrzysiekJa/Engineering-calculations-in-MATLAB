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
B = circshift(A, 1);
B = circshift(B, 1, 2);
[x, y] = minmat(B);

AA = B(x-1:x+1, y-1:y+1);


disp(AA);
