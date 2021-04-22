classdef MyDiode
    
    properties
        value {mustBeNumeric}
    end
    
    methods
        function obj = MyDiode(inputValue)
            if nargin == 1
                obj.value = inputValue;
            end
        end
    end
end

