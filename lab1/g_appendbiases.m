function [ appended ] = g_appendbiases( matrix, direction )
%APPENDBIASES Summary of this function goes here
%   Detailed explanation goes here
if direction == 1
    appended = [matrix; ones(1,size(matrix,2))];
elseif direction == 2
    appended = [matrix, ones(1,size(matrix,1))];
end

end

