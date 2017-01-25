function [ delta_o ] = mlp_deltaoutput( outputs, pre_outputs, targets )
%MLP_DELTAOUTPUT Summary of this function goes here
%   Detailed explanation goes here
%deriv = mlp_psi_deriv(pre_outputs);
deriv = mlp_psi_deriv(outputs);
delta_o = (outputs - targets) .* deriv;
end

