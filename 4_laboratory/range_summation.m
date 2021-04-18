function result_sum = range_summation(input_number)
%Summary of this function goes here
range_number = 2 * input_number;
result_sum = 0;

if mod(input_number, 2) == 1
    input_number = input_number + 1;
end

for i = input_number:2:range_number
    result_sum = result_sum + i;
end 

end

