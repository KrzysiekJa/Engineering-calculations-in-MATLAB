function [output_str,output_diff] = sequence_type(sequence)
%Summary of this function goes here

if abs(sequence(2) - sequence(1)) == abs(sequence(3) - sequence(2))
    output_str = 'aritmetic';
    output_diff = sequence(2) - sequence(1);
    return;
end
if sequence(2) / sequence(1) == sequence(3) / sequence(2)
    output_str = 'geometric';
    output_diff = sequence(2) / sequence(1);
    return;
end

output_str = 'none';
output_diff = 0;
end

