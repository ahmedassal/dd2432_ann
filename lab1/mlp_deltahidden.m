function [ delta_h ] = mlp_deltahidden( delta_o, hiddenoutputs,pre_hiddenoutputs, hiddenweights )
%MLP_DELTAHIDDEN Summary of this function goes here
%   Detailed explanation goes here

%pre_hiddenoutputs_afterappend = g_appendbiases(pre_hiddenoutputs, 1);
%deriv = mlp_psi_deriv(pre_hiddenoutputs_afterappend);
hiddenoutputs_afterappend = g_appendbiases(hiddenoutputs, 1);
deriv = mlp_psi_deriv(hiddenoutputs_afterappend);
delta_h = (hiddenweights' * delta_o) .* deriv ;
end

