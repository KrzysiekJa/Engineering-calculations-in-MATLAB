%% check_sequence_type
clear; close all; clc;


seq1 = [1 2 4 8 16 32];
seq2 = [3 9 27 81 243];
seq3 = [5 5.5 6 6.5 7];
seq4 = [4 -20 100 -500 2500];
seq5 = [11 8 5 2 -1];
seq_cell = {seq1, seq2, seq3, seq4, seq5};


for i = 1:length(seq_cell)
    [str, number] = sequence_type(cell2mat(seq_cell(i)));
    disp(str);
    disp(number);
end

%% sum_of_range
clear; close all; clc;

number = input('Input number: ');


disp(range_summation(number));

%% checking_if_prime
clear; close all; clc;

number = input('Input intiger: ');


disp(prime_checker(number));

%% counting_triangle_angles
clear; close all; clc;

point1 = [2 3];
point2 = [2 5];
point3 = [5 3];


[ang1, ang2, ang3] = fing_angles(point1, point2, point3);

disp(ang1);
disp(ang2);
disp(ang3);

%% string_letters_checking
clear; close all; clc;


str = 'lalla';
letter1 = "l";
letter2 = "k";

disp(string_check_letters(str, letter1, letter2));


letter1 = "b";
letter2 = "l";

disp(string_check_letters(str, letter1, letter2));


letter1 = "b";
letter2 = "k";

disp(string_check_letters(str, letter1, letter2));

%% number_and_its_exp
clear; close all; clc;


n  = input('Number: ');
ex = input('Number of next powers: ');


disp(sequence_of_exp(n, ex));

%% work_on_vector_output
clear; close all; clc;


input_vector = [5 3 13 9 -2 101];


disp(input_vector);
[a, b, c, d, e, f] = vector_dividor(input_vector);
disp([a, b, c, d, e, f]);

