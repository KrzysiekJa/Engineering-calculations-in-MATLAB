function [result] = vieteSeqFunction(tab, stop_number, iter_number)
%vieteSeqFunction
%   function to calculate elements of Viete sequence
iter_number = iter_number + 1;


if isempty(tab)
    tab = [tab, sqrt(2)];
else
    tab = [tab, sqrt(2 + tab(end))];
end


if ~(stop_number == iter_number)
    tab = vieteSeqFunction(tab, stop_number, iter_number);
end

result = tab;
end

