function [ output ] = psi_activ( input )
%PSI Summary of this function goes here
%   Detailed explanation goes here
output = 2 ./ (1 + exp(-input)) - 1;
end

