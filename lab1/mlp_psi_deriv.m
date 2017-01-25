function [ deriv_outputs  ] = mlp_psi_deriv( outputs )
%MLP_PSI_ACTIV_DERIVATIVE Summary of this function goes here
%   Detailed explanation goes here
deriv_outputs = ((1 + outputs) .* (1 - outputs)) * 0.5;
end

