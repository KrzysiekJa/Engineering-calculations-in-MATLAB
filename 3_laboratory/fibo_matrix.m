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

fibonacci_matrix = reshape(fibonacci_matrix, 6, 6).';


disp(fibonacci_matrix);