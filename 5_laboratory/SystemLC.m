classdef SystemLC
    
    properties
        f0 {mustBeNumeric}
        B3 {mustBeNumeric}
        R  {mustBeNumeric}
        Q0 {mustBeNumeric}
    end
    
    methods
        function obj = SystemLC(f0, B3, R, Q0)
            if nargin == 4
                obj.f0 = f0;
                obj.B3 = B3;
                obj.R  = R;
                obj.Q0 = Q0;
            end
        end
    end
end

