function output_str = string_check_letters(input_str, letter1, letter2)
%Summary of this function goes here
flag = 0;


for i = 1:length(input_str)
    if input_str(i) == letter1
        input_str(i) = letter2;
        flag = 1;
    end
end

if flag == 1
    output_str = input_str;
    return;
end

for i = 1:length(input_str)
    if input_str(i) == letter2
        input_str(i) = '';
        input_str = append(input_str, ' ');
    end
end
output_str = input_str;

end

