classdef MyResistor
    
    properties
        value {mustBeNumeric}
    end
    
    methods
        function obj = MyResistor(inputValue)
            if nargin == 1
                obj.value = inputValue;
            end
        end
    end
end

